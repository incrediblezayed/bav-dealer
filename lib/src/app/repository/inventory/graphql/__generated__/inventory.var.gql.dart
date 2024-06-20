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

abstract class GProductVariantsVars
    implements Built<GProductVariantsVars, GProductVariantsVarsBuilder> {
  GProductVariantsVars._();

  factory GProductVariantsVars(
          [void Function(GProductVariantsVarsBuilder b) updates]) =
      _$GProductVariantsVars;

  int get skip;
  int? get take;
  _i1.GProductVariantWhereInput get where;
  BuiltList<double>? get location;
  BuiltList<_i1.GProductVariantOrderByInput> get orderBy;
  static Serializer<GProductVariantsVars> get serializer =>
      _$gProductVariantsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantsVars.serializer,
        json,
      );
}

abstract class GProductVariantsCountVars
    implements
        Built<GProductVariantsCountVars, GProductVariantsCountVarsBuilder> {
  GProductVariantsCountVars._();

  factory GProductVariantsCountVars(
          [void Function(GProductVariantsCountVarsBuilder b) updates]) =
      _$GProductVariantsCountVars;

  _i1.GProductVariantWhereInput get where;
  static Serializer<GProductVariantsCountVars> get serializer =>
      _$gProductVariantsCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantsCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsCountVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantsCountVars.serializer,
        json,
      );
}

abstract class GProductVariantVars
    implements Built<GProductVariantVars, GProductVariantVarsBuilder> {
  GProductVariantVars._();

  factory GProductVariantVars(
          [void Function(GProductVariantVarsBuilder b) updates]) =
      _$GProductVariantVars;

  _i1.GProductVariantWhereUniqueInput get where;
  BuiltList<double>? get location;
  static Serializer<GProductVariantVars> get serializer =>
      _$gProductVariantVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantVars.serializer,
        json,
      );
}

abstract class GProductTypesVars
    implements Built<GProductTypesVars, GProductTypesVarsBuilder> {
  GProductTypesVars._();

  factory GProductTypesVars(
          [void Function(GProductTypesVarsBuilder b) updates]) =
      _$GProductTypesVars;

  static Serializer<GProductTypesVars> get serializer =>
      _$gProductTypesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypesVars.serializer,
        json,
      );
}

abstract class GVehicleVariantsVars
    implements Built<GVehicleVariantsVars, GVehicleVariantsVarsBuilder> {
  GVehicleVariantsVars._();

  factory GVehicleVariantsVars(
          [void Function(GVehicleVariantsVarsBuilder b) updates]) =
      _$GVehicleVariantsVars;

  _i1.GVehicleVariantWhereInput get where;
  BuiltList<_i1.GVehicleVariantOrderByInput> get orderBy;
  int get skip;
  int? get take;
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

abstract class GVehicleVariantsCountVars
    implements
        Built<GVehicleVariantsCountVars, GVehicleVariantsCountVarsBuilder> {
  GVehicleVariantsCountVars._();

  factory GVehicleVariantsCountVars(
          [void Function(GVehicleVariantsCountVarsBuilder b) updates]) =
      _$GVehicleVariantsCountVars;

  _i1.GVehicleVariantWhereInput get where;
  static Serializer<GVehicleVariantsCountVars> get serializer =>
      _$gVehicleVariantsCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantsCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsCountVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantsCountVars.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerStockRequestVars
    implements
        Built<GCreateVehicleDealerStockRequestVars,
            GCreateVehicleDealerStockRequestVarsBuilder> {
  GCreateVehicleDealerStockRequestVars._();

  factory GCreateVehicleDealerStockRequestVars(
      [void Function(GCreateVehicleDealerStockRequestVarsBuilder b)
          updates]) = _$GCreateVehicleDealerStockRequestVars;

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
          [void Function(GVehicleDealersVarsBuilder b) updates]) =
      _$GVehicleDealersVars;

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
          [void Function(GCreateVehicleDealerVarsBuilder b) updates]) =
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
          [void Function(GPriceCategoriesVarsBuilder b) updates]) =
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

