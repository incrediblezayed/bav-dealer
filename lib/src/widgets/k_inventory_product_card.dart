import 'package:dealerapp/src/app/model/product_details_model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'k_cached_network_image.dart';
import 'k_inventory_bike_quantity.dart';

class KInvetoryProductCard extends ConsumerStatefulWidget {
  const KInvetoryProductCard({
    required this.variant,
    super.key,
  });

  final ProductVariantModel variant;

  @override
  ConsumerState<KInvetoryProductCard> createState() =>
      _KInvetoryProductCardState();
}

class _KInvetoryProductCardState extends ConsumerState<KInvetoryProductCard> {
  ProductVariantModel get variants => widget.variant;
  bool isEdit = false;
  int selectedQuantity = 1;
  void updateQuantity(int? quantity) {
    setState(() {
      log(name: variants.toString());
      selectedQuantity = quantity ?? 1;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

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
                variants.name,
                style: theme.headlineLarge!
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              Text(
                variants.product?.brand?.name ?? '',
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
                          // Placeholder for the product image
                          child: KCachedNWImage(
                            variants.gallery.firstOrNull?.file?.file?.url ??
                                '', // Use the URL of the product image
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
                                    variants.name ?? '',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            /*Row(
                              children: [
                                Text(
                                  'Color',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                // Display the color name here
                                 Text(
                                  variants.colors.toString(),
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),*/
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
                                  variants.totalPrice.toString() ??
                                      '', // Display the price here
                                  style: theme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              KButton(
                onPressed: () async {
                  /*await Navigator.push(
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
                    */ /*selectedColor = variants.colors
                        .where(
                          (p0) => !ref
                          .read(inventoryProvider)
                          .vehicleDealers
                          .map((e) => e.vehicleColor!.id)
                          .contains(p0.id),
                    )
                        .firstOrNull;*/ /*
                  });*/

                  await AppRoutes.push(
                    page: QuantityScreen(
                      variantId: widget.variant.id,
                      colorId: '',
                      guarantees: const [],
                      prices: const [],
                      product: true,
                    ),
                  );
                },
                text: 'Add (or) Update',
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
