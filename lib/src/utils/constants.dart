import 'dart:core';

/// Constants class
class Constants {

  static bool get isDev => const bool.fromEnvironment('isDev');

  /// This is the base url for the api
  static const String seen = 'seen';

  ///Razorpay Key ID
  static const String razorpayKeyId = 'rzp_test_BuAgpfwLmK6poi';

  ///Rupee
  static const String rupee = '₹';
}
