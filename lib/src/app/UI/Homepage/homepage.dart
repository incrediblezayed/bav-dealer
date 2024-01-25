import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/my_inventory.dart';
import 'package:dealerapp/src/app/UI/Homepage/Purchase_Orders/purchase_orders.dart';
import 'package:dealerapp/src/app/UI/Homepage/Test_Orders/test_orders.dart';
import 'package:dealerapp/src/app/UI/Profile/edit_profile_page.dart';
import 'package:dealerapp/src/app/UI/notification_page.dart/notification_page.dart';
import 'package:dealerapp/src/app/UI/report_page/report_page.dart';
import 'package:dealerapp/src/app/UI/splash_screen/splash_screen.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/drawer.dart';
import 'package:dealerapp/src/widgets/staggered_container.dart';
import 'package:dealerapp/src/widgets/user_profile_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

///HomePage
class HomePage extends ConsumerWidget {
  ///Constructor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    initTracking();
    final theme = Theme.of(context).textTheme;
    final user = cacheProvider.getUser()!;
    final controller = ref.watch(homePageProvider);
    final purchasePro = ref.watch(orderProvider(OrderFamily.testDriveOrders));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: AppRoutes.scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            AppRoutes.scaffoldKey.currentState!.openDrawer();
          },
          icon: SvgPicture.asset(
            AppImages.menu,
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  AppRoutes.push(page: const NotificationPage());
                },
                child: SvgPicture.asset(AppImages.notification),
              ),
              SizedBox(width: 12.w),
              GestureDetector(
                onTap: () {
                  AppRoutes.push(
                    page: const EditProfile(
                      isPersonalInfo: false,
                    ),
                  );
                },
                child: UserProfileImage(
                  url: user.profile_image?.url,
                  size: 35.sp,
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
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
              user.name!,
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
              '0',
              style: theme.headlineLarge!
                  .copyWith(fontSize: 36.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.h),
            Text(
              'Recent Notification',
              style: theme.labelMedium!.copyWith(
                color: AppTheme.textColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16.h),
            if (purchasePro.testDrivePendingOrders.isNotEmpty) ...[
              Row(
                children: [
                  /*  SizedBox.square(
                        dimension: 70.sp,
                        child: UserProfileImage(
                          url: homePageProv.user.profile_image?.url,
                          size: 70.sp,
                        ),
                      ) , */

                  Image.asset(AppImages.person),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      AppRoutes.push(page: const TestOrders());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Someone wants to book a ride',
                          style: theme.headlineSmall,
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          'view details',
                          style: theme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            if (purchasePro.testDrivePendingOrders.isEmpty)
              Row(
                children: [
                  /*  SizedBox.square(
                        dimension: 70.sp,
                        child: UserProfileImage(
                          url: homePageProv.user.profile_image?.url,
                          size: 70.sp,
                        ),
                      ) , */

                  Image.asset(AppImages.person),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (purchasePro.testDrivePendingOrders.isNotEmpty) {
                        AppRoutes.push(page: const TestOrders());
                      }
                    },
                    child: Text(
                      'No notifications',
                      style: theme.labelMedium,
                    ),
                  ),
                ],
              ),
            SizedBox(height: 20.h),
            LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    Expanded(
                      flex: 13,
                      child: Column(
                        children: [
                          StagerredContainer(
                            height: MediaQuery.of(context).size.height * .19,
                            count: controller.purchaseCount.toString(),
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
                            height: MediaQuery.of(context).size.height * .25,
                            count: controller.inventoryCount.toString(),
                            countColor: const Color(0xff358fe1),
                            arrowColor: const Color(0xff358fe1),
                            containerBgColor: const Color(0xffbee0ff),
                            iconBgColor: const Color(0xffa0d2ff),
                            image: AppImages.s3,
                            title: 'My Inventory',
                            titleColor: const Color(0xff358fe1),
                            onTap: () {
                              AppRoutes.push(page: const MyInventory());
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      flex: 15,
                      child: Column(
                        children: [
                          StagerredContainer(
                            height: 215.h,
                            count: controller.testOrderCount.toString(),
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
                            count: controller.rankCount.toString(),
                            countColor: const Color(0xfffdb35f),
                            arrowColor: const Color(0xfffdb35f),
                            containerBgColor: const Color(0xffffec8a),
                            iconBgColor: const Color(0xffffdc53),
                            image: AppImages.s3,
                            title: 'Add Feedback',
                            titleColor: const Color(0xfffdb35f),
                            onTap: () {
                              AppRoutes.push(
                                page: const ReportPage(
                                  isFeedback: true,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
