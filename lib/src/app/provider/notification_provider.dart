import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.data.gql.dart';
import 'package:dealerapp/src/app/repository/notifications/notification_repository.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:flutter/material.dart';

class NotificationsProvider extends ChangeNotifier {
  final _notificationRepository = NotificationRepository();

  List<GAppNotificationsData_appNotifications> _notifications = [];

  List<GAppNotificationsData_appNotifications> get notifications =>
      _notifications;

  set notifications(List<GAppNotificationsData_appNotifications> value) {
    _notifications = value;
    notifyListeners();
  }

  void init() {
    getNotifications();
  }

  Future<void> getNotifications() async {
    try {
      final notifications = await _notificationRepository.getNotifications();
      this.notifications = notifications;
    } catch (e) {
      AppRoutes.showErrorSnackbar(message: e.toString());
    }
  }
}
