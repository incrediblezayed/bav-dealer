import 'package:dealerapp/src/utils/global_exports.dart';

class StagerredS1 extends StatelessWidget {
  StagerredS1({
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
        // height: 145.h,
        // width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffc8eccb),
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
                      color: const Color(0xff2abcb1),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(AppImages.cart),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: AppTheme.primaryColor,
                  ),
                ],
              ),
              Text(
                count,
                style: theme.headlineLarge!.copyWith(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Purchase Orders',
                style:
                    theme.headlineSmall!.copyWith(color: AppTheme.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
