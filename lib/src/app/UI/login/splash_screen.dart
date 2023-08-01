import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Center(
        child: SvgPicture.asset(AppImages.splashLogo),
      ),
    );
  }
}
