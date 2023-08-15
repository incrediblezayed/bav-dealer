import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddBankPage extends StatelessWidget {
  const AddBankPage({super.key});

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
          'Add Bank Account',
          style: theme.headlineLarge,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            KTextField(
              hintText: 'Enter Your Account Number',
              label: 'Account Number',
            ),
            SizedBox(height: 10.h),
            KTextField(
              hintText: 'Enter Your IFSC Code',
              label: 'IFSC Code',
            ),
            SizedBox(height: 10.h),
            KTextField(
              hintText: 'Enter Your Branch Code',
              label: 'Branch Code',
            ),
            SizedBox(height: 10.h),
            KTextField(
              hintText: 'Enter Your Registered Mobile Number',
              label: 'Mobile Number',
            ),
            SizedBox(height: 10.h),
            KButton(onPressed: () {}, text: 'Submit')
          ],
        ),
      ),
    );
  }
}
