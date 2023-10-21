import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:dealerapp/src/app/UI/Homepage/homepage.dart';
import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Splash Screen
class SplashScreen extends ConsumerStatefulWidget {
  ///Splash Screen
  ///
  ///It is the first screen that is shown to the user
  ///and required data initialization is done here
  ///such as getting the user and checking if the user has seen the onboarding
  ///or if the user has logged in or not
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Center(
        child: Image.asset(AppImages.newLogo, height: 200.h),
      ),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    final user = cacheProvider.getUser();

    if (user == null) {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          AppRoutes.pushAndRemoveUntil(page: const LoginPage());
        },
      );
    } else {
      final model = await ref.read(authProvider).getUser(user.id);
      if (model != null) {
        await cacheProvider.setUser(model);
        await AppRoutes.pushAndRemoveUntil(page: const HomePage());
      } else {
        cacheProvider.clear();
        AppRoutes.pushAndRemoveUntil(page: LoginPage());
      }
    }
  }
}
