import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Password Change success page
class PasswordChangeSuccessPage extends StatelessWidget {
  /// constructor
  const PasswordChangeSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AppRoutes.pushAndRemoveUntil(page: const LoginPage());
        return false;
      },
      child: Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 100.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.success),
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  'Password Changed Successfully',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: KBottomBarButton(
                      secondaryColor: Colors.white,
                      text: 'Back To Home',
                      onTap: () {
                        AppRoutes.push(page: const LoginPage());
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
