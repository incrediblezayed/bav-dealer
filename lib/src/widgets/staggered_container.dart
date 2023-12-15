import 'package:dealerapp/src/utils/global_exports.dart';

///
class StagerredContainer extends StatelessWidget {
  ///
  StagerredContainer({
    required this.height,
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

  final double height;

  ///
  final String count;

  ///
  final String title;

  final String image;
  final Color arrowColor;
  final Color containerBgColor;
  final Color iconBgColor;
  final Color countColor;
  final Color titleColor;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
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
                    child: Image.asset(
                      image,
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: arrowColor,
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    count,
                    style: theme.headlineLarge!.copyWith(
                      fontSize: MediaQuery.sizeOf(context).height * 0.04,
                      fontWeight: FontWeight.w600,
                      color: countColor,
                    ),
                  ),
                  Text(
                    title,
                    style: theme.headlineSmall!.copyWith(
                        color: titleColor,
                        fontSize: MediaQuery.sizeOf(context).height * 0.02),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
