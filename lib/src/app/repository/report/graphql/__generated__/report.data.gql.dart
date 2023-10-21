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

part 'report.data.gql.g.dart';

abstract class GCreateReportData
    implements Built<GCreateReportData, GCreateReportDataBuilder> {
  GCreateReportData._();

  factory GCreateReportData([Function(GCreateReportDataBuilder b) updates]) =
      _$GCreateReportData;

  static void _initializeBuilder(GCreateReportDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateReportData_createReport? get createReport;
  static Serializer<GCreateReportData> get serializer =>
      _$gCreateReportDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateReportData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateReportData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateReportData.serializer,
        json,
      );
}

abstract class GCreateReportData_createReport
    implements
        Built<GCreateReportData_createReport,
            GCreateReportData_createReportBuilder> {
  GCreateReportData_createReport._();

  factory GCreateReportData_createReport(
          [Function(GCreateReportData_createReportBuilder b) updates]) =
      _$GCreateReportData_createReport;

  static void _initializeBuilder(GCreateReportData_createReportBuilder b) =>
      b..G__typename = 'Report';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateReportData_createReport> get serializer =>
      _$gCreateReportDataCreateReportSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateReportData_createReport.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateReportData_createReport? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateReportData_createReport.serializer,
        json,
      );
}

abstract class GCreateFeedbackData
    implements Built<GCreateFeedbackData, GCreateFeedbackDataBuilder> {
  GCreateFeedbackData._();

  factory GCreateFeedbackData(
      [Function(GCreateFeedbackDataBuilder b) updates]) = _$GCreateFeedbackData;

  static void _initializeBuilder(GCreateFeedbackDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateFeedbackData_createFeedback? get createFeedback;
  static Serializer<GCreateFeedbackData> get serializer =>
      _$gCreateFeedbackDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateFeedbackData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateFeedbackData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateFeedbackData.serializer,
        json,
      );
}

abstract class GCreateFeedbackData_createFeedback
    implements
        Built<GCreateFeedbackData_createFeedback,
            GCreateFeedbackData_createFeedbackBuilder> {
  GCreateFeedbackData_createFeedback._();

  factory GCreateFeedbackData_createFeedback(
          [Function(GCreateFeedbackData_createFeedbackBuilder b) updates]) =
      _$GCreateFeedbackData_createFeedback;

  static void _initializeBuilder(GCreateFeedbackData_createFeedbackBuilder b) =>
      b..G__typename = 'Feedback';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateFeedbackData_createFeedback> get serializer =>
      _$gCreateFeedbackDataCreateFeedbackSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateFeedbackData_createFeedback.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateFeedbackData_createFeedback? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateFeedbackData_createFeedback.serializer,
        json,
      );
}

abstract class GCategoriesData
    implements Built<GCategoriesData, GCategoriesDataBuilder> {
  GCategoriesData._();

  factory GCategoriesData([Function(GCategoriesDataBuilder b) updates]) =
      _$GCategoriesData;

  static void _initializeBuilder(GCategoriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GCategoriesData_categories>? get categories;
  static Serializer<GCategoriesData> get serializer =>
      _$gCategoriesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCategoriesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCategoriesData.serializer,
        json,
      );
}

abstract class GCategoriesData_categories
    implements
        Built<GCategoriesData_categories, GCategoriesData_categoriesBuilder> {
  GCategoriesData_categories._();

  factory GCategoriesData_categories(
          [Function(GCategoriesData_categoriesBuilder b) updates]) =
      _$GCategoriesData_categories;

  static void _initializeBuilder(GCategoriesData_categoriesBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i2.GDateTime? get createdAt;
  String? get description;
  static Serializer<GCategoriesData_categories> get serializer =>
      _$gCategoriesDataCategoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCategoriesData_categories.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoriesData_categories? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCategoriesData_categories.serializer,
        json,
      );
}
