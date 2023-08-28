import 'package:dealerapp/src/utils/global_exports.dart';
///
class StagerredContainer extends StatelessWidget {
  ///
  StagerredContainer({
    required this.height,
    required this.width,
    required this.count,
    required this.onTap,
    required this.arrowColor,
    required this.containerBgColor,
    required this.countColor,
    required this.iconBgColor,
    required this.image,
    required this.title,
    required this.titleColor,
    super.key,
  });

  double height;
  ////width
  double width;
  ///
  String count;
  ///
  String title;

  String image;
  Color arrowColor;
  Color containerBgColor;
  Color iconBgColor;
  Color countColor;
  Color titleColor;

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
          // color: const Color(0xffc8eccb),
          color: containerBgColor,
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
                      color: iconBgColor,
                      // color: const Color(0xff2abcb1),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(image),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: arrowColor,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                count,
                style: theme.headlineLarge!.copyWith(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w600,
                  color: countColor,
                ),
              ),
              const Spacer(),
              Text(
                title,
                style: theme.headlineSmall!.copyWith(color: titleColor),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
