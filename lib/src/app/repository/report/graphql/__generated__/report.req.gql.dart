// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.ast.gql.dart'
    as _i5;
import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.data.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.var.gql.dart'
    as _i3;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'report.req.gql.g.dart';

abstract class GCreateReportReq
    implements
        Built<GCreateReportReq, GCreateReportReqBuilder>,
        _i1.OperationRequest<_i2.GCreateReportData, _i3.GCreateReportVars> {
  GCreateReportReq._();

  factory GCreateReportReq([Function(GCreateReportReqBuilder b) updates]) =
      _$GCreateReportReq;

  static void _initializeBuilder(GCreateReportReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateReport',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreateReportVars get vars;
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
  _i2.GCreateReportData? Function(
    _i2.GCreateReportData?,
    _i2.GCreateReportData?,
  )? get updateResult;
  @override
  _i2.GCreateReportData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateReportData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateReportData.fromJson(json);
  @override
  Map<String, dynamic> varsToJson() => vars.toJson();
  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();
  @override
  _i1.OperationRequest<_i2.GCreateReportData, _i3.GCreateReportVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));
  static Serializer<GCreateReportReq> get serializer =>
      _$gCreateReportReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateReportReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateReportReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateReportReq.serializer,
        json,
      );
}

abstract class GCreateFeedbackReq
    implements
        Built<GCreateFeedbackReq, GCreateFeedbackReqBuilder>,
        _i1.OperationRequest<_i2.GCreateFeedbackData, _i3.GCreateFeedbackVars> {
  GCreateFeedbackReq._();

  factory GCreateFeedbackReq([Function(GCreateFeedbackReqBuilder b) updates]) =
      _$GCreateFeedbackReq;

  static void _initializeBuilder(GCreateFeedbackReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateFeedback',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreateFeedbackVars get vars;
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
  _i2.GCreateFeedbackData? Function(
    _i2.GCreateFeedbackData?,
    _i2.GCreateFeedbackData?,
  )? get updateResult;
  @override
  _i2.GCreateFeedbackData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateFeedbackData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateFeedbackData.fromJson(json);
  @override
  Map<String, dynamic> varsToJson() => vars.toJson();
  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();
  @override
  _i1.OperationRequest<_i2.GCreateFeedbackData, _i3.GCreateFeedbackVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));
  static Serializer<GCreateFeedbackReq> get serializer =>
      _$gCreateFeedbackReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateFeedbackReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateFeedbackReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateFeedbackReq.serializer,
        json,
      );
}

abstract class GCategoriesReq
    implements
        Built<GCategoriesReq, GCategoriesReqBuilder>,
        _i1.OperationRequest<_i2.GCategoriesData, _i3.GCategoriesVars> {
  GCategoriesReq._();

  factory GCategoriesReq([Function(GCategoriesReqBuilder b) updates]) =
      _$GCategoriesReq;

  static void _initializeBuilder(GCategoriesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Categories',
    )
    ..executeOnListen = true;
  @override
  _i3.GCategoriesVars get vars;
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
  _i2.GCategoriesData? Function(
    _i2.GCategoriesData?,
    _i2.GCategoriesData?,
  )? get updateResult;
  @override
  _i2.GCategoriesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCategoriesData? parseData(Map<String, dynamic> json) =>
      _i2.GCategoriesData.fromJson(json);
  @override
  Map<String, dynamic> varsToJson() => vars.toJson();
  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();
  @override
  _i1.OperationRequest<_i2.GCategoriesData, _i3.GCategoriesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));
  static Serializer<GCategoriesReq> get serializer =>
      _$gCategoriesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCategoriesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCategoriesReq.serializer,
        json,
      );
}
