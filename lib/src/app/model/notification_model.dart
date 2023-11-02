// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dealerapp/src/utils/app_images.dart';
import 'package:flutter/material.dart';


enum NotificationType {
  orderNotification(
    icon: AppImages.notificationOrder,
    iconColor: Color(0xff17bd4f),
    cardColor: Color(0xfff3fafa),
  ),
  passwordNotification(
    icon: AppImages.notificationPassword,
    iconColor: Color(0xff7599f4),
    cardColor: Color(0xfff9f9f9),
  ),
  profileNotification(
    icon: AppImages.notificationProfile,
    iconColor: Color(0xffff8743),
    cardColor: Color(0xfff9f9f9),
  ),
  securityNotification(
    icon: AppImages.notificationSecurity,
    iconColor: Color(0xff12a89d),
    cardColor: Color(0xfff3fbfa),
  );

  final String icon;
  final Color iconColor;
  final Color cardColor;

  const NotificationType({
    required this.icon,
    required this.iconColor,
    required this.cardColor,
  });
}

@immutable
class NotificationModel {
  final String title;
  final String subtitle;
  final NotificationType notificationType;
  final DateTime dateTime;
  const NotificationModel({
    required this.title,
    required this.subtitle,
    required this.notificationType,
    required this.dateTime,
  });

  NotificationModel copyWith({
    String? title,
    String? subtitle,
    NotificationType? notificationType,
    DateTime? dateTime,
  }) {
    return NotificationModel(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      notificationType: notificationType ?? this.notificationType,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'notificationType': notificationType.name,
      'dateTime': dateTime.millisecondsSinceEpoch,
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      notificationType: NotificationType.values
          .firstWhere((element) => element == map['notificationType']),
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NotificationModel(title: $title, subtitle: $subtitle, notificationType: $notificationType, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant NotificationModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subtitle == subtitle &&
        other.notificationType == notificationType &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        subtitle.hashCode ^
        notificationType.hashCode ^
        dateTime.hashCode;
  }
}
