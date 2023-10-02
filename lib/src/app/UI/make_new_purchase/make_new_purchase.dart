import 'package:dealerapp/src/app/UI/Profile/edit_profile_page.dart';
import 'package:dealerapp/src/app/UI/make_new_purchase/make_new_purchase_details_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.ast.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:dealerapp/src/widgets/k_inventory_bike_card.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:dealerapp/src/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class MakeNewPurchase extends ConsumerStatefulWidget {
  const MakeNewPurchase({super.key});

  @override
  ConsumerState<MakeNewPurchase> createState() => _MakeNewPurchaseState();
}

class _MakeNewPurchaseState extends ConsumerState<MakeNewPurchase> {
  String selectedVehicle = 'Car';
  List<String> vehicleOptions = ['Car', 'Motorcycle', 'Bicycle', 'Bus'];

  String selectedModel = 'Ola';
  List<String> modelOptions = ['Ola', 'Ola2', 'Ola3', 'Ola4'];

  int selectedQuantity = 1;

  void updateQuantity(int? quantity) {
    setState(() {
      selectedQuantity = quantity ?? 1;
    });
  }

  void updateColor(GVehiclesData_vehicles_variants_colors colorName) {
    setState(() {
      selectedColor = colorName;
    });
  }

  late GVehiclesData_vehicles_variants_colors? selectedColor;
  late GVehiclesData_vehicles_variants? selectedVarient;

  @override
  Widget build(BuildContext context) {
    final purchaseOrderPro = ref.watch(orderProvider(OrderFamily.purchaseOrders));
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Make New Purchase',
              style: theme.headlineLarge,
            ),
          ],
        ),
      ),
      body: purchaseOrderPro.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Choose Vehicle',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(height: 12.h),
                  DropdownButtonFormField<GVehiclesData_vehicles>(
                    value: purchaseOrderPro.selectedVehicle,
                    onChanged: (newValue) {
                      purchaseOrderPro
                        ..selectedVariants = null
                        ..selectedVehicle = newValue;
                    },
                    items: purchaseOrderPro.vehicles
                        .map(
                          (vehicle) => DropdownMenuItem<GVehiclesData_vehicles>(
                            value: vehicle,
                            child: Text(vehicle.variants!.first.name!),
                          ),
                        )
                        .toList(),
                    decoration: InputDecoration(
                      labelText: 'Select Vehicle',
                      counterText: '',
                      fillColor: AppTheme.white,
                      suffixIconColor: Colors.black.withOpacity(.2),
                      labelStyle: theme.headlineMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.2)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.2)),
                      ),
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.2)),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  if (purchaseOrderPro.selectedVehicle != null &&
                      (purchaseOrderPro.selectedVehicle?.variants?.isNotEmpty ??
                          false) &&
                      purchaseOrderPro.selectedVehicle!.variants!
                              .toSet()
                              .toList()
                              .length >
                          1)
                    DropdownButtonFormField<GVehiclesData_vehicles_variants>(
                      value: purchaseOrderPro.selectedVariants,
                      onChanged: (newValue) {
                        purchaseOrderPro.selectedVariants = newValue;
                      },
                      items: purchaseOrderPro.selectedVehicle!.variants!
                          .map(
                            (model) => DropdownMenuItem<
                                GVehiclesData_vehicles_variants>(
                              value: model,
                              child: Text(model.name!),
                            ),
                          )
                          .toList(),
                      decoration: InputDecoration(
                        labelText: 'Model No.',
                        counterText: '',
                        fillColor: AppTheme.white,
                        suffixIconColor: Colors.black.withOpacity(.2),
                        labelStyle: theme.headlineMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.2)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.2)),
                        ),
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(.2)),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.2)),
                        ),
                      ),
                    ),
                  SizedBox(height: 12.h),
                  DropdownButtonFormField<int>(
                    value: selectedQuantity,
                    onChanged: updateQuantity,
                    items: List.generate(11, (index) => index)
                        .map(
                          (quantity) => DropdownMenuItem<int>(
                            value: quantity,
                            child: Text(quantity.toString()),
                          ),
                        )
                        .toList(),
                    decoration: InputDecoration(
                      labelText: 'Quantity',
                      counterText: '',
                      fillColor: AppTheme.white,
                      suffixIconColor: Colors.black.withOpacity(.2),
                      labelStyle: theme.headlineMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.2)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.2)),
                      ),
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.2)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  if (purchaseOrderPro.selectedVariants != null)
                    Text(
                      'Choose Color',
                      style: theme.headlineMedium,
                    ),
                  if (purchaseOrderPro.selectedVariants != null)
                    SizedBox(height: 16.h),
                  if (purchaseOrderPro.selectedVariants != null)
                    Padding(
                      padding: EdgeInsets.only(right: 60.w),
                      child: Row(
                        children: [
                          ...purchaseOrderPro.selectedVariants!.colors!.map(
                            (e) => GestureDetector(
                              onTap: () => updateColor(e),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 12.5.h,
                                  child: CircleAvatar(
                                    radius: 10.h,
                                    backgroundColor: HexColor.fromHex(
                                      '#${e.code}',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ...[
                    if (purchaseOrderPro.selectedVariants != null)
                      SizedBox(height: 20.h),
                    Text(
                      'Product Details',
                      style: theme.headlineMedium,
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Container(
                          height: 125.h,
                          width: 135.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: KCachedNWImage(
                              purchaseOrderPro.selectedColor?.images?.first
                                      .image?.url ??
                                  '',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  purchaseOrderPro.selectedVariants?.name ?? '',
                                  style: theme.headlineLarge),
                              SizedBox(height: 6.h),
                              Text(
                                purchaseOrderPro.selectedVariants?.name ?? '',
                                style: theme.labelMedium,
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                "Qty- ${selectedQuantity}",
                                style: theme.labelMedium,
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                purchaseOrderPro.selectedVariants?.price
                                        ?.toString() ??
                                    '',
                                style: theme.labelMedium!.copyWith(
                                  fontSize: 14.sp,
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    KButton(
                        onPressed: () {
                          AppRoutes.push(
                            page: MakeNewPurchaseDetailsPage(),
                          );
                        },
                        text: 'Update'),
                  ]
                ],
              ),
            ),
    );
  }
}
