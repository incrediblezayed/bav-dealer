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

abstract class GProductVariantsReq
    implements
        Built<GProductVariantsReq, GProductVariantsReqBuilder>,
        _i1
        .OperationRequest<_i2.GProductVariantsData, _i3.GProductVariantsVars> {
  GProductVariantsReq._();

  factory GProductVariantsReq(
          [void Function(GProductVariantsReqBuilder b) updates]) =
      _$GProductVariantsReq;

  static void _initializeBuilder(GProductVariantsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductVariants',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductVariantsVars get vars;
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
  _i2.GProductVariantsData? Function(
    _i2.GProductVariantsData?,
    _i2.GProductVariantsData?,
  )? get updateResult;
  @override
  _i2.GProductVariantsData? get optimisticResponse;
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
  _i2.GProductVariantsData? parseData(Map<String, dynamic> json) =>
      _i2.GProductVariantsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductVariantsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductVariantsData, _i3.GProductVariantsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductVariantsReq> get serializer =>
      _$gProductVariantsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductVariantsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductVariantsReq.serializer,
        json,
      );
}

abstract class GProductVariantsCountReq
    implements
        Built<GProductVariantsCountReq, GProductVariantsCountReqBuilder>,
        _i1.OperationRequest<_i2.GProductVariantsCountData,
            _i3.GProductVariantsCountVars> {
  GProductVariantsCountReq._();

  factory GProductVariantsCountReq(
          [void Function(GProductVariantsCountReqBuilder b) updates]) =
      _$GProductVariantsCountReq;

  static void _initializeBuilder(GProductVariantsCountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductVariantsCount',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductVariantsCountVars get vars;
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
  _i2.GProductVariantsCountData? Function(
    _i2.GProductVariantsCountData?,
    _i2.GProductVariantsCountData?,
  )? get updateResult;
  @override
  _i2.GProductVariantsCountData? get optimisticResponse;
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
  _i2.GProductVariantsCountData? parseData(Map<String, dynamic> json) =>
      _i2.GProductVariantsCountData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductVariantsCountData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductVariantsCountData,
      _i3.GProductVariantsCountVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductVariantsCountReq> get serializer =>
      _$gProductVariantsCountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductVariantsCountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsCountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductVariantsCountReq.serializer,
        json,
      );
}

abstract class GProductVariantReq
    implements
        Built<GProductVariantReq, GProductVariantReqBuilder>,
        _i1.OperationRequest<_i2.GProductVariantData, _i3.GProductVariantVars> {
  GProductVariantReq._();

  factory GProductVariantReq(
          [void Function(GProductVariantReqBuilder b) updates]) =
      _$GProductVariantReq;

  static void _initializeBuilder(GProductVariantReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductVariant',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductVariantVars get vars;
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
  _i2.GProductVariantData? Function(
    _i2.GProductVariantData?,
    _i2.GProductVariantData?,
  )? get updateResult;
  @override
  _i2.GProductVariantData? get optimisticResponse;
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
  _i2.GProductVariantData? parseData(Map<String, dynamic> json) =>
      _i2.GProductVariantData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductVariantData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductVariantData, _i3.GProductVariantVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductVariantReq> get serializer =>
      _$gProductVariantReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductVariantReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductVariantReq.serializer,
        json,
      );
}

abstract class GProductTypesReq
    implements
        Built<GProductTypesReq, GProductTypesReqBuilder>,
        _i1.OperationRequest<_i2.GProductTypesData, _i3.GProductTypesVars> {
  GProductTypesReq._();

  factory GProductTypesReq([void Function(GProductTypesReqBuilder b) updates]) =
      _$GProductTypesReq;

  static void _initializeBuilder(GProductTypesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductTypes',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductTypesVars get vars;
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
  _i2.GProductTypesData? Function(
    _i2.GProductTypesData?,
    _i2.GProductTypesData?,
  )? get updateResult;
  @override
  _i2.GProductTypesData? get optimisticResponse;
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
  _i2.GProductTypesData? parseData(Map<String, dynamic> json) =>
      _i2.GProductTypesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductTypesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductTypesData, _i3.GProductTypesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductTypesReq> get serializer =>
      _$gProductTypesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductTypesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductTypesReq.serializer,
        json,
      );
}

