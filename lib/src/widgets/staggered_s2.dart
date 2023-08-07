import 'package:dealerapp/src/utils/global_exports.dart';

class StaggeredS2 extends StatelessWidget {
  StaggeredS2({
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
        // height: 212.h,
        // width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffbee0ff),
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
                      color: const Color(0xffa0d2ff),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(AppImages.s3),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: const Color(0xff358fe1),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                count,
                style: theme.headlineLarge!.copyWith(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff358fe1),
                ),
              ),
              const Spacer(),
              Text(
                'My Inventory',
                style: theme.headlineSmall!.copyWith(
                  color: const Color(0xff358fe1),
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
