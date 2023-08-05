import 'package:dealerapp/src/app/UI/login/forgot_password.dart';
import 'package:dealerapp/src/app/UI/login/signup/signup_flow.dart';
import 'package:dealerapp/src/app/UI/withdrawal/withdrawal_page.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final authPro = ref.watch(authProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Log In Into Your \nAccount',
                  style: textTheme.headlineLarge,
                ),
                SvgPicture.asset(AppImages.logo, height: 40.h),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            const Text(
              'Enter Your Login Credentials',
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
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              hintText: 'Enter Your Password',
              label: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  authPro.isObsecure();
                  // ref.read(pwdProvider.notifier).state = !passPro;
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  AppRoutes.push(page: const ForgotPasswordPage());
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomButton(
              onPressed: () {},
              text: 'Log In',
            ),
            TextButton(
              onPressed: () {
                AppRoutes.push(page: const WithdrawalPage());
              },
              child: const Text('Wallet'),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  AppRoutes.push(page: const SignUpFlow());
                },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
