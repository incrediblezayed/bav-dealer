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

abstract class GVehicleOrdersVars
    implements Built<GVehicleOrdersVars, GVehicleOrdersVarsBuilder> {
  GVehicleOrdersVars._();

  factory GVehicleOrdersVars([Function(GVehicleOrdersVarsBuilder b) updates]) =
      _$GVehicleOrdersVars;

  BuiltList<_i1.GVehicleOrderOrderByInput> get orderBy;
  _i1.GVehicleOrderWhereInput get where;
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

abstract class GTestDriveOrdersVars
    implements Built<GTestDriveOrdersVars, GTestDriveOrdersVarsBuilder> {
  GTestDriveOrdersVars._();

  factory GTestDriveOrdersVars(
          [Function(GTestDriveOrdersVarsBuilder b) updates]) =
      _$GTestDriveOrdersVars;

  _i1.GTestDriveOrderWhereInput get where;
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

abstract class GUpdateVehicleOrderVars
    implements Built<GUpdateVehicleOrderVars, GUpdateVehicleOrderVarsBuilder> {
  GUpdateVehicleOrderVars._();

  factory GUpdateVehicleOrderVars(
          [Function(GUpdateVehicleOrderVarsBuilder b) updates]) =
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

abstract class GCreateOrderRejectionByDealerVars
    implements
        Built<GCreateOrderRejectionByDealerVars,
            GCreateOrderRejectionByDealerVarsBuilder> {
  GCreateOrderRejectionByDealerVars._();

  factory GCreateOrderRejectionByDealerVars(
          [Function(GCreateOrderRejectionByDealerVarsBuilder b) updates]) =
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
