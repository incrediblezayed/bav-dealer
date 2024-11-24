// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'notifications.var.gql.g.dart';

abstract class GAppNotificationsVars
    implements Built<GAppNotificationsVars, GAppNotificationsVarsBuilder> {
  GAppNotificationsVars._();

  factory GAppNotificationsVars(
          [void Function(GAppNotificationsVarsBuilder b) updates]) =
      _$GAppNotificationsVars;

  static Serializer<GAppNotificationsVars> get serializer =>
      _$gAppNotificationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppNotificationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppNotificationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppNotificationsVars.serializer,
        json,
      );
}

abstract class GUserDeviceRegistrationVars
    implements
        Built<GUserDeviceRegistrationVars, GUserDeviceRegistrationVarsBuilder> {
  GUserDeviceRegistrationVars._();

  factory GUserDeviceRegistrationVars(
          [void Function(GUserDeviceRegistrationVarsBuilder b) updates]) =
      _$GUserDeviceRegistrationVars;

  _i2.GFirebaseDeviceTokenCreateInput get data;
  static Serializer<GUserDeviceRegistrationVars> get serializer =>
      _$gUserDeviceRegistrationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserDeviceRegistrationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserDeviceRegistrationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserDeviceRegistrationVars.serializer,
        json,
      );
}
