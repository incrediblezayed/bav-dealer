import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter/material.dart';

class StaggeredS3 extends StatelessWidget {
  StaggeredS3({
    required this.height,
    required this.width,
    required this.count,
    required this.onTap,
    super.key,
  });
  double height;
  double width;
  String count;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        // height: 215.h,
        // width: 180.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffb883ec),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffa95cf3),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(AppImages.s2),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: const Color(0xff6a29a8),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                count,
                style: theme.headlineLarge!.copyWith(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff6a29a8),
                ),
              ),
              const Spacer(),
              Text(
                'Test Orders',
                style: theme.headlineSmall!.copyWith(
                  color: const Color(0xff6a29a8),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
