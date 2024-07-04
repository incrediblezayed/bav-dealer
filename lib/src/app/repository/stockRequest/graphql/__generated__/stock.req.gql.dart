// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.ast.gql.dart'
    as _i5;
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.data.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'stock.req.gql.g.dart';

abstract class GProductDealerStockRequestsReq
    implements
        Built<GProductDealerStockRequestsReq,
            GProductDealerStockRequestsReqBuilder>,
        _i1.OperationRequest<_i2.GProductDealerStockRequestsData,
            _i3.GProductDealerStockRequestsVars> {
  GProductDealerStockRequestsReq._();

  factory GProductDealerStockRequestsReq(
          [void Function(GProductDealerStockRequestsReqBuilder b) updates]) =
      _$GProductDealerStockRequestsReq;

  static void _initializeBuilder(GProductDealerStockRequestsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductDealerStockRequests',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductDealerStockRequestsVars get vars;
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
  _i2.GProductDealerStockRequestsData? Function(
    _i2.GProductDealerStockRequestsData?,
    _i2.GProductDealerStockRequestsData?,
  )? get updateResult;
  @override
  _i2.GProductDealerStockRequestsData? get optimisticResponse;
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
  _i2.GProductDealerStockRequestsData? parseData(Map<String, dynamic> json) =>
      _i2.GProductDealerStockRequestsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductDealerStockRequestsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductDealerStockRequestsData,
      _i3.GProductDealerStockRequestsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductDealerStockRequestsReq> get serializer =>
      _$gProductDealerStockRequestsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductDealerStockRequestsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductDealerStockRequestsReq.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestsReq
    implements
        Built<GVehicleDealerStockRequestsReq,
            GVehicleDealerStockRequestsReqBuilder>,
        _i1.OperationRequest<_i2.GVehicleDealerStockRequestsData,
            _i3.GVehicleDealerStockRequestsVars> {
  GVehicleDealerStockRequestsReq._();

  factory GVehicleDealerStockRequestsReq(
          [void Function(GVehicleDealerStockRequestsReqBuilder b) updates]) =
      _$GVehicleDealerStockRequestsReq;

  static void _initializeBuilder(GVehicleDealerStockRequestsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VehicleDealerStockRequests',
    )
    ..executeOnListen = true;

  @override
  _i3.GVehicleDealerStockRequestsVars get vars;
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
  _i2.GVehicleDealerStockRequestsData? Function(
    _i2.GVehicleDealerStockRequestsData?,
    _i2.GVehicleDealerStockRequestsData?,
  )? get updateResult;
  @override
  _i2.GVehicleDealerStockRequestsData? get optimisticResponse;
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
  _i2.GVehicleDealerStockRequestsData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleDealerStockRequestsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GVehicleDealerStockRequestsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GVehicleDealerStockRequestsData,
      _i3.GVehicleDealerStockRequestsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GVehicleDealerStockRequestsReq> get serializer =>
      _$gVehicleDealerStockRequestsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVehicleDealerStockRequestsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVehicleDealerStockRequestsReq.serializer,
        json,
      );
}
