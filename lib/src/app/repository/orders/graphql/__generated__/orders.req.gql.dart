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

abstract class GProductOrdersReq
    implements
        Built<GProductOrdersReq, GProductOrdersReqBuilder>,
        _i1.OperationRequest<_i2.GProductOrdersData, _i3.GProductOrdersVars> {
  GProductOrdersReq._();

  factory GProductOrdersReq(
          [void Function(GProductOrdersReqBuilder b) updates]) =
      _$GProductOrdersReq;

  static void _initializeBuilder(GProductOrdersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductOrders',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductOrdersVars get vars;
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
  _i2.GProductOrdersData? Function(
    _i2.GProductOrdersData?,
    _i2.GProductOrdersData?,
  )? get updateResult;
  @override
  _i2.GProductOrdersData? get optimisticResponse;
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
  _i2.GProductOrdersData? parseData(Map<String, dynamic> json) =>
      _i2.GProductOrdersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductOrdersData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductOrdersData, _i3.GProductOrdersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductOrdersReq> get serializer =>
      _$gProductOrdersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductOrdersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrdersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductOrdersReq.serializer,
        json,
      );
}

abstract class GVehicleOrdersReq
    implements
        Built<GVehicleOrdersReq, GVehicleOrdersReqBuilder>,
        _i1.OperationRequest<_i2.GVehicleOrdersData, _i3.GVehicleOrdersVars> {
  GVehicleOrdersReq._();

  factory GVehicleOrdersReq(
          [void Function(GVehicleOrdersReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GVehicleOrdersData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleOrdersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GVehicleOrdersData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GVehicleOrdersData, _i3.GVehicleOrdersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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
          [void Function(GTestDriveOrdersReqBuilder b) updates]) =
      _$GTestDriveOrdersReq;

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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GTestDriveOrdersData? parseData(Map<String, dynamic> json) =>
      _i2.GTestDriveOrdersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GTestDriveOrdersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GTestDriveOrdersData, _i3.GTestDriveOrdersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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

abstract class GUpdateProductOrderReq
    implements
        Built<GUpdateProductOrderReq, GUpdateProductOrderReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateProductOrderData,
            _i3.GUpdateProductOrderVars> {
  GUpdateProductOrderReq._();

  factory GUpdateProductOrderReq(
          [void Function(GUpdateProductOrderReqBuilder b) updates]) =
      _$GUpdateProductOrderReq;

  static void _initializeBuilder(GUpdateProductOrderReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateProductOrder',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateProductOrderVars get vars;
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
  _i2.GUpdateProductOrderData? Function(
    _i2.GUpdateProductOrderData?,
    _i2.GUpdateProductOrderData?,
  )? get updateResult;
  @override
  _i2.GUpdateProductOrderData? get optimisticResponse;
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
  _i2.GUpdateProductOrderData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateProductOrderData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateProductOrderData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateProductOrderData, _i3.GUpdateProductOrderVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateProductOrderReq> get serializer =>
      _$gUpdateProductOrderReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateProductOrderReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductOrderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateProductOrderReq.serializer,
        json,
      );
}

abstract class GUpdateVehicleOrderReq
    implements
        Built<GUpdateVehicleOrderReq, GUpdateVehicleOrderReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateVehicleOrderData,
            _i3.GUpdateVehicleOrderVars> {
  GUpdateVehicleOrderReq._();

  factory GUpdateVehicleOrderReq(
          [void Function(GUpdateVehicleOrderReqBuilder b) updates]) =
      _$GUpdateVehicleOrderReq;

  static void _initializeBuilder(GUpdateVehicleOrderReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateVehicleOrder',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateVehicleOrderVars get vars;
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
  _i2.GUpdateVehicleOrderData? Function(
    _i2.GUpdateVehicleOrderData?,
    _i2.GUpdateVehicleOrderData?,
  )? get updateResult;
  @override
  _i2.GUpdateVehicleOrderData? get optimisticResponse;
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
  _i2.GUpdateVehicleOrderData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateVehicleOrderData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateVehicleOrderData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateVehicleOrderData, _i3.GUpdateVehicleOrderVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateVehicleOrderReq> get serializer =>
      _$gUpdateVehicleOrderReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateVehicleOrderReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleOrderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateVehicleOrderReq.serializer,
        json,
      );
}

abstract class GUpdateTestDriveOrderReq
    implements
        Built<GUpdateTestDriveOrderReq, GUpdateTestDriveOrderReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateTestDriveOrderData,
            _i3.GUpdateTestDriveOrderVars> {
  GUpdateTestDriveOrderReq._();

  factory GUpdateTestDriveOrderReq(
          [void Function(GUpdateTestDriveOrderReqBuilder b) updates]) =
      _$GUpdateTestDriveOrderReq;

  static void _initializeBuilder(GUpdateTestDriveOrderReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateTestDriveOrder',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateTestDriveOrderVars get vars;
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
  _i2.GUpdateTestDriveOrderData? Function(
    _i2.GUpdateTestDriveOrderData?,
    _i2.GUpdateTestDriveOrderData?,
  )? get updateResult;
  @override
  _i2.GUpdateTestDriveOrderData? get optimisticResponse;
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
  _i2.GUpdateTestDriveOrderData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateTestDriveOrderData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateTestDriveOrderData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateTestDriveOrderData,
      _i3.GUpdateTestDriveOrderVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateTestDriveOrderReq> get serializer =>
      _$gUpdateTestDriveOrderReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateTestDriveOrderReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTestDriveOrderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateTestDriveOrderReq.serializer,
        json,
      );
}

abstract class GCreateOrderRejectionByDealerReq
    implements
        Built<GCreateOrderRejectionByDealerReq,
            GCreateOrderRejectionByDealerReqBuilder>,
        _i1.OperationRequest<_i2.GCreateOrderRejectionByDealerData,
            _i3.GCreateOrderRejectionByDealerVars> {
  GCreateOrderRejectionByDealerReq._();

  factory GCreateOrderRejectionByDealerReq(
          [void Function(GCreateOrderRejectionByDealerReqBuilder b) updates]) =
      _$GCreateOrderRejectionByDealerReq;

  static void _initializeBuilder(GCreateOrderRejectionByDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateOrderRejectionByDealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateOrderRejectionByDealerVars get vars;
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
  _i2.GCreateOrderRejectionByDealerData? Function(
    _i2.GCreateOrderRejectionByDealerData?,
    _i2.GCreateOrderRejectionByDealerData?,
  )? get updateResult;
  @override
  _i2.GCreateOrderRejectionByDealerData? get optimisticResponse;
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
  _i2.GCreateOrderRejectionByDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateOrderRejectionByDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateOrderRejectionByDealerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateOrderRejectionByDealerData,
      _i3.GCreateOrderRejectionByDealerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateOrderRejectionByDealerReq> get serializer =>
      _$gCreateOrderRejectionByDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateOrderRejectionByDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateOrderRejectionByDealerReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateOrderRejectionByDealerReq.serializer,
        json,
      );
}
