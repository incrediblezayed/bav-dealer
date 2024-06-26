// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'report.var.gql.g.dart';

abstract class GCreateReportVars
    implements Built<GCreateReportVars, GCreateReportVarsBuilder> {
  GCreateReportVars._();

  factory GCreateReportVars(
          [void Function(GCreateReportVarsBuilder b) updates]) =
      _$GCreateReportVars;

  _i1.GReportCreateInput get data;
  static Serializer<GCreateReportVars> get serializer =>
      _$gCreateReportVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateReportVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateReportVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateReportVars.serializer,
        json,
      );
}

abstract class GCreateFeedbackVars
    implements Built<GCreateFeedbackVars, GCreateFeedbackVarsBuilder> {
  GCreateFeedbackVars._();

  factory GCreateFeedbackVars(
          [void Function(GCreateFeedbackVarsBuilder b) updates]) =
      _$GCreateFeedbackVars;

  _i1.GFeedbackCreateInput get data;
  static Serializer<GCreateFeedbackVars> get serializer =>
      _$gCreateFeedbackVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateFeedbackVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateFeedbackVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateFeedbackVars.serializer,
        json,
      );
}

abstract class GCategoriesVars
    implements Built<GCategoriesVars, GCategoriesVarsBuilder> {
  GCategoriesVars._();

  factory GCategoriesVars([void Function(GCategoriesVarsBuilder b) updates]) =
      _$GCategoriesVars;

  static Serializer<GCategoriesVars> get serializer =>
      _$gCategoriesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoriesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCategoriesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoriesVars.serializer,
        json,
      );
}
