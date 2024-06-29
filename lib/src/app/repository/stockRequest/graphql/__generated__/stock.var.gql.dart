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

part 'stock.var.gql.g.dart';

abstract class GProductDealerStockRequestsVars
    implements
        Built<GProductDealerStockRequestsVars,
            GProductDealerStockRequestsVarsBuilder> {
  GProductDealerStockRequestsVars._();

  factory GProductDealerStockRequestsVars(
          [void Function(GProductDealerStockRequestsVarsBuilder b) updates]) =
      _$GProductDealerStockRequestsVars;

  _i1.GProductDealerStockRequestWhereInput get where;
  BuiltList<_i1.GProductDealerStockRequestOrderByInput> get orderBy;
  int? get take;
  int get skip;
  static Serializer<GProductDealerStockRequestsVars> get serializer =>
      _$gProductDealerStockRequestsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
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
          [void Function(GVehicleDealerStockRequestsVarsBuilder b) updates]) =
      _$GVehicleDealerStockRequestsVars;

  _i1.GVehicleDealerStockRequestWhereInput get where;
  BuiltList<_i1.GVehicleDealerStockRequestOrderByInput> get orderBy;
  int? get take;
  int get skip;
  static Serializer<GVehicleDealerStockRequestsVars> get serializer =>
      _$gVehicleDealerStockRequestsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestsVars.serializer,
        json,
      );
}
