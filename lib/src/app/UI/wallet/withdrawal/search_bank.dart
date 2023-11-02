import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBankPage extends StatelessWidget {
  const SearchBankPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* TextField(
              decoration: InputDecoration(
                prefixIcon: SvgPicture.asset(
                  AppImages.search,
                  fit: BoxFit.scaleDown,
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ) */
            KTextField(
              hintText: 'Search for bank',
              prefixIcon: SvgPicture.asset(
                AppImages.search,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Add Your Bank',
              style: theme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
