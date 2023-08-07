import 'package:dealerapp/src/utils/global_exports.dart';

class StaggeredS4 extends StatelessWidget {
  StaggeredS4({
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
        // height: 138.h,
        // width: 180.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffffec8a),
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
                      color: const Color(0xffffdc53),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(AppImages.s4),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: const Color(0xfffdb35f),
                  ),
                ],
              ),
              Text(
                count,
                style: theme.headlineLarge!.copyWith(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xfffdb35f),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Your Rank',
                style: theme.headlineSmall!.copyWith(
                  color: const Color(0xfffdb35f),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
