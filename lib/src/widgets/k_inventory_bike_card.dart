import 'dart:ffi';

import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KInventoryBikeCard extends ConsumerStatefulWidget {
  const KInventoryBikeCard({required this.variants, super.key});

  final GVehiclesData_vehicles_variants variants;

  @override
  ConsumerState<KInventoryBikeCard> createState() => _KInventoryBikeCardState();
}

class _KInventoryBikeCardState extends ConsumerState<KInventoryBikeCard> {
  GVehiclesData_vehicles_variants get variants => widget.variants;

  late GVehiclesData_vehicles_variants_colors? selectedColor =
      variants.colors?.firstOrNull;
  int selectedQuantity = 1;

  void updateColor(GVehiclesData_vehicles_variants_colors colorName) {
    setState(() {
      selectedColor = colorName;
    });
  }

  void updateQuantity(int? quantity) {
    setState(() {
      selectedQuantity = quantity ?? 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final inventoryPro = ref.watch(inventoryProvider);
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
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
                variants.vehicle!.name!,
                style: theme.headlineLarge!
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              Text(
                variants.vehicle!.brand!.name!,
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
                            selectedColor?.images?.firstOrNull?.image?.url ??
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
                                    variants.name!,
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
                                  variants.price!.toString(),
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
                  Padding(
                    padding: EdgeInsets.only(right: 60.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ...variants.colors!.map(
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

                        /*  GestureDetector(
                          onTap: () => updateColor('Grey'),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => updateColor('Blue'),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              decoration: BoxDecoration(
                                color: const Color(0xff66aebd),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => updateColor('Mint Green'),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              decoration: BoxDecoration(
                                color: const Color(0xff98c791),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                            ),
                          ),
                        ), */
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
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
              SizedBox(height: 10.h),
              KButton(
                onPressed: () {
                  inventoryPro.createStockRequest(
                    selectedColor!.id,
                    variants.id,
                    selectedQuantity,
                    1233,
                  );
                },
                text: 'Add',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
