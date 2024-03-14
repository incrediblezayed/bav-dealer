// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'guarantees.data.gql.g.dart';

abstract class GGuaranteesData
    implements Built<GGuaranteesData, GGuaranteesDataBuilder> {
  GGuaranteesData._();

  factory GGuaranteesData([Function(GGuaranteesDataBuilder b) updates]) =
      _$GGuaranteesData;

  static void _initializeBuilder(GGuaranteesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGuaranteesData_guarantees>? get guarantees;
  static Serializer<GGuaranteesData> get serializer =>
      _$gGuaranteesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGuaranteesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGuaranteesData.serializer,
        json,
      );
}

abstract class GGuaranteesData_guarantees
    implements
        Built<GGuaranteesData_guarantees, GGuaranteesData_guaranteesBuilder> {
  GGuaranteesData_guarantees._();

  factory GGuaranteesData_guarantees(
          [Function(GGuaranteesData_guaranteesBuilder b) updates]) =
      _$GGuaranteesData_guarantees;

  static void _initializeBuilder(GGuaranteesData_guaranteesBuilder b) =>
      b..G__typename = 'Guarantees';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GGuaranteesData_guarantees> get serializer =>
      _$gGuaranteesDataGuaranteesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGuaranteesData_guarantees.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteesData_guarantees? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGuaranteesData_guarantees.serializer,
        json,
      );
}
