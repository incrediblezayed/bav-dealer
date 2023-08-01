import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWalletPage extends StatelessWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400.h,
                width: double.maxFinite,
                color: AppTheme.primaryColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppImages.arrowBack),
                        Text(
                          'My Wallet',
                          style: theme.headlineLarge!.copyWith(
                            fontSize: 24.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.red,
          ),


          
        ],
      ),
    );
  }
}
