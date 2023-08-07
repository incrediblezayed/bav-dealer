import 'package:dealerapp/src/app/UI/Purchase_Orders/purchase_orders.dart';
import 'package:dealerapp/src/app/UI/Test_Orders/test_orders.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/drawer.dart';
import 'package:dealerapp/src/widgets/staggered_s1.dart';
import 'package:dealerapp/src/widgets/staggered_s2.dart';
import 'package:dealerapp/src/widgets/staggered_s3.dart';
import 'package:dealerapp/src/widgets/staggered_s4.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final key = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: AppRoutes.scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBgColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.scaffoldKey.currentState!.openDrawer();
          },
          child: SvgPicture.asset(
            AppImages.menu,
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [
          Row(
            children: [
              SvgPicture.asset(AppImages.notification),
              SizedBox(width: 12.w),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.3),
                  radius: 20,
                  child: Image.asset(AppImages.profile),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: theme.labelMedium!.copyWith(
                color: AppTheme.textColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Tanmay UI UX',
              style: theme.headlineLarge,
            ),
            SizedBox(height: 20.h),
            Text(
              'Total Sale',
              style: theme.labelMedium!.copyWith(
                color: AppTheme.textColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              '90,000',
              style: theme.headlineLarge!
                  .copyWith(fontSize: 36.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.h),
            Text(
              'Recent Notification',
              style: theme.labelMedium!.copyWith(
                color: AppTheme.textColor,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                /* SizedBox.square(
                        dimension: 70.sp,
                        child: UserProfileImage(
                          url: homePageProv.user.profile_image?.url,
                          size: 70.sp,
                        ),
                      ) */

                Image.asset(AppImages.person),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Someone wants to book a ride',
                      style: theme.headlineSmall,
                    ),
                    Text(
                      'view details',
                      style: theme.labelMedium,
                    ),
                    SizedBox(height: 6.h),
                  ],
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Column(
                  children: [
                    StagerredS1(
                      height: 145.h,
                      width: 150.w,
                      count: '90',
                      onTap: () {
                        AppRoutes.push(page: const PurchaseOrders());
                      },
                    ),
                    SizedBox(height: 10.h),
                    StaggeredS2(
                      height: 212.h,
                      width: 150.w,
                      count: '12',
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    StaggeredS3(
                      height: 215.h,
                      width: 180.w,
                      count: '976',
                      onTap: () {
                        AppRoutes.push(page: const TestOrders());
                      },
                    ),
                    SizedBox(height: 10.h),
                    StaggeredS4(
                      height: 138.h,
                      width: 180.w,
                      count: '5',
                      onTap: () {},
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
