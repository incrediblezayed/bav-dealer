import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:collection/collection.dart';

///OTP Verfication Page
class OTPVerificationPage extends ConsumerStatefulWidget {
  ///Constructor
  const OTPVerificationPage({super.key});

  @override
  ConsumerState<OTPVerificationPage> createState() =>
      _OTPVerificationPageState();
}

class _OTPVerificationPageState extends ConsumerState<OTPVerificationPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final focusNodes = List<FocusNode>.generate(6, (index) => FocusNode());

    final authPro = ref.watch(authProvider);

    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context).textTheme;
    return Scaffold(
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
                    if (authPro.currentPageIndex <
                        authPro.signUpPages.length - 1) {
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
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                SvgPicture.asset(AppImages.edit),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: authPro.otpController
                  .mapIndexed(
                    (i, e) => SizedBox(
                      width: size.width * 0.12,
                      child: Center(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.top,
                          maxLength: 1,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppTheme.primaryColor),
                            ),
                            counterText: '',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppTheme.cardBorders,
                              ),
                            ),
                          ),
                          controller: e,
                          onChanged: (value) {
                            if (value.isEmpty) {
                              if (i != 0) {
                                focusNodes[i - 1].requestFocus();
                              }
                            } else {
                              if (i != 5) {
                                focusNodes[i + 1].requestFocus();
                              }
                            }
                          },
                          focusNode: focusNodes[i],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 6.h,
            ),
            KButton(
              onPressed: () {
                authPro.validateOTP(isEmail: true);
                /*  if (authPro.otpController.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: AppTheme.primaryColor,
                      content: Text('Please Enter OTP'),
                    ),
                  );
                } else if (authPro.currentPageIndex <
                    authPro.signUpPages.length - 1) {
                  authPro.signUpPageController.animateToPage(
                    authPro.currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } */
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
