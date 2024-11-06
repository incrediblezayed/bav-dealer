import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

///OTP Verfication Page
class OTPVerificationPage extends ConsumerStatefulWidget {
  ///Constructor
  const OTPVerificationPage({super.key});

  @override
  ConsumerState<OTPVerificationPage> createState() =>
      _OTPVerificationPageState();
}

class _OTPVerificationPageState extends ConsumerState<OTPVerificationPage> {
  final listenerController = List.generate(6, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
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
                      text: 'Enter The OTP Shared On ? ',
                      style: theme.labelMedium,
                      children: [
                        TextSpan(
                          text: authPro.phoneNumberController.text,
                          style: theme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                InkWell(
                  onTap: () {
                    authPro.signUpPageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: SvgPicture.asset(AppImages.edit),
                ),
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
            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: authPro.otpController
                  .mapIndexed(
                    (i, e) => SizedBox(
                      width: MediaQuery.sizeOf(context).width * .12,
                      child: RawKeyboardListener(
                        focusNode: listenerController[i],
                        onKey: (value) {
                          if (value is RawKeyUpEvent) {
                            if (value.logicalKey.keyId == 4294967304) {
                              if (i != 0) {
                                authPro.otpNode[i - 1].requestFocus();
                              }
                            } else {
                              if (authPro.otpController[i].text.isNotEmpty) {
                                if (i != 5) {
                                  authPro.otpNode[i + 1].requestFocus();
                                  authPro.otpController[i + 1].text =
                                      value.data.keyLabel;
                                }
                              }
                            }
                          }
                        },
                        child: KTextField(
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          inputType: TextInputType.number,
                          contextMenuBuilder: (context, editableTextState) {
                            final option = ContextMenuButtonItem(
                              label: 'Paste',
                              onPressed: () {
                                Clipboard.getData('text/plain').then((value) {
                                  if (value != null &&
                                      value.text != null &&
                                      value.text!.isNotEmpty) {
                                    value.text!
                                        .split('')
                                        .forEachIndexed((index, element) {
                                      authPro.otpController[index].text =
                                          element;
                                    });
                                  }
                                });
                              },
                            );
                            return AdaptiveTextSelectionToolbar.buttonItems(
                              buttonItems: [option],
                              anchors: editableTextState.contextMenuAnchors,
                            );
                          },
                          onChanged: (value) {
                            print(value);
                            if (value.isNotEmpty) {
                              if (i != 5) {
                                authPro.otpNode[i + 1].requestFocus();
                              }
                            }
                          },
                          focusNode: authPro.otpNode[i],
                          controller: e,
                          hintText: '',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ) */
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 6.h,
            ),
            KButton(
              onPressed: () {
                authPro.validateOTP(key: 'email');
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
    );
  }
}
