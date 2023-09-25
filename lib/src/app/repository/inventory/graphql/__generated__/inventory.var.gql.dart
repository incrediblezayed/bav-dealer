// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'inventory.var.gql.g.dart';

abstract class GVehiclesVars
    implements Built<GVehiclesVars, GVehiclesVarsBuilder> {
  GVehiclesVars._();

  factory GVehiclesVars([Function(GVehiclesVarsBuilder b) updates]) =
      _$GVehiclesVars;

  static Serializer<GVehiclesVars> get serializer => _$gVehiclesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesVars.serializer,
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

  _i2.GVehicleDealerStockRequestCreateInput get data;
  static Serializer<GCreateVehicleDealerStockRequestVars> get serializer =>
      _$gCreateVehicleDealerStockRequestVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVehicleDealerStockRequestVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVehicleDealerStockRequestVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVehicleDealerStockRequestVars.serializer,
        json,
      );
}

abstract class GCreateVehicleTestDriveDealerStockRequestVars
    implements
        Built<GCreateVehicleTestDriveDealerStockRequestVars,
            GCreateVehicleTestDriveDealerStockRequestVarsBuilder> {
  GCreateVehicleTestDriveDealerStockRequestVars._();

  factory GCreateVehicleTestDriveDealerStockRequestVars(
      [Function(GCreateVehicleTestDriveDealerStockRequestVarsBuilder b)
          updates]) = _$GCreateVehicleTestDriveDealerStockRequestVars;

  _i2.GTestDriveDealerStockRequestCreateInput get data;
  static Serializer<GCreateVehicleTestDriveDealerStockRequestVars>
      get serializer =>
          _$gCreateVehicleTestDriveDealerStockRequestVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVehicleTestDriveDealerStockRequestVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVehicleTestDriveDealerStockRequestVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVehicleTestDriveDealerStockRequestVars.serializer,
        json,
      );
}

abstract class GVehicleDealersVars
    implements Built<GVehicleDealersVars, GVehicleDealersVarsBuilder> {
  GVehicleDealersVars._();

  factory GVehicleDealersVars(
      [Function(GVehicleDealersVarsBuilder b) updates]) = _$GVehicleDealersVars;

  _i2.GVehicleDealerWhereInput get where;
  static Serializer<GVehicleDealersVars> get serializer =>
      _$gVehicleDealersVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersVars.serializer,
        json,
      );
}
