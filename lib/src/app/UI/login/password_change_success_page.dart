import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordChangeSuccessPage extends StatelessWidget {
  const PasswordChangeSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Images/success.png'),
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Password Changed Successfully',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  AppRoutes.push(page: const LoginPage());
                },
                child: Container(
                  height: 60.h,
                  width: 250.w,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'Back To Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
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
