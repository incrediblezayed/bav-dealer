import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterYourDetailsPage extends ConsumerStatefulWidget {
  const EnterYourDetailsPage({super.key});

  @override
  ConsumerState<EnterYourDetailsPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<EnterYourDetailsPage> {
  @override
  Widget build(BuildContext context) {
    // final passPro = ref.watch(pwdProvider);

    final authPro = ref.watch(authProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Your Details',
              style: textTheme.headlineLarge,
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: authPro.firstNameController,
              hintText: 'Enter Your First Name',
              label: 'First Name',
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: authPro.lastNameController,
              hintText: 'Enter Your Last Name',
              label: 'Last Name',
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: authPro.phoneNumberController,
              hintText: 'Enter Your Phone Number',
              label: 'Phone Number',
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: authPro.emailIdController,
              hintText: 'Enter Your Email ID',
              label: 'Email ID',
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomTextField(
              controller: authPro.newPasswordController,
              hintText: 'Enter Your Password',
              label: 'New Password',
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomButton(
              onPressed: () {
                if (authPro.currentPageIndex < authPro.pages.length - 1) {
                  authPro.pageController.animateToPage(
                    authPro.currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
