// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.ast.gql.dart'
    as _i5;
import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.data.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'notifications.req.gql.g.dart';

abstract class GAppNotificationsReq
    implements
        Built<GAppNotificationsReq, GAppNotificationsReqBuilder>,
        _i1.OperationRequest<_i2.GAppNotificationsData,
            _i3.GAppNotificationsVars> {
  GAppNotificationsReq._();

  factory GAppNotificationsReq(
          [void Function(GAppNotificationsReqBuilder b) updates]) =
      _$GAppNotificationsReq;

  static void _initializeBuilder(GAppNotificationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AppNotifications',
    )
    ..executeOnListen = true;

  @override
  _i3.GAppNotificationsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAppNotificationsData? Function(
    _i2.GAppNotificationsData?,
    _i2.GAppNotificationsData?,
  )? get updateResult;
  @override
  _i2.GAppNotificationsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GAppNotificationsData? parseData(Map<String, dynamic> json) =>
      _i2.GAppNotificationsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAppNotificationsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GAppNotificationsData, _i3.GAppNotificationsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAppNotificationsReq> get serializer =>
      _$gAppNotificationsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAppNotificationsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppNotificationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAppNotificationsReq.serializer,
        json,
      );
}
