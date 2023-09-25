// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
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
