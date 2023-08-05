import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/custom_button.dart';
import 'package:dealerapp/src/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class OTPVerificationPage extends ConsumerWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final otpController = List<TextEditingController>.generate(
    //   4,
    //   (index) => TextEditingController(),
    // );

    final authPro = ref.watch(authProvider);

    final theme = Theme.of(context).textTheme;
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBgColor,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'OTP Verification',
                  style: theme.headlineLarge,
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Enter The OTP Shared On ',
                    style: theme.labelMedium,
                    children: [
                      TextSpan(
                        text: ' 7878451245',
                        style: theme.labelMedium,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                SvgPicture.asset(AppImages.edit)
              ],
            )
          ],
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
      ) */
      backgroundColor: AppTheme.scaffoldBgColor,
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
                    if (authPro.currentPageIndex < authPro.pages.length - 1) {
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
                  'OTP Verification',
                  style: theme.headlineLarge,
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: RichText(
                    text: TextSpan(
                      text: 'Enter The OTP Shared On? ',
                      style: theme.labelMedium,
                      children: [
                        TextSpan(
                          text: ' 7878451245',
                          style: theme.labelMedium,
                        )
                      ],
                    ),
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
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        height: 80.h,
                        width: 50.w,
                        child: KTextField(),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 6.h,
            ),
            KButton(
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
                  style: theme.labelMedium,
                  children: [
                    TextSpan(
                      text: ' Resend SMS',
                      style: theme.headlineSmall,
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
