import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter/material.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KStockVehicleCard extends StatelessWidget {
  const KStockVehicleCard({
    required this.variant,
    Key? key,
  }) : super(key: key);

  final Map<String, dynamic> variant;

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
                variant['id'] ?? '',
                style: theme.headlineLarge!
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10.h),
              Text(
                variant['vehicleVariant']['name'] ?? '',
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
                          child: Container(
                            color: Colors.grey[300],
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
                                    variant['vehicleVariant']['name'] ?? '',
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
                                  variant['totalPrice'].toString() ?? '',
                                  style: theme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue, // Change the color to match your theme
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
                onPressed: () {
                  // Implement your onPressed logic here
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
