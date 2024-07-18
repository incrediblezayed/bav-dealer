// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'orders.var.gql.g.dart';

abstract class GProductOrdersVars
    implements Built<GProductOrdersVars, GProductOrdersVarsBuilder> {
  GProductOrdersVars._();

  factory GProductOrdersVars(
          [void Function(GProductOrdersVarsBuilder b) updates]) =
      _$GProductOrdersVars;

  _i1.GProductOrderWhereInput get where;
  BuiltList<_i1.GProductOrderOrderByInput> get orderBy;
  int get skip;
  int get take;
  static Serializer<GProductOrdersVars> get serializer =>
      _$gProductOrdersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrdersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrdersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrdersVars.serializer,
        json,
      );
}

abstract class GVehicleOrdersVars
    implements Built<GVehicleOrdersVars, GVehicleOrdersVarsBuilder> {
  GVehicleOrdersVars._();

  factory GVehicleOrdersVars(
          [void Function(GVehicleOrdersVarsBuilder b) updates]) =
      _$GVehicleOrdersVars;

  BuiltList<_i1.GVehicleOrderOrderByInput> get orderBy;
  _i1.GVehicleOrderWhereInput get where;
  int get skip;
  int get take;
  static Serializer<GVehicleOrdersVars> get serializer =>
      _$gVehicleOrdersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrdersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrdersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrdersVars.serializer,
        json,
      );
}

abstract class GVehicleOrdersCountVars
    implements Built<GVehicleOrdersCountVars, GVehicleOrdersCountVarsBuilder> {
  GVehicleOrdersCountVars._();

  factory GVehicleOrdersCountVars(
          [void Function(GVehicleOrdersCountVarsBuilder b) updates]) =
      _$GVehicleOrdersCountVars;

  _i1.GVehicleOrderWhereInput get where;
  static Serializer<GVehicleOrdersCountVars> get serializer =>
      _$gVehicleOrdersCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrdersCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrdersCountVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrdersCountVars.serializer,
        json,
      );
}

abstract class GTestDriveOrdersVars
    implements Built<GTestDriveOrdersVars, GTestDriveOrdersVarsBuilder> {
  GTestDriveOrdersVars._();

  factory GTestDriveOrdersVars(
          [void Function(GTestDriveOrdersVarsBuilder b) updates]) =
      _$GTestDriveOrdersVars;

  _i1.GTestDriveOrderWhereInput get where;
  BuiltList<_i1.GTestDriveOrderOrderByInput> get orderBy;
  int get skip;
  int get take;
  static Serializer<GTestDriveOrdersVars> get serializer =>
      _$gTestDriveOrdersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrdersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveOrdersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrdersVars.serializer,
        json,
      );
}

abstract class GTestDriveOrdersCountVars
    implements
        Built<GTestDriveOrdersCountVars, GTestDriveOrdersCountVarsBuilder> {
  GTestDriveOrdersCountVars._();

  factory GTestDriveOrdersCountVars(
          [void Function(GTestDriveOrdersCountVarsBuilder b) updates]) =
      _$GTestDriveOrdersCountVars;

  _i1.GTestDriveOrderWhereInput get where;
  static Serializer<GTestDriveOrdersCountVars> get serializer =>
      _$gTestDriveOrdersCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrdersCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveOrdersCountVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrdersCountVars.serializer,
        json,
      );
}

abstract class GUpdateProductOrderVars
    implements Built<GUpdateProductOrderVars, GUpdateProductOrderVarsBuilder> {
  GUpdateProductOrderVars._();

  factory GUpdateProductOrderVars(
          [void Function(GUpdateProductOrderVarsBuilder b) updates]) =
      _$GUpdateProductOrderVars;

  _i1.GProductOrderWhereUniqueInput get where;
  _i1.GProductOrderUpdateInput get data;
  static Serializer<GUpdateProductOrderVars> get serializer =>
      _$gUpdateProductOrderVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateProductOrderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductOrderVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateProductOrderVars.serializer,
        json,
      );
}

abstract class GUpdateVehicleOrderVars
    implements Built<GUpdateVehicleOrderVars, GUpdateVehicleOrderVarsBuilder> {
  GUpdateVehicleOrderVars._();

  factory GUpdateVehicleOrderVars(
          [void Function(GUpdateVehicleOrderVarsBuilder b) updates]) =
      _$GUpdateVehicleOrderVars;

  _i1.GVehicleOrderWhereUniqueInput get where;
  _i1.GVehicleOrderUpdateInput get data;
  static Serializer<GUpdateVehicleOrderVars> get serializer =>
      _$gUpdateVehicleOrderVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateVehicleOrderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleOrderVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateVehicleOrderVars.serializer,
        json,
      );
}

abstract class GUpdateTestDriveOrderVars
    implements
        Built<GUpdateTestDriveOrderVars, GUpdateTestDriveOrderVarsBuilder> {
  GUpdateTestDriveOrderVars._();

  factory GUpdateTestDriveOrderVars(
          [void Function(GUpdateTestDriveOrderVarsBuilder b) updates]) =
      _$GUpdateTestDriveOrderVars;

  _i1.GTestDriveOrderWhereUniqueInput get where;
  _i1.GTestDriveOrderUpdateInput get data;
  static Serializer<GUpdateTestDriveOrderVars> get serializer =>
      _$gUpdateTestDriveOrderVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateTestDriveOrderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTestDriveOrderVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateTestDriveOrderVars.serializer,
        json,
      );
}

abstract class GCreateOrderRejectionByDealerVars
    implements
        Built<GCreateOrderRejectionByDealerVars,
            GCreateOrderRejectionByDealerVarsBuilder> {
  GCreateOrderRejectionByDealerVars._();

  factory GCreateOrderRejectionByDealerVars(
          [void Function(GCreateOrderRejectionByDealerVarsBuilder b) updates]) =
      _$GCreateOrderRejectionByDealerVars;

  _i1.GOrderRejectionByDealerCreateInput get data;
  static Serializer<GCreateOrderRejectionByDealerVars> get serializer =>
      _$gCreateOrderRejectionByDealerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateOrderRejectionByDealerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateOrderRejectionByDealerVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateOrderRejectionByDealerVars.serializer,
        json,
      );
}
