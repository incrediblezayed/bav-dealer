import 'dart:core';

/// Constants class
class Constants {
  static bool get isDev => const bool.fromEnvironment('isDev');

  /// This is environment string based on isDev boolean
  static String environment = isDev ? 'development' : 'production';

  /// This is the base url for the api
  static const String seen = 'seen';

  ///Rupee
  static const String rupee = '₹';
}