abstract class GUpdateVehicleDealerVars
    implements
        Built<GUpdateVehicleDealerVars, GUpdateVehicleDealerVarsBuilder> {
  GUpdateVehicleDealerVars._();

  factory GUpdateVehicleDealerVars(
          [void Function(GUpdateVehicleDealerVarsBuilder b) updates]) =
      _$GUpdateVehicleDealerVars;

  _i1.GVehicleDealerWhereUniqueInput get where;
  _i1.GVehicleDealerUpdateInput get data;
  static Serializer<GUpdateVehicleDealerVars> get serializer =>
      _$gUpdateVehicleDealerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateVehicleDealerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateVehicleDealerVars.serializer,
        json,
      );
}

abstract class GUpdatePricesVars
    implements Built<GUpdatePricesVars, GUpdatePricesVarsBuilder> {
  GUpdatePricesVars._();

  factory GUpdatePricesVars(
          [void Function(GUpdatePricesVarsBuilder b) updates]) =
      _$GUpdatePricesVars;

  BuiltList<_i1.GPriceUpdateArgs> get data;
  static Serializer<GUpdatePricesVars> get serializer =>
      _$gUpdatePricesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdatePricesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePricesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdatePricesVars.serializer,
        json,
      );
}

abstract class GTestDriveDealersVars
    implements Built<GTestDriveDealersVars, GTestDriveDealersVarsBuilder> {
  GTestDriveDealersVars._();

  factory GTestDriveDealersVars(
          [void Function(GTestDriveDealersVarsBuilder b) updates]) =
      _$GTestDriveDealersVars;

  _i1.GTestDriveDealerWhereInput get where;
  int? get take;
  int get skip;
  static Serializer<GTestDriveDealersVars> get serializer =>
      _$gTestDriveDealersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealersVars.serializer,
        json,
      );
}

abstract class GUpdateTestDriveDealerVars
    implements
        Built<GUpdateTestDriveDealerVars, GUpdateTestDriveDealerVarsBuilder> {
  GUpdateTestDriveDealerVars._();

  factory GUpdateTestDriveDealerVars(
          [void Function(GUpdateTestDriveDealerVarsBuilder b) updates]) =
      _$GUpdateTestDriveDealerVars;

  _i1.GTestDriveDealerWhereUniqueInput get where;
  _i1.GTestDriveDealerUpdateInput get data;
  static Serializer<GUpdateTestDriveDealerVars> get serializer =>
      _$gUpdateTestDriveDealerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateTestDriveDealerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTestDriveDealerVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateTestDriveDealerVars.serializer,
        json,
      );
}

abstract class GCreateTestDriveDealerVars
    implements
        Built<GCreateTestDriveDealerVars, GCreateTestDriveDealerVarsBuilder> {
  GCreateTestDriveDealerVars._();

  factory GCreateTestDriveDealerVars(
          [void Function(GCreateTestDriveDealerVarsBuilder b) updates]) =
      _$GCreateTestDriveDealerVars;

  _i1.GTestDriveDealerCreateInput get data;
  static Serializer<GCreateTestDriveDealerVars> get serializer =>
      _$gCreateTestDriveDealerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateTestDriveDealerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTestDriveDealerVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateTestDriveDealerVars.serializer,
        json,
      );
}

abstract class GProductDealersVars
    implements Built<GProductDealersVars, GProductDealersVarsBuilder> {
  GProductDealersVars._();

  factory GProductDealersVars(
          [void Function(GProductDealersVarsBuilder b) updates]) =
      _$GProductDealersVars;

  _i1.GProductDealerWhereInput get where;
  static Serializer<GProductDealersVars> get serializer =>
      _$gProductDealersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealersVars.serializer,
        json,
      );
}
