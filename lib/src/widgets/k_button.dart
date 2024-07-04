// ignore_for_file: inference_failure_on_function_return_type

import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Custom bottom class
class KButton extends StatelessWidget {
  /// Constructor
  const KButton({required this.onPressed, required this.text, super.key});

  ///onpressed
  final Function()? onPressed;

  ///text
  final String text;

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
