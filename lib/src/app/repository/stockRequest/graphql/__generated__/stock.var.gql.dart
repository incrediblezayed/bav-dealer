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

part 'stock.var.gql.g.dart';

abstract class GProductDealerStockRequestsVars
    implements
        Built<GProductDealerStockRequestsVars,
            GProductDealerStockRequestsVarsBuilder> {
  GProductDealerStockRequestsVars._();

  factory GProductDealerStockRequestsVars(
          [Function(GProductDealerStockRequestsVarsBuilder b) updates]) =
      _$GProductDealerStockRequestsVars;

  static Serializer<GProductDealerStockRequestsVars> get serializer =>
      _$gProductDealerStockRequestsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealerStockRequestsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealerStockRequestsVars.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestsVars
    implements
        Built<GVehicleDealerStockRequestsVars,
            GVehicleDealerStockRequestsVarsBuilder> {
  GVehicleDealerStockRequestsVars._();

  factory GVehicleDealerStockRequestsVars(
          [Function(GVehicleDealerStockRequestsVarsBuilder b) updates]) =
      _$GVehicleDealerStockRequestsVars;

  _i2.GVehicleDealerStockRequestWhereInput get where;
  BuiltList<_i2.GVehicleDealerStockRequestOrderByInput> get orderBy;
  int? get take;
  int get skip;
  static Serializer<GVehicleDealerStockRequestsVars> get serializer =>
      _$gVehicleDealerStockRequestsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealerStockRequestsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealerStockRequestsVars.serializer,
        json,
      );
}

abstract class GQueryVars implements Built<GQueryVars, GQueryVarsBuilder> {
  GQueryVars._();

  factory GQueryVars([Function(GQueryVarsBuilder b) updates]) = _$GQueryVars;

  _i2.GVehicleDealerStockRequestWhereInput get where;
  static Serializer<GQueryVars> get serializer => _$gQueryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQueryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQueryVars.serializer,
        json,
      );
}
