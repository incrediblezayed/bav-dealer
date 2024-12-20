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

  static const _generalChannelId = 'dealer_channel_id';
  static const _bavChannelName = 'BAV Dealer Notification';

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

      const bavChannel = AndroidNotificationChannel(
        _generalChannelId,
        _bavChannelName,
        description: 'Bav general notifications',
        importance: Importance.max,
      );
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(bavChannel);
    }
    const initSettings = InitializationSettings(
      android: AndroidInitializationSettings('mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    _flutterLocalNotificationsPlugin.initialize(initSettings);
  }

  static Future<void> updateDeviceTokenToServer(String? deviceToken) async {
    final userId = cacheProvider.getUserId();
    deviceToken?.log();
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
