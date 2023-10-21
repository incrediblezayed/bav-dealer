import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:collection/collection.dart';
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
  final formKey = GlobalKey<FormState>();

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
                  SizedBox(
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
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
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
        ),
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
    final authPro = ref.read(authProvider);
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                authPro.signUpPageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
              icon: const Icon(Iconsax.arrow_left),
            ),
            Expanded(
              child: Column(
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
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        TextField(
          style: AppTexts.hintTextT14W5,
          controller: authPro.passwordController,
          obscureText: authPro.isPassword,
          obscuringCharacter: '*',
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          cursorColor: AppTheme.primaryColor,
          decoration: InputDecoration(
            counterText: '',
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 20.h, right: 15.h),
              child: Icon(
                Icons.lock_outline,
                size: 18.w,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: InkWell(
                onTap: authPro.isObsecure,
                child: Icon(
                  authPro.isPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 18.w,
                ),
              ),
            ),
            labelText: 'Enter New Password',
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        TextFormField(
          style: AppTexts.hintTextT14W5,
          controller: authPro.confirmPasswordController,
          obscureText: authPro.isPassword,
          obscuringCharacter: '*',
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          cursorColor: AppTheme.primaryColor,
          decoration: InputDecoration(
            counterText: '',
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 20.h, right: 15.h),
              child: Icon(
                Icons.lock_outline,
                size: 18.w,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: InkWell(
                onTap: authPro.isObsecure,
                child: Icon(
                  authPro.isPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 18.w,
                ),
              ),
            ),
            labelText: 'Confirm New Password',
          ),
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

  Timer? _timer;

  int time = 60;

  void onPageChanged(int index) {
    if (index == 1) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (time == 0) {
          _timer?.cancel();
        }
        setState(() {
          time--;
        });
      });
    } else {
      _timer?.cancel();
    }
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
    final authPRef = ref.read(authProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SafeArea(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            allowImplicitScrolling: false,
            controller: authPRef.signUpPageController,
            children: [
              _buildPhoneInput(),
              _buildForgetPasswordVerifyOtpInput(),
              _buildPasswordResetForm(),
            ],
          ),
        ),
      ),
    );
  }
}
