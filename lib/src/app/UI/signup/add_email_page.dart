/* import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';


///Add Email Page
class AddEmailPage extends ConsumerWidget {
  const AddEmailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final authPro = ref.watch(authProvider);
    final pageViewPro = ref.watch(authProvider);
    return Scaffold(
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
                  'Add Your Email',
                  style: theme.headlineLarge,
                ),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            KTextField(
              hintText: 'Enter Your Email',
              label: 'Email ID',
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 26.h,
            ),
            KButton(
              onPressed: () {
                if (pageViewPro.currentPageIndex <
                    pageViewPro.signUpPages.length - 1) {
                  pageViewPro.pageController.animateToPage(
                    pageViewPro.currentPageIndex + 1,
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
 */