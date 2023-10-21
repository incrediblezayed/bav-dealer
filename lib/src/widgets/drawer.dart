import 'package:dealerapp/src/app/UI/Profile/edit_profile_page.dart';
import 'package:dealerapp/src/app/UI/coming_soon.dart';
import 'package:dealerapp/src/app/UI/drawer/about_us.dart';
import 'package:dealerapp/src/app/UI/drawer/contact_us.dart';
import 'package:dealerapp/src/app/UI/drawer/terms_conditions.dart';
import 'package:dealerapp/src/app/UI/forgot_password/forgot_password_flow.dart';
import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/app/UI/report_page/report_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_expansion_tile.dart';
import 'package:dealerapp/src/widgets/user_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

///App drawer
class AppDrawer extends ConsumerWidget {
  ///Constructor for app drawer
  const AppDrawer({super.key});

  Widget _drawerTile({
    required String title,
    required String icon,
    required void Function() onTap,
    double? height,
    double? width,
    bool isSvg = true,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
      // contentPadding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 4.h),
      leading: isSvg
          ? SvgPicture.asset(
              icon,
              // height: 17.5.h,
              // width: 14.w,
            )
          : Image.asset(
              icon,
              // height: height,
              // width: width,
            ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppTheme.textColor,
        ),
      ),
      onTap: onTap,
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15.h,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final user = cacheProvider.getUser()!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
        title: Text(
          'Profile',
          style: theme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, bottom: 30.h),
                  child: Row(
                    children: [
                      UserProfileImage(
                        url: user.profile_image?.url,
                        size: 80.sp,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name!,
                            style: theme.headlineLarge,
                          ),
                          SizedBox(height: 6.h),
                          //const Text('@Tanmay'),
                          SizedBox(height: 6.h),

                          /* Text(
                              homePageProv.user.name ?? '',
                              style: theme.textTheme.headlineMedium,
                              ) */
                          KBottomBarButton(
                            minSize: true,
                            fontSize: 12,
                            radius: 100,
                            text: 'Edit Profile',
                            onTap: () {
                              AppRoutes.push(
                                page: const EditProfile(
                                  isPersonalInfo: false,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _drawerTile(
                      title: 'Personal Information',
                      icon: AppImages.profile,
                      height: 25,
                      width: 25,
                      isSvg: false,
                      onTap: () {
                        AppRoutes.push(
                          page: const EditProfile(
                            isPersonalInfo: true,
                          ),
                        );
                      },
                    ),
                    _drawerTile(
                      title: 'Make new purchase order',
                      icon: AppImages.purchaseNew,
                      height: 30,
                      width: 30,
                      isSvg: false,
                      onTap: () {
                        AppRoutes.push(page: const ComingSoon());
                      },
                    ),

                    ///Order History Expansion Tile
                    const KExpansionTile(),
                    _drawerTile(
                      title: 'My Wallet',
                      icon: AppImages.mywallet,
                      onTap: () {
                        AppRoutes.push(page: ComingSoon());
                      },
                    ),
                    _drawerTile(
                      title: 'Change Password',
                      icon: AppImages.change,
                      onTap: () {
                        AppRoutes.push(
                            page: const ForgotPassword(
                          isFromWithingApp: true,
                        ));
                      },
                    ),
                    _drawerTile(
                      title: 'Terms & Conditions',
                      icon: AppImages.termsNew,
                      isSvg: false,
                      onTap: () {
                        AppRoutes.push(page: const TermsConditionsPage());
                      },
                    ),
                    _drawerTile(
                      title: 'About Us',
                      icon: AppImages.aboutus,
                      onTap: () {
                        AppRoutes.push(page: AboutUs());
                      },
                    ),
                    _drawerTile(
                      title: 'Contact Us',
                      icon: AppImages.contact,
                      onTap: () {
                        AppRoutes.push(page: const ContactUs());
                      },
                    ),
                    _drawerTile(
                      title: 'Add a Feedback',
                      icon: AppImages.aboutus,
                      onTap: () {
                        AppRoutes.push(
                            page: ReportPage(
                          isFeedback: true,
                        ));
                      },
                    ),
                    _drawerTile(
                      title: 'Report a Problem',
                      icon: AppImages.aboutus,
                      onTap: () {
                        AppRoutes.push(
                            page: ReportPage(
                          isFeedback: false,
                        ));
                      },
                    ),
                    _drawerTile(
                      title: 'Logout',
                      icon: AppImages.logoutred,
                      onTap: () {
                        cacheProvider.clear();
                        AppRoutes.pushAndRemoveUntil(page: const LoginPage());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
