import 'package:collection/collection.dart';
import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KInventoryBikeCard extends ConsumerStatefulWidget {
  const KInventoryBikeCard({required this.variant, super.key});

  final VariantDetailsModel variant;

  @override
  ConsumerState<KInventoryBikeCard> createState() => _KInventoryBikeCardState();
}

class _KInventoryBikeCardState extends ConsumerState<KInventoryBikeCard> {
  VariantDetailsModel get variants => widget.variant;

  late VehicleColor? selectedColor = variants.colors
      .where(
        (p0) => !ref
            .read(inventoryProvider)
            .vehicleDealers
            .map((e) => e.vehicleColor!.id)
            .contains(p0.id),
      )
      .firstOrNull;

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
                variants.vehicle.name,
                style: theme.headlineLarge!
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              Text(
                variants.vehicle.brand.name,
                style: theme.labelMedium!.copyWith(
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16.h),
              Column(
                children: [
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
                            selectedColor?.images.firstOrNull?.image.url ?? '',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...variants.colors
                                    .where(
                                      (p0) => !inventoryPro.vehicleDealers
                                          .map((e) => e.vehicleColor!.id)
                                          .contains(p0.id),
                                    )
                                    .map(
                                      (e) => GestureDetector(
                                        onTap: () => updateColor(e),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 10.w),
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
              SizedBox(height: 10.h),
              ...prices.mapIndexed(
                (i, e) => Column(
                  children: [
                    KTextField(
                      controller: controller[i],
                      label: e.name,
                      hintText: 'Enter ${e.name}',
                      onChanged: (value) {
                        final price = int.parse(value);
                        prices[i].price = price;
                      },
                      inputType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              KButton(
                onPressed: () {
                  inventoryPro
                      .createStockRequest(
                    variantId: variants.id,
                    colorId: selectedColor!.id,
                    prices: prices,
                  )
                      .then((value) {
                    for (var i = 0; i < controller.length; i++) {
                      controller[i].clear();
                    }
                    setState(() {
                      selectedColor = variants.colors
                          .where(
                            (p0) => !ref
                                .read(inventoryProvider)
                                .vehicleDealers
                                .map((e) => e.vehicleColor!.id)
                                .contains(p0.id),
                          )
                          .firstOrNull;
                    });
                  });
                },
                text: 'Add Now To Update',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
