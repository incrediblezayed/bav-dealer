import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:dealerapp/src/utils/app_images.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({required this.title, super.key, this.subTitle});
  final String title;
  final String? subTitle;
  static const String routeName = 'EmptyWidgt';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: size.width * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.walletHistoryEmpty,
            width: size.width * .6,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: textTheme.headlineLarge
                ?.copyWith(color: const Color(0xff666666)),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          if (subTitle != null)
            Text(
              subTitle!,
              style: textTheme.bodyMedium
                  ?.copyWith(color: const Color(0xff828282)),
            ),
        ],
      ),
    );
  }
}
