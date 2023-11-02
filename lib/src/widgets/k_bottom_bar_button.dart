import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Bottom bar button
class KBottomBarButton extends StatelessWidget {
  ///Constructor for bottom bar button
  const KBottomBarButton(
      {required this.text,
      required this.onTap,
      super.key,
      this.bottomBarHeight,
      this.imageHeight,
      this.imageWidth,
      this.leftPadding,
      this.rightPadding,
      this.image,
      this.color = AppTheme.primaryColor,
      this.size,
      this.fontSize,
      this.minSize = false,
      this.radius = 5,
      this.fontWeight,
      this.secondaryColor});

  final Color? secondaryColor;

  ///Bottom bar height
  final double? bottomBarHeight;

  ///Image height
  final double? imageHeight;

  ///Image width
  final double? imageWidth;

  ///Left padding
  final double? leftPadding;

  ///Right padding
  final double? rightPadding;

  ///Image
  final String? image;

  ///Size
  final Size? size;

  ///Text
  final String text;

  ///Color
  final Color color;

  ///Font size
  final double? fontSize;

  ///Functions
  final void Function() onTap;

  ///Min Size
  final bool minSize;

  /// Radius
  final double radius;

  /// font weight
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    Padding child() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: color == AppTheme.scaffoldBgColor
              ? textTheme.titleSmall
                  ?.copyWith(color: secondaryColor ?? AppTheme.primaryColor)
                  .merge(
                    TextStyle(
                      fontSize: fontSize?.sp ?? 18.sp,
                      fontWeight: fontWeight,
                    ),
                  )
              : textTheme.titleSmall
                  ?.copyWith(color: secondaryColor ?? AppTheme.white)
                  .merge(
                    TextStyle(
                      fontSize: fontSize?.sp ?? 18.sp,
                      fontWeight: fontWeight,
                    ),
                  ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding?.w ?? 0,
        right: rightPadding?.w ?? 0,
        bottom: bottomBarHeight?.h ?? 0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          side: BorderSide(
            color: color == AppTheme.scaffoldBgColor
                ? secondaryColor ?? AppTheme.primaryColor
                : secondaryColor ?? Colors.transparent,
          ),
          backgroundColor: color,
          fixedSize: minSize ? null : size ?? Size(double.infinity, 48.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) ...[
              SvgPicture.asset(
                image!,
                height: imageHeight?.w ?? 16.5.h,
                width: imageWidth?.w ?? 16.5.w,
              ),
              SizedBox(width: 16.5.w),
            ],
            if (minSize)
              child()
            else
              Expanded(
                child: child(),
              ),
          ],
        ),
      ),
    );
  }
}
