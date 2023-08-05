import 'package:dealerapp/src/app/UI/wallet/withdrawal/add_bank.dart';
import 'package:dealerapp/src/app/UI/wallet/withdrawal/add_card.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/widgets/bank_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SvgPicture.asset(
          AppImages.back,
          fit: BoxFit.scaleDown,
        ),
        // leading: const Icon(Icons.arrow_back, color: AppTheme.black),
        title: Text(
          'Bank Account',
          style: theme.headlineLarge,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Primary Bank Account',
              style: theme.labelLarge,
            ),
            SizedBox(height: 10.h),
            Text(
              'Savings account associated with your wallet',
              style: theme.labelMedium,
            ),
            SizedBox(height: 30.h),
            BankCard(
              image: AppImages.sbi,
              title: 'State Bank of India',
              onTap: () {},
            ),
            SizedBox(height: 30.h),
            BankCard(
              image: AppImages.bank,
              title: 'Add Bank Account',
              onTap: () {
                AppRoutes.push(page: const AddBankPage());
              },
            ),
            SizedBox(height: 30.h),
            BankCard(
              image: AppImages.card,
              title: 'Add Credit or Debit Card',
              onTap: () {
                AppRoutes.push(page: const AddCardPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
