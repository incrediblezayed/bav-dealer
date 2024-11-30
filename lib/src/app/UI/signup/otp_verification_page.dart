import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:dealerapp/src/utils/ui_extenstions.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

///OTP Verfication Page
class OTPVerificationPage extends ConsumerStatefulWidget {
  final bool isLoginVerification;

  ///Constructor
  const OTPVerificationPage({
    super.key,
    this.isLoginVerification = false,
  });

  @override
  ConsumerState<OTPVerificationPage> createState() =>
      _OTPVerificationPageState();
}

class _OTPVerificationPageState extends ConsumerState<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final authPro = ref.watch(authProvider);

    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBgColor,
      body: Padding(
        padding: widget.isLoginVerification
            ? MediaQuery.viewPaddingOf(context)
            : 0.pa,
        child: Padding(
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
                  Text(
                    'Enter The OTP Shared On ? ',
                    style: theme.labelMedium,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  InkWell(
                    onTap: () {
                      if (widget.isLoginVerification) {
                        AppRoutes.pop();
                      } else {
                        authPro.signUpPageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          authPro.phoneNumberController.text,
                          style: theme.labelMedium,
                        ),
                        6.g,
                        SvgPicture.asset(AppImages.edit)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                controller: authPro.otpController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 6,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 6.h,
              ),
              KButton(
                onPressed: () {
                  if (authPro.otpController.text.length < 6) {
                    AppRoutes.showErrorSnackbar(message: 'Please enter OTP');
                  } else {
                    authPro.validateOTP(
                        key: 'phone',
                        isLoginVerificaion: widget.isLoginVerification);
                  }
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
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  authPro.resendOTPForSignUp();
                },
                child: Align(
                  child: RichText(
                    text: TextSpan(
                      text: "Didn't Get An OTP ?",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