abstract class GVehicleVariantsReq
    implements
        Built<GVehicleVariantsReq, GVehicleVariantsReqBuilder>,
        _i1
        .OperationRequest<_i2.GVehicleVariantsData, _i3.GVehicleVariantsVars> {
  GVehicleVariantsReq._();

  factory GVehicleVariantsReq(
          [void Function(GVehicleVariantsReqBuilder b) updates]) =
      _$GVehicleVariantsReq;

  static void _initializeBuilder(GVehicleVariantsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VehicleVariants',
    )
    ..executeOnListen = true;

  @override
  _i3.GVehicleVariantsVars get vars;
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
  _i2.GVehicleVariantsData? Function(
    _i2.GVehicleVariantsData?,
    _i2.GVehicleVariantsData?,
  )? get updateResult;
  @override
  _i2.GVehicleVariantsData? get optimisticResponse;
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
  _i2.GVehicleVariantsData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleVariantsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GVehicleVariantsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GVehicleVariantsData, _i3.GVehicleVariantsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GVehicleVariantsReq> get serializer =>
      _$gVehicleVariantsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVehicleVariantsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVehicleVariantsReq.serializer,
        json,
      );
}

abstract class GVehicleVariantsCountReq
    implements
        Built<GVehicleVariantsCountReq, GVehicleVariantsCountReqBuilder>,
        _i1.OperationRequest<_i2.GVehicleVariantsCountData,
            _i3.GVehicleVariantsCountVars> {
  GVehicleVariantsCountReq._();

  factory GVehicleVariantsCountReq(
          [void Function(GVehicleVariantsCountReqBuilder b) updates]) =
      _$GVehicleVariantsCountReq;

  static void _initializeBuilder(GVehicleVariantsCountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VehicleVariantsCount',
    )
    ..executeOnListen = true;

  @override
  _i3.GVehicleVariantsCountVars get vars;
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
  _i2.GVehicleVariantsCountData? Function(
    _i2.GVehicleVariantsCountData?,
    _i2.GVehicleVariantsCountData?,
  )? get updateResult;
  @override
  _i2.GVehicleVariantsCountData? get optimisticResponse;
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
  _i2.GVehicleVariantsCountData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleVariantsCountData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GVehicleVariantsCountData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GVehicleVariantsCountData,
      _i3.GVehicleVariantsCountVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GVehicleVariantsCountReq> get serializer =>
      _$gVehicleVariantsCountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVehicleVariantsCountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsCountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVehicleVariantsCountReq.serializer,
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
      [void Function(GCreateVehicleDealerStockRequestReqBuilder b)
          updates]) = _$GCreateVehicleDealerStockRequestReq;

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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GCreateVehicleDealerStockRequestData? parseData(
          Map<String, dynamic> json) =>
      _i2.GCreateVehicleDealerStockRequestData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GCreateVehicleDealerStockRequestData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateVehicleDealerStockRequestData,
      _i3.GCreateVehicleDealerStockRequestVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

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

  factory GVehicleDealersReq(
          [void Function(GVehicleDealersReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GVehicleDealersData? parseData(Map<String, dynamic> json) =>
      _i2.GVehicleDealersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GVehicleDealersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GVehicleDealersData, _i3.GVehicleDealersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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

abstract class GCreateVehicleDealerReq
    implements
        Built<GCreateVehicleDealerReq, GCreateVehicleDealerReqBuilder>,
        _i1.OperationRequest<_i2.GCreateVehicleDealerData,
            _i3.GCreateVehicleDealerVars> {
  GCreateVehicleDealerReq._();

  factory GCreateVehicleDealerReq(
          [void Function(GCreateVehicleDealerReqBuilder b) updates]) =
      _$GCreateVehicleDealerReq;

  static void _initializeBuilder(GCreateVehicleDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateVehicleDealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateVehicleDealerVars get vars;
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
  _i2.GCreateVehicleDealerData? Function(
    _i2.GCreateVehicleDealerData?,
    _i2.GCreateVehicleDealerData?,
  )? get updateResult;
  @override
  _i2.GCreateVehicleDealerData? get optimisticResponse;
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
  _i2.GCreateVehicleDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateVehicleDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateVehicleDealerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateVehicleDealerData,
      _i3.GCreateVehicleDealerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateVehicleDealerReq> get serializer =>
      _$gCreateVehicleDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateVehicleDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateVehicleDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateVehicleDealerReq.serializer,
        json,
      );
}

abstract class GPriceCategoriesReq
    implements
        Built<GPriceCategoriesReq, GPriceCategoriesReqBuilder>,
        _i1
        .OperationRequest<_i2.GPriceCategoriesData, _i3.GPriceCategoriesVars> {
  GPriceCategoriesReq._();

  factory GPriceCategoriesReq(
          [void Function(GPriceCategoriesReqBuilder b) updates]) =
      _$GPriceCategoriesReq;

  static void _initializeBuilder(GPriceCategoriesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PriceCategories',
    )
    ..executeOnListen = true;

  @override
  _i3.GPriceCategoriesVars get vars;
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
  _i2.GPriceCategoriesData? Function(
    _i2.GPriceCategoriesData?,
    _i2.GPriceCategoriesData?,
  )? get updateResult;
  @override
  _i2.GPriceCategoriesData? get optimisticResponse;
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
  _i2.GPriceCategoriesData? parseData(Map<String, dynamic> json) =>
      _i2.GPriceCategoriesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GPriceCategoriesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GPriceCategoriesData, _i3.GPriceCategoriesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GPriceCategoriesReq> get serializer =>
      _$gPriceCategoriesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPriceCategoriesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPriceCategoriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPriceCategoriesReq.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerReq
    implements
        Built<GUpdateVehicleDealerReq, GUpdateVehicleDealerReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateVehicleDealerData,
            _i3.GUpdateVehicleDealerVars> {
  GUpdateVehicleDealerReq._();

  factory GUpdateVehicleDealerReq(
          [void Function(GUpdateVehicleDealerReqBuilder b) updates]) =
      _$GUpdateVehicleDealerReq;

  static void _initializeBuilder(GUpdateVehicleDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateVehicleDealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateVehicleDealerVars get vars;
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
  _i2.GUpdateVehicleDealerData? Function(
    _i2.GUpdateVehicleDealerData?,
    _i2.GUpdateVehicleDealerData?,
  )? get updateResult;
  @override
  _i2.GUpdateVehicleDealerData? get optimisticResponse;
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
  _i2.GUpdateVehicleDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateVehicleDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateVehicleDealerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateVehicleDealerData,
      _i3.GUpdateVehicleDealerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateVehicleDealerReq> get serializer =>
      _$gUpdateVehicleDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateVehicleDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateVehicleDealerReq.serializer,
        json,
      );
}

abstract class GUpdatePricesReq
    implements
        Built<GUpdatePricesReq, GUpdatePricesReqBuilder>,
        _i1.OperationRequest<_i2.GUpdatePricesData, _i3.GUpdatePricesVars> {
  GUpdatePricesReq._();

  factory GUpdatePricesReq([void Function(GUpdatePricesReqBuilder b) updates]) =
      _$GUpdatePricesReq;

  static void _initializeBuilder(GUpdatePricesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdatePrices',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdatePricesVars get vars;
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
  _i2.GUpdatePricesData? Function(
    _i2.GUpdatePricesData?,
    _i2.GUpdatePricesData?,
  )? get updateResult;
  @override
  _i2.GUpdatePricesData? get optimisticResponse;
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
  _i2.GUpdatePricesData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdatePricesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdatePricesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdatePricesData, _i3.GUpdatePricesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdatePricesReq> get serializer =>
      _$gUpdatePricesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdatePricesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePricesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdatePricesReq.serializer,
        json,
      );
}

abstract class GTestDriveDealersReq
    implements
        Built<GTestDriveDealersReq, GTestDriveDealersReqBuilder>,
        _i1.OperationRequest<_i2.GTestDriveDealersData,
            _i3.GTestDriveDealersVars> {
  GTestDriveDealersReq._();

  factory GTestDriveDealersReq(
          [void Function(GTestDriveDealersReqBuilder b) updates]) =
      _$GTestDriveDealersReq;

  static void _initializeBuilder(GTestDriveDealersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'TestDriveDealers',
    )
    ..executeOnListen = true;

  @override
  _i3.GTestDriveDealersVars get vars;
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
  _i2.GTestDriveDealersData? Function(
    _i2.GTestDriveDealersData?,
    _i2.GTestDriveDealersData?,
  )? get updateResult;
  @override
  _i2.GTestDriveDealersData? get optimisticResponse;
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
  _i2.GTestDriveDealersData? parseData(Map<String, dynamic> json) =>
      _i2.GTestDriveDealersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GTestDriveDealersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GTestDriveDealersData, _i3.GTestDriveDealersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GTestDriveDealersReq> get serializer =>
      _$gTestDriveDealersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTestDriveDealersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTestDriveDealersReq.serializer,
        json,
      );
}

abstract class GUpdateTestDriveDealerReq
    implements
        Built<GUpdateTestDriveDealerReq, GUpdateTestDriveDealerReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateTestDriveDealerData,
            _i3.GUpdateTestDriveDealerVars> {
  GUpdateTestDriveDealerReq._();

  factory GUpdateTestDriveDealerReq(
          [void Function(GUpdateTestDriveDealerReqBuilder b) updates]) =
      _$GUpdateTestDriveDealerReq;

  static void _initializeBuilder(GUpdateTestDriveDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateTestDriveDealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateTestDriveDealerVars get vars;
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
  _i2.GUpdateTestDriveDealerData? Function(
    _i2.GUpdateTestDriveDealerData?,
    _i2.GUpdateTestDriveDealerData?,
  )? get updateResult;
  @override
  _i2.GUpdateTestDriveDealerData? get optimisticResponse;
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
  _i2.GUpdateTestDriveDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateTestDriveDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateTestDriveDealerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateTestDriveDealerData,
      _i3.GUpdateTestDriveDealerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateTestDriveDealerReq> get serializer =>
      _$gUpdateTestDriveDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateTestDriveDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTestDriveDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateTestDriveDealerReq.serializer,
        json,
      );
}

abstract class GCreateTestDriveDealerReq
    implements
        Built<GCreateTestDriveDealerReq, GCreateTestDriveDealerReqBuilder>,
        _i1.OperationRequest<_i2.GCreateTestDriveDealerData,
            _i3.GCreateTestDriveDealerVars> {
  GCreateTestDriveDealerReq._();

  factory GCreateTestDriveDealerReq(
          [void Function(GCreateTestDriveDealerReqBuilder b) updates]) =
      _$GCreateTestDriveDealerReq;

  static void _initializeBuilder(GCreateTestDriveDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateTestDriveDealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateTestDriveDealerVars get vars;
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
  _i2.GCreateTestDriveDealerData? Function(
    _i2.GCreateTestDriveDealerData?,
    _i2.GCreateTestDriveDealerData?,
  )? get updateResult;
  @override
  _i2.GCreateTestDriveDealerData? get optimisticResponse;
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
  _i2.GCreateTestDriveDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateTestDriveDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateTestDriveDealerData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateTestDriveDealerData,
      _i3.GCreateTestDriveDealerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateTestDriveDealerReq> get serializer =>
      _$gCreateTestDriveDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateTestDriveDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTestDriveDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateTestDriveDealerReq.serializer,
        json,
      );
}

abstract class GProductDealersReq
    implements
        Built<GProductDealersReq, GProductDealersReqBuilder>,
        _i1.OperationRequest<_i2.GProductDealersData, _i3.GProductDealersVars> {
  GProductDealersReq._();

  factory GProductDealersReq(
          [void Function(GProductDealersReqBuilder b) updates]) =
      _$GProductDealersReq;

  static void _initializeBuilder(GProductDealersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ProductDealers',
    )
    ..executeOnListen = true;

  @override
  _i3.GProductDealersVars get vars;
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
  _i2.GProductDealersData? Function(
    _i2.GProductDealersData?,
    _i2.GProductDealersData?,
  )? get updateResult;
  @override
  _i2.GProductDealersData? get optimisticResponse;
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
  _i2.GProductDealersData? parseData(Map<String, dynamic> json) =>
      _i2.GProductDealersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GProductDealersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GProductDealersData, _i3.GProductDealersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GProductDealersReq> get serializer =>
      _$gProductDealersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GProductDealersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GProductDealersReq.serializer,
        json,
      );
}
