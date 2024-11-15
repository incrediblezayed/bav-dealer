import 'package:dealerapp/src/utils/app_images.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double? width;

  const LoadingWidget({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: width ?? size.width * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.loadingGif,
            height: size.height * 0.18,
            width: size.width * 0.18,
          ),
        ],
      ),
    );
  }
}
