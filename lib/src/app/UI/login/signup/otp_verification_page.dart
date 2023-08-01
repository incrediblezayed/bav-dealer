import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPVerificationPage extends ConsumerWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final otpController = List<TextEditingController>.generate(
    //   4,
    //   (index) => TextEditingController(),
    // );

    final authPro = ref.watch(authProvider);

    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBgColor,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'OTP Verification',
              style: textTheme.headlineLarge,
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Enter The OTP Shared On? ',
                    style: textTheme.labelMedium,
                    children: [
                      TextSpan(
                        text: ' 7878451245',
                        style: textTheme.labelMedium,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                SvgPicture.asset(AppImages.edit)
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: authPro.otpController
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        height: 80.h,
                        width: 50.w,
                        child: CustomTextField(),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 6.h,
            ),
            CustomButton(
              onPressed: () {
                if (authPro.otpController.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: AppTheme.primaryColor,
                      content: Text('Please Enter OTP'),
                    ),
                  );
                } else if (authPro.currentPageIndex <
                    authPro.pages.length - 1) {
                  authPro.pageController.animateToPage(
                    authPro.currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              text: 'Confirm',
            ),
            SizedBox(height: 10.h),

            Align(
              child: RichText(
                text: TextSpan(
                  text: "Didn't Get An OTP",
                  style: textTheme.labelMedium,
                  children: [
                    TextSpan(
                      text: ' Resend SMS',
                      style: textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
            )
            // SizedBox(
            //   height: 10.h,
            // ),
            /* Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: "Didn't get and OTP ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      TextSpan(
                        text: ' Resend SMS',
                        style: TextStyle(
                          color: AppTheme.textColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
