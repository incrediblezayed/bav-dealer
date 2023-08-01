import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/custom_button.dart';
import 'package:dealerapp/src/utils/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddEmailPage extends ConsumerWidget {
  const AddEmailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authPro = ref.watch(authProvider);
    final pageViewPro = ref.watch(authProvider);
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Your Email',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppTheme.textColor,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(
              hintText: 'Enter Your Email',
              label: 'Email ID',
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomButton(
              onPressed: () {
                if (pageViewPro.currentPageIndex <
                    pageViewPro.pages.length - 1) {
                  pageViewPro.pageController.animateToPage(
                    pageViewPro.currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              text: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
