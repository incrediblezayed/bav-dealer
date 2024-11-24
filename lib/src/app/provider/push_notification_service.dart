import 'dart:io';

import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Push notification service
/// This class is responsible for handling push notifications
class PushNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  // static final bool _isAuthorized = false;

  // bool get isAuthorized => _isAuthorized;

  // String? _deviceToken;

  // String? get deviceToken => _deviceToken;

  static const _chargeChannelId = 'charge_channel_id';
  static const _generalChannelId = 'bav_channel_id';
  static const _bavChannelName = 'BAV Notification';
  static const _chargeChannelName = 'Charging Notification';

  /// Initialize the push notification service
  static Future<void> initLocalNotifications() async {
    if (Platform.isIOS) {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions();
    } else {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
      const chargingChannel = AndroidNotificationChannel(
        _chargeChannelId,
        _chargeChannelName,
        description: 'Notification channel for showing charging status',
        importance: Importance.max,
      );
      const bavChannel = AndroidNotificationChannel(
        _generalChannelId,
        _bavChannelName,
        description: 'Bav general notifications',
        importance: Importance.max,
      );
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(chargingChannel);
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(bavChannel);
    }
  }

  static int _chargingNotificationId = 0;

  /// Create charging notification
  static Future<void> createChargingNotification(int progress) async {
    _chargingNotificationId = DateTime.now().millisecondsSinceEpoch;
    final androidNotificationDetails = AndroidNotificationDetails(
      _chargeChannelId,
      _chargeChannelName,
      showProgress: true,
      progress: progress,
      category: AndroidNotificationCategory.service,
      ongoing: true,
      maxProgress: 100,
      importance: Importance.max,
      priority: Priority.high,
      autoCancel: false,
    );
    const iOSNotificationDetails = DarwinNotificationDetails();
    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iOSNotificationDetails,
    );

    await _flutterLocalNotificationsPlugin.show(
      _chargingNotificationId,
      'Charging',
      'Vehicle is charging',
      notificationDetails,
    );
  }

  /// Update charging notification
  static Future<void> updateChargingProgress(int progress) async {
    final androidNotificationDetails = AndroidNotificationDetails(
      _chargeChannelId,
      _chargeChannelName,
      showProgress: true,
      progress: progress,
      category: AndroidNotificationCategory.service,
      ongoing: true,
      maxProgress: 100,
      importance: Importance.max,
      priority: Priority.high,
      autoCancel: false,
    );
    const iOSNotificationDetails = DarwinNotificationDetails();
    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iOSNotificationDetails,
    );

    await _flutterLocalNotificationsPlugin.show(
      _chargingNotificationId,
      'Charging',
      'Vehicle is charging',
      notificationDetails,
    );
  }

  /// Cancel charging notification
  static Future<void> cancelChargingNotification() async {
    await _flutterLocalNotificationsPlugin.cancel(_chargingNotificationId);
  }

  static Future<void> updateDeviceTokenToServer(String? deviceToken) async {
    final userId = cacheProvider.getUserId();
    if (userId != null) {
      await getIt<GraphqlClient>()
          .client
          .request(GUserDeviceRegistrationReq(
            (b) => b.vars.data
              ..deviceToken = deviceToken
              ..user.connect.id = userId,
          ))
          .first;
    }
  }

  ///Retrive the device token
  static Future<void> retriveDeviceToken() async {
    String? deviceToken = await _messaging.getToken();
    updateDeviceTokenToServer(deviceToken);
    print('Device token: $deviceToken');
  }

  ///Function for requesting notification permission from user
  static Future<void> requestNotificationPermission() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      ('User granted permission').log();
      // _isAuthorized = true;
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      ('User granted provisional permission').log();
      // _isAuthorized = true;
    } else {
      ('User declined or has not accepted permission').log();
      // _isAuthorized = false;
    }
    // notifyListeners();
  }

  static Future<void> initFCMNotifications() async {
    await requestNotificationPermission();
    await retriveDeviceToken();
    FirebaseMessaging.onMessage.listen(onNotification);
    FirebaseMessaging.onMessageOpenedApp.listen(onNotification);
    FirebaseMessaging.onBackgroundMessage(onNotification);
    _messaging.onTokenRefresh.listen(updateDeviceTokenToServer);
  }

  static Future<void> onNotification(RemoteMessage message) async {
    String title = message.notification?.title ?? '';
    String body = message.notification?.body ?? '';
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      _generalChannelId, // ID of the notification channel
      _bavChannelName, // Name of the channel
      channelDescription: 'This channel is used for important notifications.',
      importance: Importance.max,
      priority: Priority.high,
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: darwinNotificationDetails);

    await _flutterLocalNotificationsPlugin.show(
        0, title, body, platformChannelSpecifics);
    return Future<void>.value();
  }

  static Future<void> init() async {
    await initLocalNotifications();
    await initFCMNotifications();
  }
}
