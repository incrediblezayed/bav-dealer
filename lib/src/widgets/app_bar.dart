import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

///App bar
class MyAppBar extends AppBar {
  ///Constructor for app bar
  MyAppBar({
    super.key,
    String? title,
    bool isBackButton = true,
    Color? iconColor,
    void Function()? onTapLeading,
    super.actions,
    super.bottom,
    super.titleTextStyle,
    super.backgroundColor,
    super.actionsIconTheme,
  }) : super(
          automaticallyImplyLeading: AppRoutes.canPop() && isBackButton,
          leading: (isBackButton && AppRoutes.canPop() || onTapLeading != null)
              ? IconButton(
                  onPressed: () {
                    onTapLeading ??= AppRoutes.pop;
                    onTapLeading!();
                  },
                  icon: Icon(
                    Iconsax.arrow_left,
                    color: iconColor ?? AppTheme.textColor,
                  ),
                )
              : null,
          title: title != null ? Text(title) : null,
        );
}
