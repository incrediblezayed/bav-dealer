import 'dart:core';

/// Constants class
class Constants {
  static bool get isDev => const bool.fromEnvironment('isDev');

  /// This is environment string based on isDev boolean
  static String environment =
      isDev ? 'dealer_development' : 'dealer_production';

  /// This is the url for glitchtip
  /// Used for tracking bugs
  static String get glitchTipDSN =>
      const String.fromEnvironment('glitchTipDSN');

  /// This is the base url for the api
  static const String seen = 'seen';

  ///Rupee
  static const String rupee = '₹';

  static bool shouldTrack = true;
}
