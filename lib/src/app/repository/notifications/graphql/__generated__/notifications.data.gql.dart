// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'notifications.data.gql.g.dart';

abstract class GAppNotificationsData
    implements Built<GAppNotificationsData, GAppNotificationsDataBuilder> {
  GAppNotificationsData._();

  factory GAppNotificationsData(
          [void Function(GAppNotificationsDataBuilder b) updates]) =
      _$GAppNotificationsData;

  static void _initializeBuilder(GAppNotificationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAppNotificationsData_appNotifications>? get appNotifications;
  static Serializer<GAppNotificationsData> get serializer =>
      _$gAppNotificationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppNotificationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppNotificationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppNotificationsData.serializer,
        json,
      );
}

abstract class GAppNotificationsData_appNotifications
    implements
        Built<GAppNotificationsData_appNotifications,
            GAppNotificationsData_appNotificationsBuilder> {
  GAppNotificationsData_appNotifications._();

  factory GAppNotificationsData_appNotifications(
      [void Function(GAppNotificationsData_appNotificationsBuilder b)
          updates]) = _$GAppNotificationsData_appNotifications;

  static void _initializeBuilder(
          GAppNotificationsData_appNotificationsBuilder b) =>
      b..G__typename = 'AppNotification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get body;
  _i2.GDateTime? get createdAt;
  _i2.GDateTime? get modifiedAt;
  GAppNotificationsData_appNotifications_notificationType? get notificationType;
  String? get title;
  static Serializer<GAppNotificationsData_appNotifications> get serializer =>
      _$gAppNotificationsDataAppNotificationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppNotificationsData_appNotifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppNotificationsData_appNotifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppNotificationsData_appNotifications.serializer,
        json,
      );
}

abstract class GAppNotificationsData_appNotifications_notificationType
    implements
        Built<GAppNotificationsData_appNotifications_notificationType,
            GAppNotificationsData_appNotifications_notificationTypeBuilder> {
  GAppNotificationsData_appNotifications_notificationType._();

  factory GAppNotificationsData_appNotifications_notificationType(
      [void Function(
              GAppNotificationsData_appNotifications_notificationTypeBuilder b)
          updates]) = _$GAppNotificationsData_appNotifications_notificationType;

  static void _initializeBuilder(
          GAppNotificationsData_appNotifications_notificationTypeBuilder b) =>
      b..G__typename = 'NotificationType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GDateTime? get createdAt;
  String? get name;
  static Serializer<GAppNotificationsData_appNotifications_notificationType>
      get serializer =>
          _$gAppNotificationsDataAppNotificationsNotificationTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppNotificationsData_appNotifications_notificationType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppNotificationsData_appNotifications_notificationType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppNotificationsData_appNotifications_notificationType.serializer,
        json,
      );
}
