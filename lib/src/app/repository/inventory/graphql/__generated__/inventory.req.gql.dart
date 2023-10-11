// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.ast.gql.dart'
    as _i5;
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'inventory.req.gql.g.dart';

abstract class GVehiclesReq
    implements
        Built<GVehiclesReq, GVehiclesReqBuilder>,
        _i1.OperationRequest<_i2.GVehiclesData, _i3.GVehiclesVars> {
  GVehiclesReq._();

  factory GVehiclesReq([Function(GVehiclesReqBuilder b) updates]) =
      _$GVehiclesReq;

  static void _initializeBuilder(GVehiclesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Vehicles',
    )
    ..executeOnListen = true;
  @override
  _i3.GVehiclesVars get vars;
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
  _i2.GVehiclesData? Function(
    _i2.GVehiclesData?,
    _i2.GVehiclesData?,
  )? get updateResult;
  @override
  _i2.GVehiclesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GVehiclesData? parseData(Map<String, dynamic> json) =>
      _i2.GVehiclesData.fromJson(json);
  static Serializer<GVehiclesReq> get serializer => _$gVehiclesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVehiclesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVehiclesReq.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerStockRequestReq
    implements
        Built<GCreateVehicleDealerStockRequestReq,
            GCreateVehicleDealerStockRequestReqBuilder>,
        _i1.OperationRequest<_i2.GCreateVehicleDealerStockRequestData,
            _i3.GCreateVehicleDealerStockRequestVars> {
  GCreateVehicleDealerStockRequestReq._();

  factory GCreateVehicleDealerStockRequestReq(
          [Function(GCreateVehicleDealerStockRequestReqBuilder b) updates]) =
      _$GCreateVehicleDealerStockRequestReq;

  static void _initializeBuilder(
          GCreateVehicleDealerStockRequestReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'CreateVehicleDealerStockRequest',
        )
        ..executeOnListen = true;
  @override
  _i3.GCreateVehicleDealerStockRequestVars get vars;
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
  _i2.GCreateVehicleDealerStockRequestData? Function(
    _i2.GCreateVehicleDealerStockRequestData?,
    _i2.GCreateVehicleDealerStockRequestData?,
  )? get updateResult;
  @override
  _i2.GCreateVehicleDealerStockRequestData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateVehicleDealerStockRequestData? parseData(
          Map<String, dynamic> json) =>
      _i2.GCreateVehicleDealerStockRequestData.fromJson(json);
  static Serializer<GCreateVehicleDealerStockRequestReq> get serializer =>
      _$gCreateVehicleDealerStockRequestReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateVehicleDealerStockRequestReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVehicleDealerStockRequestReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateVehicleDealerStockRequestReq.serializer,
        json,
      );
}

abstract class GVehicleDealersReq
    implements
        Built<GVehicleDealersReq, GVehicleDealersReqBuilder>,
        _i1.OperationRequest<_i2.GVehicleDealersData, _i3.GVehicleDealersVars> {
  GVehicleDealersReq._();

  factory GVehicleDealersReq([Function(GVehicleDealersReqBuilder b) updates]) =
      _$GVehicleDealersReq;

  static void _initializeBuilder(GVehicleDealersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VehicleDealers',
    )
    ..executeOnListen = true;
  @override
  _i3.GVehicleDealersVars get vars;
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
  _i2.GVehicleDealersData? Function(
    _i2.GVehicleDealersData?,
    _i2.GVehicleDealersData?,
  )? get updateResult;
  @override
  _i2.GVehicleDealersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GVehicleDealersData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleDealersData.fromJson(json);
  static Serializer<GVehicleDealersReq> get serializer =>
      _$gVehicleDealersReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVehicleDealersReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVehicleDealersReq.serializer,
        json,
      );
}
