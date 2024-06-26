import 'package:dealerapp/src/utils/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///App Theme
class AppTheme {
  ///Rating Color
  static const Color ratingColor = Color(0xffFFC225);

  ///Black Color
  static const Color black = Colors.black;

  ///White Color
  static const Color white = Colors.white;

  ///White Color
  static const Color green = Color(0xFF0ca05d);

  ///

  ///Blue Color
  static const Color blue = Color(0xFF2956AB);

  ///Red Color
  static const Color red = Color(0xFFF31942);

  ///Primary Color
  static const Color primaryColor = Color(0xff12A89D);

  ///Text Color
  static const Color textColor = Color(0xff194B3F);

  ///Text Color
  static const Color textColorTwo = Color(0xff031D1B);

  ///Symantic Color
  static const Color symanticColor = Color(0xffFF6960);

  ///Grey Color
  static const Color grayColor = Color(0xff828E8D);

  ///Gradient Color
  static const LinearGradient gradientColor = LinearGradient(
    colors: [Color(0xff12A89D), Color(0xff1284A8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  ///Scaffold BG Color
  static const scaffoldBgColor = Color(0xffFFFFFF);

  ///Disabled Button Color
  static const Color disabledButton = Color(0xffFACAA2);

  ///Default Black
  static Color defaultBlack = const Color(0xff292C31);

  ///Card Color
  static const cardColor = Color(0xffF8F9FE);

  ///Hint text Color
  static const hintTextColor = Color(0xff949598);

  ///Tab bar color
  static const tabBarColor = Color(0xff787B83);

  ///Dark Green Color
  static const darkGreenColor = Color(0xff00AD45);

  ///Red Color
  static const redColor = Color(0xffF17006);

  ///Text Field Color
  static const textFieldFill = Color(0xffededed);

  ///Cart Borders
  static const cardBorders = Color(0xffE8E8E8);

  ///Pickup location Color
  static const pickupLocation = Color(0xff4285F4);

  ///Default Title Text Color
  static const Color defaultTitleColor = Color.fromRGBO(25, 75, 63, 1);

  ///Label text Color
  static const labelTextColor = Color(0xff194B3F);

  ///Default Caption Text Color
  static Color defaultCaptionColor = const Color.fromRGBO(25, 75, 63, 0.46);

  ///Drop location Color
  static const dropLocation = Color(0xff12A89D);

  ///Circle Avatar BG color in contact us
  static const circleAvatarBG = Color(0x12A89D1A);

  ///Default Shadow
  static BoxShadow defaultShadow = BoxShadow(
    offset: const Offset(0, 2),
    color: Colors.black.withOpacity(.1),
    blurRadius: 2,
  );

  ///TextField fill color
  static const Color textfieldFill = Color(0xffF0F0F0);

  ///Default Textfield Border
  static InputBorder defaultTextfieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.r),
    borderSide: BorderSide.none,
  );

  ///Focused Textfield Border
  static InputBorder focusedTextfieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.r),
    borderSide: const BorderSide(color: AppTheme.primaryColor),
  );

  ///Input Decoration
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    border: defaultTextfieldBorder,
    filled: true,
    fillColor: textfieldFill,
    enabledBorder: defaultTextfieldBorder,

    hintStyle: const TextStyle(
      color: hintTextColor,
      fontWeight: FontWeight.w300,
      fontSize: 16,
    ),
    labelStyle: const TextStyle(
      color: defaultTitleColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    focusedBorder: focusedTextfieldBorder,

    // focusedBorder: focusedTextfieldBorder,
  );

  static const String _fontFamily = 'Outfit';

  static TextTheme get defaultTextTheme =>
      ThemeData(fontFamily: _fontFamily).textTheme;

  ///Default Theme Data
  static ThemeData get theme => ThemeData(
        dialogTheme: const DialogTheme(
          surfaceTintColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle:
              AppTexts.labelMedium?.copyWith(fontWeight: FontWeight.w700),
          backgroundColor: scaffoldBgColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: textColor),
          titleSpacing: 0,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: AppTheme.textColor,
          ),
          headlineMedium: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppTheme.textColor,
          ),
          labelLarge: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppTheme.textColor,
          ),
          headlineSmall: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppTheme.textColor,
          ),
          labelMedium: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        dividerColor: Colors.transparent,
        scaffoldBackgroundColor: scaffoldBgColor,
        primaryColor: primaryColor,
        inputDecorationTheme: inputDecorationTheme,
        fontFamily: 'SFPro',
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all(primaryColor),
        ),
      );
}
