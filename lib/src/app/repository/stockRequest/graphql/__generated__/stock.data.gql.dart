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

part 'stock.data.gql.g.dart';

abstract class GProductDealerStockRequestsData
    implements
        Built<GProductDealerStockRequestsData,
            GProductDealerStockRequestsDataBuilder> {
  GProductDealerStockRequestsData._();

  factory GProductDealerStockRequestsData(
          [Function(GProductDealerStockRequestsDataBuilder b) updates]) =
      _$GProductDealerStockRequestsData;

  static void _initializeBuilder(GProductDealerStockRequestsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProductDealerStockRequestsData_productDealerStockRequests>?
      get productDealerStockRequests;
  static Serializer<GProductDealerStockRequestsData> get serializer =>
      _$gProductDealerStockRequestsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealerStockRequestsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealerStockRequestsData.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestsData_productDealerStockRequests
    implements
        Built<GProductDealerStockRequestsData_productDealerStockRequests,
            GProductDealerStockRequestsData_productDealerStockRequestsBuilder> {
  GProductDealerStockRequestsData_productDealerStockRequests._();

  factory GProductDealerStockRequestsData_productDealerStockRequests(
      [Function(
              GProductDealerStockRequestsData_productDealerStockRequestsBuilder
                  b)
          updates]) = _$GProductDealerStockRequestsData_productDealerStockRequests;

  static void _initializeBuilder(
          GProductDealerStockRequestsData_productDealerStockRequestsBuilder
              b) =>
      b..G__typename = 'ProductDealerStockRequest';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant?
      get productVariant;
  int? get stock;
  int? get totalPrice;
  String? get type;
  GProductDealerStockRequestsData_productDealerStockRequests_dealer? get dealer;
  bool? get accepted;
  _i2.GDateTime? get createdAt;
  _i2.GDateTime? get modifiedAt;
  static Serializer<GProductDealerStockRequestsData_productDealerStockRequests>
      get serializer =>
          _$gProductDealerStockRequestsDataProductDealerStockRequestsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealerStockRequestsData_productDealerStockRequests.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsData_productDealerStockRequests? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealerStockRequestsData_productDealerStockRequests.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestsData_productDealerStockRequests_productVariant
    implements
        Built<
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant,
            GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder> {
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant._();

  factory GProductDealerStockRequestsData_productDealerStockRequests_productVariant(
          [Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
                      b)
              updates]) =
      _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant;

  static void _initializeBuilder(
          GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
              b) =>
      b..G__typename = 'ProductVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  static Serializer<
          GProductDealerStockRequestsData_productDealerStockRequests_productVariant>
      get serializer =>
          _$gProductDealerStockRequestsDataProductDealerStockRequestsProductVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealerStockRequestsData_productDealerStockRequests_productVariant
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsData_productDealerStockRequests_productVariant?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant
                .serializer,
            json,
          );
}

abstract class GProductDealerStockRequestsData_productDealerStockRequests_dealer
    implements
        Built<GProductDealerStockRequestsData_productDealerStockRequests_dealer,
            GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder> {
  GProductDealerStockRequestsData_productDealerStockRequests_dealer._();

  factory GProductDealerStockRequestsData_productDealerStockRequests_dealer(
          [Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder
                      b)
              updates]) =
      _$GProductDealerStockRequestsData_productDealerStockRequests_dealer;

  static void _initializeBuilder(
          GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder
              b) =>
      b..G__typename = 'Dealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_user?
      get user;
  static Serializer<
          GProductDealerStockRequestsData_productDealerStockRequests_dealer>
      get serializer =>
          _$gProductDealerStockRequestsDataProductDealerStockRequestsDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealerStockRequestsData_productDealerStockRequests_dealer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsData_productDealerStockRequests_dealer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductDealerStockRequestsData_productDealerStockRequests_dealer
                .serializer,
            json,
          );
}

abstract class GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
    implements
        Built<
            GProductDealerStockRequestsData_productDealerStockRequests_dealer_user,
            GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder> {
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_user._();

  factory GProductDealerStockRequestsData_productDealerStockRequests_dealer_user(
          [Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder
                      b)
              updates]) =
      _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user;

  static void _initializeBuilder(
          GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder
              b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GProductDealerStockRequestsData_productDealerStockRequests_dealer_user>
      get serializer =>
          _$gProductDealerStockRequestsDataProductDealerStockRequestsDealerUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestsData_productDealerStockRequests_dealer_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
                .serializer,
            json,
          );
}

abstract class GVehicleDealerStockRequestsData
    implements
        Built<GVehicleDealerStockRequestsData,
            GVehicleDealerStockRequestsDataBuilder> {
  GVehicleDealerStockRequestsData._();

  factory GVehicleDealerStockRequestsData(
          [Function(GVehicleDealerStockRequestsDataBuilder b) updates]) =
      _$GVehicleDealerStockRequestsData;

  static void _initializeBuilder(GVehicleDealerStockRequestsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>?
      get vehicleDealerStockRequests;
  static Serializer<GVehicleDealerStockRequestsData> get serializer =>
      _$gVehicleDealerStockRequestsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealerStockRequestsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealerStockRequestsData.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestsData_vehicleDealerStockRequests
    implements
        Built<GVehicleDealerStockRequestsData_vehicleDealerStockRequests,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder> {
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests._();

  factory GVehicleDealerStockRequestsData_vehicleDealerStockRequests(
      [Function(
              GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder
                  b)
          updates]) = _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests;

  static void _initializeBuilder(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder
              b) =>
      b..G__typename = 'VehicleDealerStockRequest';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get accepted;
  _i2.GDateTime? get createdAt;
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer? get dealer;
  String get id;
  _i2.GDateTime? get modifiedAt;
  int? get stock;
  String? get type;
  int? get totalPrice;
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor?
      get vehicleColor;
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant?
      get vehicleVariant;
  static Serializer<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>
      get serializer =>
          _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsData_vehicleDealerStockRequests? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
    implements
        Built<GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder> {
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer._();

  factory GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer(
          [Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder
                      b)
              updates]) =
      _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer;

  static void _initializeBuilder(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder
              b) =>
      b..G__typename = 'Dealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  static Serializer<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer>
      get serializer =>
          _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
                .serializer,
            json,
          );
}

abstract class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
    implements
        Built<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder> {
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor._();

  factory GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor(
          [Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder
                      b)
              updates]) =
      _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor;

  static void _initializeBuilder(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder
              b) =>
      b..G__typename = 'VehicleColor';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor>
      get serializer =>
          _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleColorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
                .serializer,
            json,
          );
}

abstract class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
    implements
        Built<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder> {
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant._();

  factory GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant(
          [Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder
                      b)
              updates]) =
      _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant;

  static void _initializeBuilder(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder
              b) =>
      b..G__typename = 'VehicleVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant>
      get serializer =>
          _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
                .serializer,
            json,
          );
}
