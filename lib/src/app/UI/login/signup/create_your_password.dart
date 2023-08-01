import 'package:dealerapp/src/app/UI/login/password_change_success_page.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateYourPasswordPage extends ConsumerWidget {
  const CreateYourPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authPro = ref.watch(authProvider);
    final pageViewPro = ref.watch(authProvider);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Your Password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppTheme.textColor,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const Text(
              'Enter Your New Password',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(
              controller: authPro.newPasswordController,
              hintText: 'Enter Your New Password',
              label: 'New Password',
              suffixIcon: IconButton(
                onPressed: () {
                  authPro.isObsecure();
                },
                icon: Icon(
                  authPro.isPassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              obsecureText: authPro.isPassword,
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomTextField(
              controller: authPro.reTypeNewPasswordController,
              hintText: 'Enter Your Password',
              label: 'Re-Type New Password',
              suffixIcon: IconButton(
                onPressed: () {
                  authPro.isObsecure();
                },
                icon: Icon(
                  authPro.isPassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              obsecureText: authPro.isPassword,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomButton(
              onPressed: () {
                authPro.currentPageIndex = 0;
                authPro.pageController = PageController();
                AppRoutes.push(page: const PasswordChangeSuccessPage());
                // );
                // authPro.currentPageIndex = 0;
                // authPro.pageController = PageController();
              },
              text: 'Update',
            )
          ],
        ),
      ),
    );
  }
}
