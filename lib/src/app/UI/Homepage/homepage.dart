import 'package:dealerapp/src/app/UI/Purchase_Orders/purchase_orders.dart';
import 'package:dealerapp/src/app/UI/Test_Orders/test_orders.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/drawer.dart';
import 'package:dealerapp/src/widgets/staggered_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

///HomePage
class HomePage extends StatelessWidget {
  ///Constructor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

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
                    StagerredContainer(
                      height: 145.h,
                      width: 150.w,
                      count: '90',
                      countColor: AppTheme.primaryColor,
                      arrowColor: AppTheme.primaryColor,
                      containerBgColor: const Color(0xffc8eccb),
                      iconBgColor: AppTheme.primaryColor,
                      image: AppImages.cart,
                      title: 'Purchase orders',
                      titleColor: AppTheme.primaryColor,
                      onTap: () {
                        AppRoutes.push(page: const PurchaseOrders());
                      },
                    ),
                    SizedBox(height: 10.h),
                    StagerredContainer(
                      height: 212.h,
                      width: 150.w,
                      count: '12',
                      countColor: const Color(0xff358fe1),
                      arrowColor: const Color(0xff358fe1),
                      containerBgColor: const Color(0xffbee0ff),
                      iconBgColor: const Color(0xffa0d2ff),
                      image: AppImages.s3,
                      title: 'My Inventory',
                      titleColor: const Color(0xff358fe1),
                      onTap: () {
                        AppRoutes.push(page: const PurchaseOrders());
                      },
                    )
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    StagerredContainer(
                      height: 215.h,
                      width: 180.w,
                      count: '976',
                      countColor: const Color(0xff6a29a8),
                      arrowColor: const Color(0xff6a29a8),
                      containerBgColor: const Color(0xffb883ec),
                      iconBgColor: const Color(0xffa95cf3),
                      image: AppImages.s3,
                      title: 'Test Orders',
                      titleColor: const Color(0xff6a29a8),
                      onTap: () {
                        AppRoutes.push(page: const TestOrders());
                      },
                    ),
                    SizedBox(height: 10.h),
                    StagerredContainer(
                      height: 138.h,
                      width: 180.w,
                      count: '5',
                      countColor: const Color(0xfffdb35f),
                      arrowColor: const Color(0xfffdb35f),
                      containerBgColor: const Color(0xffffec8a),
                      iconBgColor: const Color(0xffffdc53),
                      image: AppImages.s3,
                      title: 'Your Rank',
                      titleColor: const Color(0xfffdb35f),
                      onTap: () {
                        AppRoutes.push(page: const PurchaseOrders());
                      },
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
