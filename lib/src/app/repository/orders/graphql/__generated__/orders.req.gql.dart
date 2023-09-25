// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.ast.gql.dart'
    as _i5;
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'orders.req.gql.g.dart';

abstract class GVehicleOrdersReq
    implements
        Built<GVehicleOrdersReq, GVehicleOrdersReqBuilder>,
        _i1.OperationRequest<_i2.GVehicleOrdersData, _i3.GVehicleOrdersVars> {
  GVehicleOrdersReq._();

  factory GVehicleOrdersReq([Function(GVehicleOrdersReqBuilder b) updates]) =
      _$GVehicleOrdersReq;

  static void _initializeBuilder(GVehicleOrdersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VehicleOrders',
    )
    ..executeOnListen = true;
  @override
  _i3.GVehicleOrdersVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GVehicleOrdersData? Function(
    _i2.GVehicleOrdersData?,
    _i2.GVehicleOrdersData?,
  )? get updateResult;
  @override
  _i2.GVehicleOrdersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GVehicleOrdersData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleOrdersData.fromJson(json);
  static Serializer<GVehicleOrdersReq> get serializer =>
      _$gVehicleOrdersReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVehicleOrdersReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVehicleOrdersReq.serializer,
        json,
      );
}

abstract class GTestDriveOrdersReq
    implements
        Built<GTestDriveOrdersReq, GTestDriveOrdersReqBuilder>,
        _i1
        .OperationRequest<_i2.GTestDriveOrdersData, _i3.GTestDriveOrdersVars> {
  GTestDriveOrdersReq._();

  factory GTestDriveOrdersReq(
      [Function(GTestDriveOrdersReqBuilder b) updates]) = _$GTestDriveOrdersReq;

  static void _initializeBuilder(GTestDriveOrdersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'TestDriveOrders',
    )
    ..executeOnListen = true;
  @override
  _i3.GTestDriveOrdersVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GTestDriveOrdersData? Function(
    _i2.GTestDriveOrdersData?,
    _i2.GTestDriveOrdersData?,
  )? get updateResult;
  @override
  _i2.GTestDriveOrdersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GTestDriveOrdersData? parseData(Map<String, dynamic> json) =>
      _i2.GTestDriveOrdersData.fromJson(json);
  static Serializer<GTestDriveOrdersReq> get serializer =>
      _$gTestDriveOrdersReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTestDriveOrdersReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTestDriveOrdersReq.serializer,
        json,
      );
}
