/* import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CreateYourPasswordPage extends ConsumerWidget {
  const CreateYourPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final authPro = ref.watch(authProvider);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (authPro.currentPageIndex < authPro.signUpPages.length) {
                      authPro.signUpPageController.animateToPage(
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
                  'Create Your Password',
                  style: theme.headlineLarge,
                ),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            KTextField(
              controller: authPro.newPasswordController,
              hintText: 'Enter Your Password',
              label: 'Password',
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
              controller: authPro.reTypeNewPasswordController,
              hintText: 'Re-Enter Password',
              label: 'Re-Enter Password',
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
                authPro.signUpPageController = PageController();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: AppTheme.primaryColor,
                    content: Text(
                      'Your Account Has Been Create Successfully',
                    ),
                  ),
                );

                AppRoutes.push(page: const LoginPage());
                // );
                // authPro.currentPageIndex = 0;
                // authPro.pageController = PageController();
              },
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
 */
