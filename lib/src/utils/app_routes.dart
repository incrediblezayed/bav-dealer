import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
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
  static void showErrorSnackbar({String message = 'Error..'}) {
    Future.delayed(Duration.zero, () {
      _showErrorFlushbar(message);
    });
  }

  static Flushbar? _currentFlushbar;

  static void _showErrorFlushbar(String message) {
    _currentFlushbar?.dismiss();
    _currentFlushbar = Flushbar(
      message: message,
      duration: const Duration(seconds: 2),
      backgroundColor: AppTheme.red,
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.all(16.w),
      borderRadius: BorderRadius.circular(6),
      mainButton: IconButton(
        onPressed: () {
          _currentFlushbar?.dismiss();
        },
        icon: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    );
    _currentFlushbar!.show(navigatorKey.currentState!.overlay!.context);
  }

  static void _showSuccessFlushbar(String message) {
    _currentFlushbar?.dismiss();
    _currentFlushbar = Flushbar(
      message: message,
      duration: const Duration(seconds: 2),
      backgroundColor: AppTheme.primaryColor,
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.all(16.w),
      borderRadius: BorderRadius.circular(6),
      mainButton: IconButton(
        onPressed: () {
          _currentFlushbar?.dismiss();
        },
        icon: const Icon(
          Icons.close,
          color: AppTheme.white,
        ),
      ),
    );

    _currentFlushbar!.show(navigatorKey.currentState!.overlay!.context);
  }

  ///Shows a snackbar with a default title as 'Success'
  static void showSuccessSnackbar(
      {String message = 'Success',
      Duration duration = const Duration(seconds: 2)}) {
    Future.delayed(Duration.zero, () {
      _showSuccessFlushbar(message);
    });
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
