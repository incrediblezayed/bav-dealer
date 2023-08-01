import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.onPressed, required this.text});
  Function()? onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.r),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite,
        height: 50.h,
        color: AppTheme.primaryColor,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
