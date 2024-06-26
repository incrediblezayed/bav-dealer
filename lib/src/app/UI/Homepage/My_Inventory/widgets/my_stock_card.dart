import 'dart:async';

import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:dealerapp/src/widgets/k_inventory_bike_quantity.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockCard extends ConsumerStatefulWidget {
  const MyStockCard({
    required this.dealerStock,
    required this.index,
    this.product = false,
    super.key,
  });

  final DealerStockModel dealerStock;
  final int index;
  final bool product;

  @override
  ConsumerState<MyStockCard> createState() => _MyStockCardState();
}

class _MyStockCardState extends ConsumerState<MyStockCard> {
  bool isEdit = false;
  int selectedQuantity = 1;

  DealerStockModel get dealerStock => widget.dealerStock;

  void updateQuantity(int? quantity) {
    setState(() {
      selectedQuantity = quantity ?? 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isProduct = dealerStock.dealerType == DealerType.product;
    final theme = Theme.of(context).textTheme;
    final inventoryPro = ref.watch(inventoryProvider);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dealerStock.variant.parentProduct?.name ?? '',
            style: theme.headlineLarge!
                .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10.h),
          Text(
            dealerStock.variant.parentProduct?.brand?.name ?? '',
            style: theme.labelMedium!.copyWith(
              color: Colors.black.withOpacity(.5),
              fontWeight: FontWeight.w500,
            ),
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
                    dealerStock.images.firstOrNull?.image.url ?? '',
                    fit: BoxFit.cover,
                  )

                  /* KCachedNWImage(
                    vehicleDealers
                            .vehicleColor!.images!.firstOrNull!.image!.url ??
                        "",
                    fit: BoxFit.cover,
                  ) */
                  ,
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
                            dealerStock.variant.name,
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    if (!isProduct)
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
                              dealerStock.vehicleColor?.name ?? '',
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
                          (dealerStock.totalPrice ?? 0).toPrice(),
                          style: theme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    if (dealerStock.dealerType != DealerType.testDrive)
                      Row(
                        children: [
                          Text(
                            'Quantity',
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            '${dealerStock.stock}',
                            style: theme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (isEdit) ...[
            SizedBox(height: 20.h),
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
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                ),
                hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                ),
              ),
            ),
          ],
          SizedBox(height: 20.h),
          if (!isEdit)
            Row(
              children: [
                if (dealerStock.dealerType != DealerType.testDrive)
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      label: const Text('Quantity'),
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        setState(() {
                          isEdit = true;
                        });
                      },
                    ),
                  ),
                if (dealerStock.dealerType != DealerType.testDrive)
                  const SizedBox(
                    width: 20,
                  ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      if (dealerStock.dealerType == DealerType.testDrive) {
                        final controller = TextEditingController(
                            text: dealerStock.totalPrice?.toString());
                        await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  content: KTextField(
                                    controller: controller,
                                    label: 'Test Ride Amount',
                                    hintText: 'Enter amount',
                                    onChanged: (value) {},
                                    inputType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
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
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
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
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          child: KButton(
                                            onPressed: () async {
                                              if (controller.text.isEmpty) {
                                                AppRoutes.showErrorSnackbar(
                                                    message:
                                                        'Please enter an amount');
                                              } else {
                                                AppRoutes.pop();
                                                unawaited(AppRoutes
                                                    .showLoadingDialog());
                                                try {
                                                  await inventoryPro
                                                      .addTestDriveDealerStock(
                                                      variantId: dealerStock
                                                          .variant.id,
                                                      colorId: dealerStock
                                                          .vehicleColor?.id,
                                                      amount: controller.text,
                                                      index: widget.index,
                                                      testDriveDealerId:
                                                      dealerStock.id);
                                                }catch(e, s) {
                                                  e.log(
                                                    name: 'This Error has pissed me off',
                                                    error: e,
                                                    stackTrace: s
                                                  );
                                                }
                                                AppRoutes.pop();
                                              }
                                            },
                                            text: 'Submit',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuantityScreen(
                              isUpdate: true,
                              index: widget.index,
                              product: isProduct,
                              vehicleDealerId: dealerStock.id,
                              variantId: (isProduct
                                      ? dealerStock.productVariant
                                      : dealerStock.vehicleVariant)!
                                  .id,
                              colorId: dealerStock.vehicleColor?.id ?? '',
                              guarantees:
                                  dealerStock.guarantees?.toList() ?? [],
                              prices: dealerStock.prices?.toList() ?? [],
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    label: const Text('Prices'),
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          if (isEdit) ...[
            Row(
              children: [
                Expanded(
                  child: KBottomBarButton(
                    color: Colors.red,
                    text: 'Remove',
                    secondaryColor: Colors.white,
                    onTap: () {
                      inventoryPro.updateStockRequest(
                        colorId: dealerStock.vehicleColor!.id,
                        product: isProduct,
                        variantId: (isProduct
                                ? dealerStock.productVariant
                                : dealerStock.vehicleVariant)!
                            .id,
                        quantity: selectedQuantity,
                        type: 'remove',
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: KBottomBarButton(
                    text: 'Add',
                    onTap: () {
                      inventoryPro.updateStockRequest(
                        colorId: dealerStock.vehicleColor?.id ?? '',
                        product: isProduct,
                        variantId: (isProduct
                                ? dealerStock.productVariant
                                : dealerStock.vehicleVariant)!
                            .id,
                        quantity: selectedQuantity,
                        type: 'add',
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            KBottomBarButton(
              secondaryColor: Colors.red,
              color: Colors.white,
              text: 'Cancel',
              onTap: () {
                setState(() {
                  isEdit = false;
                });
              },
            ),
          ],
        ],
      ),
    );
  }
}
