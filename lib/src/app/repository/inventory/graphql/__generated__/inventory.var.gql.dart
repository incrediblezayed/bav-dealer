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

part 'inventory.var.gql.g.dart';

abstract class GVehicleVariantsVars
    implements Built<GVehicleVariantsVars, GVehicleVariantsVarsBuilder> {
  GVehicleVariantsVars._();

  factory GVehicleVariantsVars(
          [Function(GVehicleVariantsVarsBuilder b) updates]) =
      _$GVehicleVariantsVars;

  _i1.GVehicleVariantWhereInput get where;
  BuiltList<_i1.GVehicleVariantOrderByInput> get orderBy;
  static Serializer<GVehicleVariantsVars> get serializer =>
      _$gVehicleVariantsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantsVars.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerStockRequestVars
    implements
        Built<GCreateVehicleDealerStockRequestVars,
            GCreateVehicleDealerStockRequestVarsBuilder> {
  GCreateVehicleDealerStockRequestVars._();

  factory GCreateVehicleDealerStockRequestVars(
          [Function(GCreateVehicleDealerStockRequestVarsBuilder b) updates]) =
      _$GCreateVehicleDealerStockRequestVars;

  _i1.GVehicleDealerStockRequestCreateInput get data;
  static Serializer<GCreateVehicleDealerStockRequestVars> get serializer =>
      _$gCreateVehicleDealerStockRequestVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateVehicleDealerStockRequestVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateVehicleDealerStockRequestVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateVehicleDealerStockRequestVars.serializer,
        json,
      );
}

abstract class GVehicleDealersVars
    implements Built<GVehicleDealersVars, GVehicleDealersVarsBuilder> {
  GVehicleDealersVars._();

  factory GVehicleDealersVars(
      [Function(GVehicleDealersVarsBuilder b) updates]) = _$GVehicleDealersVars;

  _i1.GVehicleDealerWhereInput get where;
  static Serializer<GVehicleDealersVars> get serializer =>
      _$gVehicleDealersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealersVars.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerVars
    implements
        Built<GCreateVehicleDealerVars, GCreateVehicleDealerVarsBuilder> {
  GCreateVehicleDealerVars._();

  factory GCreateVehicleDealerVars(
          [Function(GCreateVehicleDealerVarsBuilder b) updates]) =
      _$GCreateVehicleDealerVars;

  _i1.GVehicleDealerCreateInput get data;
  static Serializer<GCreateVehicleDealerVars> get serializer =>
      _$gCreateVehicleDealerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateVehicleDealerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateVehicleDealerVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateVehicleDealerVars.serializer,
        json,
      );
}

abstract class GPriceCategoriesVars
    implements Built<GPriceCategoriesVars, GPriceCategoriesVarsBuilder> {
  GPriceCategoriesVars._();

  factory GPriceCategoriesVars(
          [Function(GPriceCategoriesVarsBuilder b) updates]) =
      _$GPriceCategoriesVars;

  static Serializer<GPriceCategoriesVars> get serializer =>
      _$gPriceCategoriesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoriesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPriceCategoriesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoriesVars.serializer,
        json,
      );
}
