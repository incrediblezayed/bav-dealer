import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Sign up page
class SignUpPage extends ConsumerStatefulWidget {
  /// This page is used for sign up
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

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
              style: textTheme.bodyLarge,
            ),
            SizedBox(height: 6.h),
/*             Text(
              'Enter Your Mobile No.',
              style: textTheme.labelMedium?.copyWith(
                color: AppTheme.defaultCaptionColor,
              ),
            ),
            SizedBox(height: 24.h), */
            Text(
              'Enter Your Mobile\nNumber',
              style: textTheme.headlineLarge,
            ),
            SizedBox(height: 14.h),
            KTextField(
              controller: authPro.phoneNumberController,
              inputType: TextInputType.number,
              hintText: 'Enter Your Mobile No',
              maxLength: 10,
              label: 'Mobile No.',
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            SizedBox(height: 14.h),
            KBottomBarButton(
              onTap: () {
                if (authPro.phoneNumberController.text.isEmpty) {
                  AppRoutes.showErrorSnackbar(
                    message: 'Please Enter Mobile No.',
                  );
                } else if (authPro.phoneNumberController.text.length != 10) {
                  AppRoutes.showErrorSnackbar(message: 'Minimum 10 Numbers');
                } else if (!authPro.agree) {
                  AppRoutes.showErrorSnackbar(
                    message: 'You must agree to our terms and conditions',
                  );
                } else {
                  authPro.signUpPageController.animateToPage(
                    authPro.currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              text: 'Next',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'We Will Send You A Code By SMS To Confirm Your Phone Number',
              style: textTheme.labelMedium,
            ),
            SizedBox(height: 14.h),
            Theme(
              data: ThemeData(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                unselectedWidgetColor: AppTheme.primaryColor,
                listTileTheme: theme.listTileTheme.copyWith(
                  contentPadding: EdgeInsets.zero,
                  enableFeedback: true,
                  horizontalTitleGap: 0,
                ),
                checkboxTheme: theme.checkboxTheme.copyWith(
                  side: const BorderSide(
                    color: AppTheme.primaryColor,
                    width: .5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                dense: true,
                activeColor: AppTheme.primaryColor,
                value: authPro.agree,
                onChanged: (value) {
                  authPro.agree = value!;
                },
                title: Text(
                  'I Agree With Terms & Conditions',
                  style: textTheme.labelMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
