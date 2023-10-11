import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockCard extends ConsumerWidget {
  final GVehicleDealersData_vehicleDealers vehicleDealers;

  const MyStockCard({Key? key, required this.vehicleDealers}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    // final inventoryPro = ref.watch(inventoryProvider);
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vehicleDealers.vehicleVariant!.vehicle!.name!,
            style: theme.headlineLarge!
                .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10.h),
          Text(
            vehicleDealers.vehicleVariant!.vehicle!.brand!.name!,
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
                    vehicleDealers
                            .vehicleColor!.images?.firstOrNull?.image?.url ??
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
                            vehicleDealers.vehicleVariant!.name!,
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
                            vehicleDealers.vehicleColor!.name!,
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
                          vehicleDealers.prices.toString(),
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
          SizedBox(height: 20.h),
          Row(
            children: [
              Expanded(
                  child: KBottomBarButton(
                      color: Colors.red.shade100,
                      text: 'Remove',
                      onTap: () {
                        // inventoryPro.createStockRequest(colorId, variantId, stock, price, type)
                      })),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: KBottomBarButton(
                  text: 'Quantity: ${vehicleDealers.stock}',
                  onTap: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
