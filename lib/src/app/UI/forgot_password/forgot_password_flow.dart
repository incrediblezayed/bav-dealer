import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Forgot Password Class
class ForgorPasswordFlow extends ConsumerStatefulWidget {
  ///constructor
  const ForgorPasswordFlow({super.key});

  @override
  ConsumerState<ForgorPasswordFlow> createState() => _SignUpFlowState();
}

class _SignUpFlowState extends ConsumerState<ForgorPasswordFlow> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final authPro = ref.watch(authProvider);
    // final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBgColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 42.5.h,
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 10.h,
              color: AppTheme.primaryColor.withOpacity(.3),
              alignment: Alignment.centerLeft,
              child: AnimatedBuilder(
                animation: authPro.pageController,
                builder: (context, child) {
                  final width =
                      (size.width / authPro.forgotPasswordPages.length) *
                          (authPro.currentPageIndex + 1);
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: width,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(10.r),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView(
                controller: authPro.pageController,
                children: authPro.forgotPasswordPages,
                onPageChanged: (index) {
                  authPro.currentPageIndex = index;
                },
              ),
            ),
            //SizedBox(height: 16.h),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  AppRoutes.push(page: const LoginPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign Up',
                        style: TextStyle(
                          color: AppTheme.textColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
