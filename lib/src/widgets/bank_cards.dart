import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Custom Bank Card
class BankCard extends StatelessWidget {
  /// Constructor of bank card
  const BankCard({
    required this.image,
    required this.title,
    required this.onTap,
    super.key,
  });

  ///image 
  final String image;
  ///title
  final String title;
  ///ontap
  // ignore: inference_failure_on_function_return_type
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          // SvgPicture.asset(AppImages.sbisvg),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.textFieldFill,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            width: 12.w,
          ),
          Text(
            title,
            style: theme.labelLarge,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon:  const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
