import 'package:dealerapp/src/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PurchaseSuccessPage extends StatelessWidget {
  const PurchaseSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppImages.purchase),
      ),
    );
  }
}
