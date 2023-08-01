import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Main entry point of the dealer app
class DealerApp extends StatelessWidget {
  ///Main entry point of the dealer app

  const DealerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          scaffoldMessengerKey: AppRoutes.scaffoldMessengerKey,
          navigatorKey: AppRoutes.navigatorKey,
          theme: AppTheme.theme,
          home: const LoginPage(),
        );
      },
    );
  }
}
