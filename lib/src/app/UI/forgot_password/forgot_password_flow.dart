import 'package:auto_size_text/auto_size_text.dart';
import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_texts.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

///Forgot Password page
class ForgotPassword extends ConsumerStatefulWidget {
  ///Constructor for ForgotPassword
  const ForgotPassword({super.key, this.isFromWithingApp = false});
  final bool isFromWithingApp;

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  int index = 0;

  final listenerController = List.generate(6, (index) => FocusNode());

  Widget _buildForgetPasswordVerifyOtpInput() {
    final authPro = ref.read(authProvider);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                authPro.signUpPageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeIn,
                );
              },
              child: Row(
                children: [
                  AutoSizeText(
                    'Enter The OTP Shared On',
                    style: textTheme.labelMedium,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AutoSizeText(
                        '+91${authPro.phoneNumberController.text}',
                        style: textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      const Icon(Iconsax.edit),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
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
                                  authPro.otpController[index].text = element;
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
          height: 16.h,
        ),
        KBottomBarButton(
          text: 'Confirm',
          onTap: () async {
            await authPro.verifyPasswordResetToken();
          },
        ),
      ],
    );
  }

  Widget _buildPasswordResetForm() {
    final authPro = ref.watch(authProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16.h,
        ),
        KTextField(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 20.h, right: 15.h),
            child: Icon(
              Icons.lock_outline,
              size: 18.w,
            ),
          ),
          controller: authPro.passwordController,
          obsecureText: authPro.isPassword,
          inputType: TextInputType.text,
          suffixIcon: IconButton(
            onPressed: authPro.isObsecure,
            icon: Icon(
              authPro.isPassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 18.w,
            ),
          ),
          label: 'Enter New Password',
        ),
        SizedBox(
          height: 16.h,
        ),
        KTextField(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 20.h, right: 15.h),
            child: Icon(
              Icons.lock_outline,
              size: 18.w,
            ),
          ),
          controller: authPro.confirmPasswordController,
          obsecureText: authPro.isPassword,
          inputType: TextInputType.text,
          suffixIcon: IconButton(
            onPressed: authPro.isObsecure,
            icon: Icon(
              authPro.isPassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 18.w,
            ),
          ),
          label: 'Confirm New Password',
        ),
        SizedBox(
          height: 16.h,
        ),
        KBottomBarButton(
          text: 'Update',
          onTap: () async {
            await authPro.resetPassword();
          },
        ),
      ],
    );
  }

  int time = 60;

  void onPageChanged(int index) {
    this.index = index;
    setState(() {});
  }

  Widget _buildPhoneInput() {
    final authPRef = ref.read(authProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Enter Your Mobile\nNumber',
              style: textTheme.headlineLarge,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextField(
              style: AppTexts.textFieldStyle,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: const InputDecoration(
                counterText: '',
                hintText: 'Enter Your Registered Mobile Number',
                labelText: 'Mobile Number',
              ),
              controller: authPRef.phoneNumberController,
            ),
            SizedBox(
              height: 16.h,
            ),
            KBottomBarButton(
              text: 'Get OTP',
              onTap: () async {
                await authPRef.sendPasswordResetToken();
              },
            ),
            const Spacer(),
            if (!widget.isFromWithingApp)
              Padding(
                padding: EdgeInsets.only(bottom: 50.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      AppRoutes.pushReplacement(page: const LoginPage());
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: textTheme.labelSmall?.copyWith(
                          color: AppTheme.defaultCaptionColor,
                          fontSize: 24,
                        ),
                        children: [
                          TextSpan(
                            text: ' Log In',
                            style: textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authPRef = ref.watch(authProvider);
    final textTheme = Theme.of(context).textTheme;
    return WillPopScope(
      onWillPop: () async {
        if (index == 0) {
          if (!widget.isFromWithingApp) {
            await AppRoutes.pushReplacement(page: const LoginPage());
          } else {
            Navigator.pop(context);
          }
        } else {
          await authPRef.signUpPageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setState(() {});
        }
        authPRef.clear();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: index == 2
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Change Password',
                      style: textTheme.headlineLarge,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    AutoSizeText(
                      'Enter Your New Password',
                      style: textTheme.labelMedium,
                    ),
                  ],
                )
              : index == 1
                  ? Text(
                      'OTP Verification',
                      style: textTheme.headlineLarge,
                    )
                  : Text(
                      widget.isFromWithingApp
                          ? 'Change Password'
                          : 'Forgot Password',
                      style: textTheme.headlineLarge,
                    ),
          leading: IconButton(
            onPressed: () {
              if (index == 0) {
                if (!widget.isFromWithingApp) {
                  AppRoutes.pushReplacement(page: const LoginPage());
                } else {
                  Navigator.pop(context);
                }
              } else {
                authPRef.signUpPageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                setState(() {});
              }
            },
            icon: const Icon(Iconsax.arrow_left),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SafeArea(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: authPRef.signUpPageController,
              onPageChanged: onPageChanged,
              children: [
                _buildPhoneInput(),
                _buildForgetPasswordVerifyOtpInput(),
                _buildPasswordResetForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
