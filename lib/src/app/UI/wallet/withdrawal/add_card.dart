import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: SvgPicture.asset(
            AppImages.back,
            fit: BoxFit.scaleDown,
          ),
        ),
        // leading: const Icon(Icons.arrow_back, color: AppTheme.black),
        title: Text(
          'Add Card',
          style: theme.headlineLarge,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const KTextField(
              hintText: 'Enter Your Name On Card',
              label: 'Name On Card',
            ),
            SizedBox(height: 10.h),
            const KTextField(
              hintText: 'Enter Your Card Number',
              label: 'Card Number',
            ),
            SizedBox(height: 10.h),
            const KTextField(
              hintText: 'Expiry Date',
              label: 'Expiry',
            ),
            SizedBox(height: 10.h),
            KButton(onPressed: () {}, text: 'Submit'),
          ],
        ),
      ),
    );
  }
}
