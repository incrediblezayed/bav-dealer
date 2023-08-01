import 'package:dealerapp/src/app/UI/login/change_password.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordPage extends ConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authPro = ref.watch(authProvider);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
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
              'Enter Your Dealer ID',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(
              hintText: 'Enter Your Username Or Mobile Number',
              label: 'Dealer Id',
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
              height: 4.h,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomButton(
              onPressed: () {
                AppRoutes.push(page: const ChangePasswordPage());
              },
              text: 'Submit',
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                        color: AppTheme.textColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
