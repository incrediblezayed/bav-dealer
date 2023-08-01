import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final mobileController = TextEditingController();
    final textTheme = Theme.of(context).textTheme;

    final authPro = ref.watch(authProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Your Account',
              style: textTheme.headlineSmall,
            ),
            SizedBox(height: 6.h),
            Text(
              'Enter Your Mobile No.',
              style: textTheme.labelMedium,
            ),
            SizedBox(height: 24.h),
            Text(
              'Enter Your Mobile Number',
              style: textTheme.headlineLarge,
            ),
            SizedBox(height: 14.h),
            CustomTextField(
              controller: mobileController,
              inputType: TextInputType.number,
              hintText: 'Enter Your Mobile No',
              label: 'Mobile No.',
            ),
            SizedBox(height: 14.h),
            CustomButton(
              onPressed: () {
                if (mobileController.text.isEmpty) {
                  AppRoutes.showErrorSnackbar('Please Enter Mobile No.');
                } else if (mobileController.text.length != 10) {
                  AppRoutes.showErrorSnackbar('Minimum 10 Numbers');
                } else if (authPro.currentPageIndex <
                    authPro.pages.length - 1) {
                  print(authPro.currentPageIndex + 1);
                  print(authPro.pageController);
                  authPro.pageController.animateToPage(
                    authPro.currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {}
              },
              text: 'Get OTP',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'We Will Send You A Code By SMS To Confirm Your Phone Number',
              style: textTheme.labelMedium,
            ),
            SizedBox(height: 14.h),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text(
                  'I Agree With Terms & Conditions',
                  style: textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
