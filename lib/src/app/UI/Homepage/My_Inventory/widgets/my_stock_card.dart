import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockCard extends ConsumerStatefulWidget {
  const MyStockCard({super.key, required this.vehicleDealers});
  final GVehicleDealersData_vehicleDealers vehicleDealers;

  @override
  ConsumerState<MyStockCard> createState() => _MyStockCardState();
}

class _MyStockCardState extends ConsumerState<MyStockCard> {
  bool isEdit = false;
  int selectedQuantity = 1;
  void updateQuantity(int? quantity) {
    setState(() {
      selectedQuantity = quantity ?? 1;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            widget.vehicleDealers.vehicleVariant!.vehicle!.name!,
            style: theme.headlineLarge!
                .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10.h),
          Text(
            widget.vehicleDealers.vehicleVariant!.vehicle!.brand!.name!,
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
                    widget.vehicleDealers.vehicleColor!.images?.firstOrNull
                            ?.image?.url ??
                        '',
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
                            widget.vehicleDealers.vehicleVariant!.name!,
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
                            widget.vehicleDealers.vehicleColor!.name!,
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
                          (widget.vehicleDealers.totalPrice ?? 0).toPrice(),
                          style: theme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
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
                          '${widget.vehicleDealers.stock}',
                          // ' ${widget.vehicleDealers.stock}',
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
            KBottomBarButton(
              // text: 'Quantity: ${widget.vehicleDealers.stock}',
              text: "Edit",
              onTap: () {
                setState(() {
                  isEdit = true;
                });
              },
            ),
          if (isEdit) ...[
            Row(
              children: [
                Expanded(
                  child: KBottomBarButton(
                    color: Colors.red,
                    text: 'Remove',
                    secondaryColor: Colors.red,
                    onTap: () {
                      inventoryPro.updateStockRequest(
                          colorId: widget.vehicleDealers.vehicleColor!.id,
                          variantId: widget.vehicleDealers.vehicleVariant!.id,
                          quantity: selectedQuantity,
                          type: 'remove');
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: KBottomBarButton(
                    text: "Add",
                    onTap: () {
                      inventoryPro.updateStockRequest(
                          colorId: widget.vehicleDealers.vehicleColor!.id,
                          variantId: widget.vehicleDealers.vehicleVariant!.id,
                          quantity: selectedQuantity,
                          type: 'add');
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
                })
          ]
        ],
      ),
    );
  }
}
