import 'package:auto_size_text/auto_size_text.dart';
import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';

class KStockVehicleCard extends StatelessWidget {
  const KStockVehicleCard({
    required this.variant,
    super.key,
  });

  final DealerStockModel variant;

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
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'STOCK ID #${variant.id}',
                        style: theme.labelLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.black,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      AutoSizeText(
                        variant.createdAt.toLocal().formatTohhmmaddMMyy,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                variant.variant.parentProduct?.name ?? '',
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
                            variant.images.firstOrNull?.file?.file?.url,
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
                                    variant.variant.name,
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
                                  variant.totalPrice.toPrice(),
                                  style: theme.labelLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.primaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                Text(
                                  'Request Type',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  variant.type ?? '',
                                  style: theme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: variant.type == 'add'
                                        ? AppTheme.primaryColor
                                        : AppTheme.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                Text(
                                  'Stock',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  (variant.type == 'add' ? '' : '-') +
                                      (variant.stock?.toString() ?? ''),
                                  style: theme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: variant.type == 'add'
                                        ? AppTheme.primaryColor
                                        : AppTheme.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                Text(
                                  'Status',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  variant.accepted ? 'Accepted' : 'Processing',
                                  style: theme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: variant.accepted
                                        ? AppTheme.primaryColor
                                        : AppTheme.red,
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
            ],
          ),
        ),
      ),
    );
  }
}
