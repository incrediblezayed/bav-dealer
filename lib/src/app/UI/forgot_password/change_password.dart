import 'package:dealerapp/src/app/UI/forgot_password/password_change_success_page.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ChangePasswordPage extends ConsumerWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final authPro = ref.watch(authProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (authPro.currentPageIndex <
                        authPro.forgotPasswordPages.length - 1) {
                      authPro.pageController.animateToPage(
                        authPro.currentPageIndex - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: const Icon(
                    Iconsax.arrow_left,
                    color: AppTheme.textColor,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  'Change Password',
                  style: theme.headlineLarge,
                ),
              ],
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
            KTextField(
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
            KTextField(
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
            KButton(
              onPressed: () {
                authPro.currentPageIndex = 0;
                AppRoutes.push(page: const PasswordChangeSuccessPage());
              },
              text: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}
