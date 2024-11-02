import 'package:collection/collection.dart';
import 'package:dealerapp/src/app/model/product_details_model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:dealerapp/src/widgets/k_inventory_bike_quantity.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KInventoryBikeCard extends ConsumerStatefulWidget {
  const KInventoryBikeCard({required this.variant, super.key});

  final ProductVariantModel variant;

  @override
  ConsumerState<KInventoryBikeCard> createState() => _KInventoryBikeCardState();
}

class _KInventoryBikeCardState extends ConsumerState<KInventoryBikeCard> {
  ProductVariantModel get variants => widget.variant;
  bool isEdit = false;
  int selectedQuantity = 1;
  void updateQuantity(int? quantity) {
    setState(() {
      selectedQuantity = quantity ?? 1;
    });
  }

  late VehicleColor? testRideColor = variants.sortedColors.first;

  late VehicleColor? selectedColor = variants.sortedColors
      .where(
        (p0) => !(ref.read(inventoryProvider).vehicleDealers ?? [])
            .map((e) => e.vehicleColor?.id)
            .contains(p0.id),
      )
      .firstOrNull;

  // late VehicleColor? testRideColor = variants.colors
  //     .where(
  //       (p0) => !ref
  //       .read(inventoryProvider)
  //       .vehicleDealers
  //       .map((e) => e.vehicleColor!.id)
  //       .contains(p0.id),
  // )
  //     .firstOrNull;

  List<PriceModel> prices = [];
  List<TextEditingController> controller = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      prices = ref.read(inventoryProvider).prices;
      controller = prices.map((e) => TextEditingController()).toList();
      setState(() {});
    });
    super.initState();
  }

  void updateColor(VehicleColor colorName) {
    setState(() {
      selectedColor = colorName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final inventoryPro = ref.watch(inventoryProvider);
    final theme = Theme.of(context).textTheme;
    // VehicleColor? testRideColor = variants.colors.firstOrNull;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                variants.vehicle?.name ?? '',
                style: theme.headlineLarge!
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              Text(
                variants.vehicle?.brand?.name ?? '',
                style: theme.labelMedium!.copyWith(
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16.h),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            selectedColor
                                    ?.gallery.firstOrNull?.file?.file?.url ??
                                '',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Model',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Flexible(
                                  child: Text(
                                    variants.name,
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                Text(
                                  'Color',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Flexible(
                                  child: Text(
                                    selectedColor?.name ?? '',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                Text(
                                  'Price',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  variants.prices
                                      .map((e) => e.amount)
                                      .sum
                                      .toPrice(),
                                  style: theme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Wrap(
                              runSpacing: 10,
                              spacing: 10,
                              children: [
                                ...variants.sortedColors
                                    .where(
                                      (p0) =>
                                          !(inventoryPro.vehicleDealers ?? [])
                                              .map((e) => e.vehicleColor?.id)
                                              .contains(p0.id),
                                    )
                                    .map(
                                      (e) => GestureDetector(
                                        onTap: () => updateColor(e),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 12.5.h,
                                          child: CircleAvatar(
                                            radius: 10.h,
                                            backgroundColor: e.code,
                                          ),
                                        ),
                                      ),
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(height: 10.h),
              // ...prices.mapIndexed(
              //   (i, e) => Column(
              //     children: [
              //       KTextField(
              //         controller: controller[i],
              //         label: e.name,
              //         hintText: 'Enter ${e.name}',
              //         onChanged: (value) {
              //           final price = int.parse(value);
              //           prices[i].price = price;
              //         },
              //         inputType: TextInputType.number,
              //         inputFormatters: [
              //           FilteringTextInputFormatter.digitsOnly,
              //         ],
              //       ),
              //       SizedBox(
              //         height: 10.h,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 10.h,
              ),
              KButton(
                onPressed: () async {
                  widget.variant.id.log(name: 'variant id');
                  if (selectedColor == null) {
                    return;
                  }
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuantityScreen(
                        variantId: widget.variant.id,
                        colorId: selectedColor!.id,
                        guarantees: const [],
                        prices: const [],
                      ),
                    ),
                  );
                  setState(() {
                    selectedColor = variants.sortedColors
                        .where(
                          (p0) =>
                              !(ref.read(inventoryProvider).vehicleDealers ??
                                      [])
                                  .map((e) => e.vehicleColor!.id)
                                  .contains(p0.id),
                        )
                        .firstOrNull;
                  });
                },
                text: 'Add (or) Update',
              ),
              SizedBox(
                height: 10.h,
              ),
              KButton(
                onPressed: () {
                  final controller = TextEditingController();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Test Ride Details'),
                                IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DropdownButton<VehicleColor>(
                                  isExpanded: true,
                                  onChanged: (VehicleColor? newValue) {
                                    setState(() {
                                      testRideColor = newValue;
                                    });
                                  },
                                  value: testRideColor,
                                  items: variants.sortedColors
                                      .map((VehicleColor item) {
                                    return DropdownMenuItem<VehicleColor>(
                                      value: item,
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            radius: 12.5.h,
                                            child: CircleAvatar(
                                              radius: 10.h,
                                              backgroundColor: item.code,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            item.name,
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                                KTextField(
                                  controller: controller,
                                  label: 'Test Ride',
                                  hintText: 'Enter amount',
                                  onChanged: (value) {},
                                  inputType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ],
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    child: KButton(
                                      onPressed: () {
                                        AppRoutes.pop();
                                      },
                                      text: 'Cancel',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    child: KButton(
                                      onPressed: () async {
                                        if (controller.text.isEmpty) {
                                          AppRoutes.showErrorSnackbar(
                                              message:
                                                  'Please enter an amount');
                                        } else {
                                          AppRoutes.pop();
                                          AppRoutes.showLoadingDialog();
                                          await inventoryPro
                                              .addTestDriveDealerStock(
                                                  variantId: variants.id,
                                                  colorId: testRideColor!.id,
                                                  amount: controller.text);
                                          AppRoutes.pop();
                                        }
                                      },
                                      text: 'Submit',
                                    ),
                                  ),
                                ],
                              ),

                              // ElevatedButton(
                              //   onPressed: () {
                              //     // Perform submit action
                              //   },
                              //   child: Text('Submit'),
                              // ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     Navigator.of(context).pop();
                              //   },
                              //   child: Text('Cancel'),
                              // ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                text: 'Test Ride',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
