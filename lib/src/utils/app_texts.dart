import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This file contains all the text styles used in the app
/// All text styles are stored in the assets/fonts folder
/// To use a text style, import this file and use the text style name
/// For example, to use the primary text style, use [AppTexts.primaryT24W6]
class AppTexts {
  ///SFPro Font Family
  static const String fontFamily = 'Outfit';

  /// Default generated texttheme
  static TextTheme get defaultTextTheme => AppTheme.defaultTextTheme;

  ///Headling large text
  ///Font color is [AppTheme.defaultTitleColor]
  ///Font weight is 700
  ///Font size is 24
  static TextStyle? headlineLarge = defaultTextTheme.headlineLarge?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );

  ///Headling medium text
  static TextStyle? headlineMedium = defaultTextTheme.headlineMedium?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  ///Headling small text
  static TextStyle? headlineSmall = defaultTextTheme.headlineSmall?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );

  /// Body Small
  static TextStyle? bodySmall = defaultTextTheme.bodySmall?.copyWith(
    color: AppTheme.defaultCaptionColor,
  );



  /// Body Medium
  static TextStyle? get bodyMedium => defaultTextTheme.bodyMedium?.copyWith(
        color: AppTheme.defaultTitleColor,
      );

  /// Body Large
  static TextStyle? get bodyLarge => defaultTextTheme.bodyLarge?.copyWith(
        fontSize: 24,
        color: AppTheme.defaultTitleColor,
      );

  /// TItle large
  static TextStyle? titleLarge = defaultTextTheme.titleLarge?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
  );

  /// Title medium
  static TextStyle? titleMedium = defaultTextTheme.titleMedium?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
  );

  /// Title Small
  static TextStyle? titleSmall = defaultTextTheme.titleSmall?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
  );

  /// Label Medium
  static TextStyle? labelMedium = defaultTextTheme.labelMedium?.copyWith(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );

  /// Label Small
  static TextStyle? get labelSmall => defaultTextTheme.labelSmall?.copyWith(
        color: AppTheme.defaultTitleColor,
        fontWeight: FontWeight.w300,
        fontSize: 12.sp,
        letterSpacing: 0,
      );

  /// Default text style of text field
  static TextStyle textFieldStyle = const TextStyle(
    color: AppTheme.labelTextColor,
    //fontWeight: FontWeight.w,
  );

  ///Text with [AppTheme.primaryColor], font size 24 and font weight 600
  static TextStyle primaryT24W6 = TextStyle(
    fontSize: 24.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.primaryColor], font size 14 and font weight 400
  static TextStyle primaryT14W4 = TextStyle(
    fontSize: 14.0.sp,
    height: 1.h,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w400,
  );

  ///Text with [AppTheme.primaryColor], font size 18 and font weight 600
  static TextStyle primaryT18W6 = TextStyle(
    fontSize: 18.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.primaryColor], font size 16 and font weight 400
  static TextStyle primaryT16W4 = TextStyle(
    fontSize: 16.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w400,
  );

  ///Text with [AppTheme.primaryColor], font size 17 and font weight 600
  static TextStyle primaryT17W6 = TextStyle(
    fontSize: 17.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.primaryColor], font size 18 and font weight 500
  static TextStyle primaryT18W5 = TextStyle(
    fontSize: 18.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.primaryColor], font size 14 and font weight 500
  static TextStyle primaryT14W5 = TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.primaryColor], font size 14 and font weight 600
  static TextStyle primaryT14W6 = TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.primaryColor], font size 13 and font weight 500
  static TextStyle primaryT13W5 = TextStyle(
    fontSize: 13.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.white], font size 18 and font weight 600
  static TextStyle whiteTextT18W6 = TextStyle(
    fontSize: 18.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.white,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.white], font size 14 and font weight 600
  static TextStyle whiteTextT14W6 = TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.white,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.primaryColor], font size 12 and font weight 400
  static TextStyle primaryT12W4 = TextStyle(
    fontSize: 12.0.sp,
    height: 1.h,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w400,
  );

  ///Text with [AppTheme.primaryColor], font size 12 and font weight 600
  static TextStyle primaryT12W6 = TextStyle(
    fontSize: 12.0.sp,
    height: 1.h,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.textColor], font size 16 and font weight 400
  static TextStyle textBlackT16W4 = TextStyle(
    fontSize: 16.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w400,
  );

  ///Text with [AppTheme.textColor], font size 16 and font weight 600
  static TextStyle textBlackT16W6 = TextStyle(
    fontSize: 16.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.textColor], font size 16 and font weight 500
  static TextStyle textBlackT16W5 = TextStyle(
    fontSize: 16.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.textColor], font size 13 and font weight 600
  static TextStyle primaryT13W6 = TextStyle(
    fontSize: 13.0.sp,
    // letterSpacing: 21.h,
    fontFamily: fontFamily,
    color: AppTheme.primaryColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.textColor], font size 14 and font weight 400
  static TextStyle textBlackT14W4 = TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w400,
  );

  ///Text with [AppTheme.textColor], font size 16 and font weight 500
  static TextStyle textBlackT12W5 = TextStyle(
    fontSize: 12.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.textColor], font size 18 and font weight 500
  static TextStyle textBlackT18W5 = TextStyle(
    fontSize: 18.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.textColor], font size 14 and font weight 500
  static TextStyle textBlackT14W5 = TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w500,
  );

  ///Text with [AppTheme.textColor], font size 20 and font weight 600
  static TextStyle textBlackT20W6 = TextStyle(
    fontSize: 20.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.textColor], font size 14 and font weight 600
  static TextStyle textBlackT14W6 = TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    color: AppTheme.textColor,
    fontWeight: FontWeight.w600,
  );

  ///Text with [AppTheme.textColor], font size 14 and font weight 500
  static TextStyle hintTextT14W5 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14.0.sp,
    color: AppTheme.textColor.withOpacity(0.5),
  );

  ///Text with [AppTheme.textColor], font size 15 and font weight 500
  static TextStyle hintTextT15W5 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 15.0.sp,
    color: AppTheme.textColor.withOpacity(0.5),
  );

  ///Text Theme for buttom
  static TextStyle btnOKTextStyle = const TextStyle(
    fontSize: 15,
    color: AppTheme.black,
    fontFamily: 'SFPro',
    fontWeight: FontWeight.bold,
  );

  ///Text Style for Buy Vehicle Button
  static TextStyle btnBUYVIEWTextStyle = const TextStyle(
    fontSize: 18,
    color: AppTheme.primaryColor,
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w600,
  );

  ///Contact Us text style
  static TextStyle contactUsTextStyle = const TextStyle(
    fontSize: 16,
    color: AppTheme.primaryColor,
    fontFamily: 'SFPro',
    fontWeight: FontWeight.normal,
  );

  ///Drawer Text Style
  static TextStyle drawerTextStyle = TextStyle(
    fontSize: 16.sp,
    color: AppTheme.textColorTwo,
    fontFamily: 'SFPro',
    fontWeight: FontWeight.normal,
  );

  ///View All Text Style
  static TextStyle viewALLTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    fontFamily: 'SFPro',
    color: Colors.grey.shade700,
  );

  ///Text with [AppTheme.textColor], font size 12 and font weight 400
  static TextStyle hintTextT12W4 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.0.sp,
    color: AppTheme.textColor.withOpacity(0.5),
  );

  ///Text with [AppTheme.textColor], font size 12 and font weight 400
  static TextStyle textStyle15Bold = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'SFPro',
    fontSize: 15,
  );
}
