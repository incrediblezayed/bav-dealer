import 'dart:io';

import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// This class is used to navigate between pages
///
/// and show dialogs and snackbars
///
/// An alternative to using Navigator.push and Navigator.pop
///
/// and Scaffold.of(context).showSnackBar
///
/// it is used to avoid the use of context and smoother navigation with lesser
///
/// lines of code
///
/// It uses the navigator key under the hood to navigate
///
/// and scaffold messenger key to show snackbars
///
/// It also uses the navigator key to show dialogs
///
/// It is used in the following way:
///
/// Assign the navigator key to the Material App
///
/// [navigatorKey: AppRoutes.navigatorKey]
///
/// Assign the scaffold messenger key to the Material App
///
/// [scaffoldMessengerKey: AppRoutes.scaffoldMessengerKey]
///
/// and you're good to go with
///
/// AppRoutes.push(PageName());
///
/// AppRoutes.pop();
///
/// AppRoutes.showLoadingDialog();
///
/// AppRoutes.showErrorSnackbar(message:);
///
/// AppRoutes.showSuccessSnackbar(message:);
class AppRoutes {
  ///Navigator key to navigate between pages
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  ///Scaffold messenger key to show snackbars
  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  ///Scaffold state key
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ///Shows a info dialog for handling permission
  static Future<T?> showInfoDialog<T>({
    required String title,
    required String message,
    required List<Widget> action,
  }) async {
    return showDialog<T>(
      context: navigatorKey.currentState!.context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text(title),
          content: Text(message),
          actions: action,
        );
      },
    );
  }

  ///Shows a loading dialog with a default loading message as 'Loading'
  ///
  ///[text] is the message to be shown in the dialog
  static Future<T?> showLoadingDialog<T>([String text = 'Loading']) async {
    return showDialog<T>(
      context: navigatorKey.currentState!.overlay!.context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Builder(
            builder: (context) {
              final size = MediaQuery.of(context).size;
              return Container(
                height: size.height * 0.1,
                width: size.width * 0.2,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SpinKitCircle(
                      color: AppTheme.primaryColor,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: AppTheme.defaultBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  ///Shows a snackbar with a default title as 'Error'
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>?
      showErrorSnackbar({
    String message = 'Error..',
    Alignment alignment = Alignment.topCenter,
  }) {
    // message.log();
    return scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 1),
        elevation: 1,
        //padding: EdgeInsets.zero,
        content: Row(
          children: [
            Text(
              message,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppTheme.white,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
            IconButton(
              onPressed: () {
                scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
              },
              icon: const Icon(
                Icons.close,
                color: AppTheme.white,
              ),
            ),
          ],
        ),
        backgroundColor: AppTheme.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
          side: BorderSide(
            color: AppTheme.defaultBlack.withOpacity(0.06),
          ),
        ),
      ),
    );
  }

  ///Shows a snackbar with a default title as 'Success'
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>?
      showSuccessSnackbar(
          {String message = 'Success',
          Alignment alignment = Alignment.bottomCenter,
          Duration duration = const Duration(seconds: 1),}) {
    return scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: duration,
        elevation: 1,
        padding: EdgeInsets.zero,
        content: Align(
          alignment: alignment,
          child: Row(
            children: [
              Container(
                height: 56.h,
                width: 6.w,
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(6.r)),
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              Icon(
                Icons.check_circle,
                size: 24.sp,
                color: AppTheme.primaryColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                message,
                style: TextStyle(
                  color: AppTheme.defaultBlack,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
                },
                icon: Icon(
                  Icons.close,
                  color: AppTheme.defaultBlack.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: AppTheme.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
          side: BorderSide(
            color: AppTheme.defaultBlack.withOpacity(0.06),
          ),
        ),
      ),
    );
  }

  ///Wraps the widget in the Route
  static Route<T> getRoute<T>(
    Widget widget, {
    RouteSettings? settings,
    String? name,
    Object? arguments,
  }) {
    settings ??= RouteSettings(name: name, arguments: arguments);
    return CupertinoPageRoute(
      settings: settings,
      builder: (context) => WillPopScope(
        onWillPop: () async {
          if (!kIsWeb) {
            if (Platform.isIOS) {
              if (navigatorKey.currentState!.userGestureInProgress) {
                return false;
              } else {
                return true;
              }
            }
          }
          return true;
        },
        child: widget,
      ),
    );
  }

  ///AppRoutes.push(page: PageName())
  ///
  ///It will push the page to the stack
  ///
  ///it's an alternative of Navigator.push()
  ///
  ///without context and route
  ///
  ///this uses navigatorKey
  static Future<T?>? push<T extends Object?>({
    required Widget page,
    dynamic arguments,
  }) {
    return navigatorKey.currentState?.push<T>(
      getRoute(page, arguments: arguments, name: page.toString()),
    );
  }

  ///AppRoutes.pushReplacement(page: PageName())
  ///
  ///It will push the page to the stack
  /// and remove the previous pages
  ///
  static Future<T?>? pushReplacement<T extends Object?, TO extends Object>({
    required Widget page,
    String? name,
    Object? object,
    TO? result,
  }) =>
      navigatorKey.currentState?.pushReplacement<T, TO>(
        getRoute(page, name: name, arguments: object),
        result: result,
      );

  ///AppRoutes.pushNamed(page: PageName())
  ///
  ///It will push the page to the stack
  /// and remove all the previous pages
  static Future<T?>? pushAndRemoveUntil<T extends Object?, TO extends Object>({
    required Widget page,
    String? name,
    bool Function(Route<dynamic>)? predicate,
  }) {
    predicate ??= (p0) => false;
    return navigatorKey.currentState?.pushAndRemoveUntil<T>(
      getRoute(page, name: name, arguments: page),
      predicate,
    );
  }

  ///AppRoutes.pop()
  ///
  ///It will pop the page from the stack
  ///
  static void pop<T extends Object?>([T? results]) =>
      navigatorKey.currentState?.pop<T>(results);

  ///AppRoutes.canPop()
  ///
  ///It will check if the page can be popped
  static bool canPop<T extends Object?>() =>
      navigatorKey.currentState?.canPop() ?? false;
}
