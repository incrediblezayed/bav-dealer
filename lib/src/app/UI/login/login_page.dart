import 'package:dealerapp/src/app/UI/Homepage/homepage.dart';
import 'package:dealerapp/src/app/UI/forgot_password/forgot_password_flow.dart';
import 'package:dealerapp/src/app/UI/signup/signup_flow.dart';
import 'package:dealerapp/src/app/UI/wallet/withdrawal/withdrawal_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
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
            KTextField(
              controller: authPro.phoneNumberController,
              inputType: TextInputType.number,
              hintText: 'Phone Number',
              label: 'Phone Number',
            ),
            SizedBox(
              height: 16.h,
            ),
            KTextField(
              controller: authPro.passwordController,
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
                  AppRoutes.push(page: const ForgorPasswordFlow());
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
            KButton(
              onPressed: () {
                authPro.login();
              },
              text: 'Log In',
            ),
            TextButton(
              onPressed: () {
                AppRoutes.push(page: const WithdrawalPage());
              },
              child: const Text('Wallet'),
            ),
            TextButton(
              onPressed: () {
                AppRoutes.push(page: const HomePage());
              },
              child: const Text('Homepage'),
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
                        style:
                            textTheme.headlineLarge?.copyWith(fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
