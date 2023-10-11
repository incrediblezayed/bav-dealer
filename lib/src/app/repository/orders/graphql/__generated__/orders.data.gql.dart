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

part 'orders.data.gql.g.dart';

abstract class GVehicleOrdersData
    implements Built<GVehicleOrdersData, GVehicleOrdersDataBuilder> {
  GVehicleOrdersData._();

  factory GVehicleOrdersData([Function(GVehicleOrdersDataBuilder b) updates]) =
      _$GVehicleOrdersData;

  static void _initializeBuilder(GVehicleOrdersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehicleOrdersData_vehicleOrders>? get vehicleOrders;
  static Serializer<GVehicleOrdersData> get serializer =>
      _$gVehicleOrdersDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders
    implements
        Built<GVehicleOrdersData_vehicleOrders,
            GVehicleOrdersData_vehicleOrdersBuilder> {
  GVehicleOrdersData_vehicleOrders._();

  factory GVehicleOrdersData_vehicleOrders(
          [Function(GVehicleOrdersData_vehicleOrdersBuilder b) updates]) =
      _$GVehicleOrdersData_vehicleOrders;

  static void _initializeBuilder(GVehicleOrdersData_vehicleOrdersBuilder b) =>
      b..G__typename = 'VehicleOrder';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int? get price;
  GVehicleOrdersData_vehicleOrders_dealer? get dealer;
  String? get status;
  GVehicleOrdersData_vehicleOrders_order? get order;
  _i2.GDateTime? get createdAt;
  static Serializer<GVehicleOrdersData_vehicleOrders> get serializer =>
      _$gVehicleOrdersDataVehicleOrdersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer,
            GVehicleOrdersData_vehicleOrders_dealerBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer._();

  factory GVehicleOrdersData_vehicleOrders_dealer(
      [Function(GVehicleOrdersData_vehicleOrders_dealerBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealerBuilder b) =>
      b..G__typename = 'VehicleDealer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant? get vehicleVariant;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor? get vehicleColor;
  GVehicleOrdersData_vehicleOrders_dealer_dealer? get dealer;
  String get id;
  BuiltList<GVehicleOrdersData_vehicleOrders_dealer_prices>? get prices;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer> get serializer =>
      _$gVehicleOrdersDataVehicleOrdersDealerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant._();

  factory GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant(
      [Function(GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder b) =>
      b..G__typename = 'VehicleVariant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle? get vehicle;
  String? get name;
  int? get price;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersDealerVehicleVariantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle._();

  factory GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle(
          [Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder
                      b)
              updates]) =
      _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder
              b) =>
      b..G__typename = 'Vehicle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<
          GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersDealerVehicleVariantVehicleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
                .serializer,
            json,
          );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_vehicleColor
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor._();

  factory GVehicleOrdersData_vehicleOrders_dealer_vehicleColor(
      [Function(GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder b) =>
      b..G__typename = 'VehicleColor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get code;
  BuiltList<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>?
      get images;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersDealerVehicleColorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleColor.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_vehicleColor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleColor.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images._();

  factory GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images(
      [Function(
              GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder
                  b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder
              b) =>
      b..G__typename = 'VehicleImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image? get image;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersDealerVehicleColorImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image._();

  factory GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image(
          [Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder
                      b)
              updates]) =
      _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get url;
  static Serializer<
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersDealerVehicleColorImagesImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
                .serializer,
            json,
          );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_dealer
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_dealer,
            GVehicleOrdersData_vehicleOrders_dealer_dealerBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_dealer._();

  factory GVehicleOrdersData_vehicleOrders_dealer_dealer(
      [Function(GVehicleOrdersData_vehicleOrders_dealer_dealerBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer_dealer;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_dealerBuilder b) =>
      b..G__typename = 'Dealer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer_dealer>
      get serializer => _$gVehicleOrdersDataVehicleOrdersDealerDealerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_dealer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_dealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_dealer.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_prices
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_prices,
            GVehicleOrdersData_vehicleOrders_dealer_pricesBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_prices._();

  factory GVehicleOrdersData_vehicleOrders_dealer_prices(
      [Function(GVehicleOrdersData_vehicleOrders_dealer_pricesBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer_prices;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_pricesBuilder b) =>
      b..G__typename = 'Price';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get amount;
  _i2.GDateTime? get createdAt;
  String get id;
  GVehicleOrdersData_vehicleOrders_dealer_prices_category? get category;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer_prices>
      get serializer => _$gVehicleOrdersDataVehicleOrdersDealerPricesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_prices.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_prices.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_dealer_prices_category
    implements
        Built<GVehicleOrdersData_vehicleOrders_dealer_prices_category,
            GVehicleOrdersData_vehicleOrders_dealer_prices_categoryBuilder> {
  GVehicleOrdersData_vehicleOrders_dealer_prices_category._();

  factory GVehicleOrdersData_vehicleOrders_dealer_prices_category(
      [Function(
              GVehicleOrdersData_vehicleOrders_dealer_prices_categoryBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_dealer_prices_category;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_dealer_prices_categoryBuilder b) =>
      b..G__typename = 'PriceCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  static Serializer<GVehicleOrdersData_vehicleOrders_dealer_prices_category>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersDealerPricesCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_dealer_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_dealer_prices_category.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_order
    implements
        Built<GVehicleOrdersData_vehicleOrders_order,
            GVehicleOrdersData_vehicleOrders_orderBuilder> {
  GVehicleOrdersData_vehicleOrders_order._();

  factory GVehicleOrdersData_vehicleOrders_order(
          [Function(GVehicleOrdersData_vehicleOrders_orderBuilder b) updates]) =
      _$GVehicleOrdersData_vehicleOrders_order;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_orderBuilder b) =>
      b..G__typename = 'Order';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehicleOrdersData_vehicleOrders_order_user? get user;
  String get id;
  _i2.GDateTime? get createdAt;
  static Serializer<GVehicleOrdersData_vehicleOrders_order> get serializer =>
      _$gVehicleOrdersDataVehicleOrdersOrderSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_order.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_order? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_order.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_order_user
    implements
        Built<GVehicleOrdersData_vehicleOrders_order_user,
            GVehicleOrdersData_vehicleOrders_order_userBuilder> {
  GVehicleOrdersData_vehicleOrders_order_user._();

  factory GVehicleOrdersData_vehicleOrders_order_user(
      [Function(GVehicleOrdersData_vehicleOrders_order_userBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_order_user;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_order_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get email;
  String? get name;
  String? get phoneNumber;
  BuiltList<GVehicleOrdersData_vehicleOrders_order_user_addresses>?
      get addresses;
  static Serializer<GVehicleOrdersData_vehicleOrders_order_user>
      get serializer => _$gVehicleOrdersDataVehicleOrdersOrderUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_order_user.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_order_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_order_user.serializer,
        json,
      );
}

abstract class GVehicleOrdersData_vehicleOrders_order_user_addresses
    implements
        Built<GVehicleOrdersData_vehicleOrders_order_user_addresses,
            GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder> {
  GVehicleOrdersData_vehicleOrders_order_user_addresses._();

  factory GVehicleOrdersData_vehicleOrders_order_user_addresses(
      [Function(GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder b)
          updates]) = _$GVehicleOrdersData_vehicleOrders_order_user_addresses;

  static void _initializeBuilder(
          GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder b) =>
      b..G__typename = 'Address';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get phoneNumber;
  String? get pinCode;
  String? get state;
  String? get town;
  String? get address;
  String? get district;
  String? get name;
  static Serializer<GVehicleOrdersData_vehicleOrders_order_user_addresses>
      get serializer =>
          _$gVehicleOrdersDataVehicleOrdersOrderUserAddressesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleOrdersData_vehicleOrders_order_user_addresses.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrdersData_vehicleOrders_order_user_addresses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleOrdersData_vehicleOrders_order_user_addresses.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData
    implements Built<GTestDriveOrdersData, GTestDriveOrdersDataBuilder> {
  GTestDriveOrdersData._();

  factory GTestDriveOrdersData(
          [Function(GTestDriveOrdersDataBuilder b) updates]) =
      _$GTestDriveOrdersData;

  static void _initializeBuilder(GTestDriveOrdersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GTestDriveOrdersData_testDriveOrders>? get testDriveOrders;
  static Serializer<GTestDriveOrdersData> get serializer =>
      _$gTestDriveOrdersDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders
    implements
        Built<GTestDriveOrdersData_testDriveOrders,
            GTestDriveOrdersData_testDriveOrdersBuilder> {
  GTestDriveOrdersData_testDriveOrders._();

  factory GTestDriveOrdersData_testDriveOrders(
          [Function(GTestDriveOrdersData_testDriveOrdersBuilder b) updates]) =
      _$GTestDriveOrdersData_testDriveOrders;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrdersBuilder b) =>
      b..G__typename = 'TestDriveOrder';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int? get price;
  GTestDriveOrdersData_testDriveOrders_dealer? get dealer;
  String? get status;
  GTestDriveOrdersData_testDriveOrders_order? get order;
  _i2.GDateTime? get createdAt;
  static Serializer<GTestDriveOrdersData_testDriveOrders> get serializer =>
      _$gTestDriveOrdersDataTestDriveOrdersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer
    implements
        Built<GTestDriveOrdersData_testDriveOrders_dealer,
            GTestDriveOrdersData_testDriveOrders_dealerBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer._();

  factory GTestDriveOrdersData_testDriveOrders_dealer(
      [Function(GTestDriveOrdersData_testDriveOrders_dealerBuilder b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_dealer;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealerBuilder b) =>
      b..G__typename = 'TestDriveDealer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant?
      get vehicleVariant;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor? get vehicleColor;
  GTestDriveOrdersData_testDriveOrders_dealer_dealer? get dealer;
  String get id;
  int? get price;
  static Serializer<GTestDriveOrdersData_testDriveOrders_dealer>
      get serializer => _$gTestDriveOrdersDataTestDriveOrdersDealerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant
    implements
        Built<GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant._();

  factory GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant(
      [Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder
                  b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder
              b) =>
      b..G__typename = 'VehicleVariant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle?
      get vehicle;
  String? get name;
  int? get price;
  static Serializer<GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleVariantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
    implements
        Built<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle._();

  factory GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle(
          [Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder
                      b)
              updates]) =
      _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder
              b) =>
      b..G__typename = 'Vehicle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleVariantVehicleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
                .serializer,
            json,
          );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor
    implements
        Built<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor._();

  factory GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor(
      [Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder b) =>
      b..G__typename = 'VehicleColor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get code;
  BuiltList<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>?
      get images;
  static Serializer<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleColorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
    implements
        Built<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images._();

  factory GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images(
          [Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder
                      b)
              updates]) =
      _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder
              b) =>
      b..G__typename = 'VehicleImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image?
      get image;
  static Serializer<
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleColorImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
                .serializer,
            json,
          );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
    implements
        Built<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image._();

  factory GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image(
          [Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder
                      b)
              updates]) =
      _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get url;
  static Serializer<
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleColorImagesImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
                .serializer,
            json,
          );
}

abstract class GTestDriveOrdersData_testDriveOrders_dealer_dealer
    implements
        Built<GTestDriveOrdersData_testDriveOrders_dealer_dealer,
            GTestDriveOrdersData_testDriveOrders_dealer_dealerBuilder> {
  GTestDriveOrdersData_testDriveOrders_dealer_dealer._();

  factory GTestDriveOrdersData_testDriveOrders_dealer_dealer(
      [Function(GTestDriveOrdersData_testDriveOrders_dealer_dealerBuilder b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_dealer_dealer;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_dealer_dealerBuilder b) =>
      b..G__typename = 'Dealer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GTestDriveOrdersData_testDriveOrders_dealer_dealer>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersDealerDealerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_dealer.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_dealer_dealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_dealer_dealer.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_order
    implements
        Built<GTestDriveOrdersData_testDriveOrders_order,
            GTestDriveOrdersData_testDriveOrders_orderBuilder> {
  GTestDriveOrdersData_testDriveOrders_order._();

  factory GTestDriveOrdersData_testDriveOrders_order(
      [Function(GTestDriveOrdersData_testDriveOrders_orderBuilder b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_order;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_orderBuilder b) =>
      b..G__typename = 'Order';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GTestDriveOrdersData_testDriveOrders_order_user? get user;
  String get id;
  _i2.GDateTime? get createdAt;
  static Serializer<GTestDriveOrdersData_testDriveOrders_order>
      get serializer => _$gTestDriveOrdersDataTestDriveOrdersOrderSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_order.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_order? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_order.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_order_user
    implements
        Built<GTestDriveOrdersData_testDriveOrders_order_user,
            GTestDriveOrdersData_testDriveOrders_order_userBuilder> {
  GTestDriveOrdersData_testDriveOrders_order_user._();

  factory GTestDriveOrdersData_testDriveOrders_order_user(
      [Function(GTestDriveOrdersData_testDriveOrders_order_userBuilder b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_order_user;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_order_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get email;
  String? get name;
  String? get phoneNumber;
  BuiltList<GTestDriveOrdersData_testDriveOrders_order_user_addresses>?
      get addresses;
  static Serializer<GTestDriveOrdersData_testDriveOrders_order_user>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersOrderUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_order_user.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_order_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_order_user.serializer,
        json,
      );
}

abstract class GTestDriveOrdersData_testDriveOrders_order_user_addresses
    implements
        Built<GTestDriveOrdersData_testDriveOrders_order_user_addresses,
            GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder> {
  GTestDriveOrdersData_testDriveOrders_order_user_addresses._();

  factory GTestDriveOrdersData_testDriveOrders_order_user_addresses(
      [Function(
              GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder
                  b)
          updates]) = _$GTestDriveOrdersData_testDriveOrders_order_user_addresses;

  static void _initializeBuilder(
          GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder b) =>
      b..G__typename = 'Address';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get phoneNumber;
  String? get pinCode;
  String? get state;
  String? get town;
  String? get address;
  String? get district;
  String? get name;
  static Serializer<GTestDriveOrdersData_testDriveOrders_order_user_addresses>
      get serializer =>
          _$gTestDriveOrdersDataTestDriveOrdersOrderUserAddressesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveOrdersData_testDriveOrders_order_user_addresses.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrdersData_testDriveOrders_order_user_addresses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveOrdersData_testDriveOrders_order_user_addresses.serializer,
        json,
      );
}

abstract class GUpdateVehicleOrderData
    implements Built<GUpdateVehicleOrderData, GUpdateVehicleOrderDataBuilder> {
  GUpdateVehicleOrderData._();

  factory GUpdateVehicleOrderData(
          [Function(GUpdateVehicleOrderDataBuilder b) updates]) =
      _$GUpdateVehicleOrderData;

  static void _initializeBuilder(GUpdateVehicleOrderDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateVehicleOrderData_updateVehicleOrder? get updateVehicleOrder;
  static Serializer<GUpdateVehicleOrderData> get serializer =>
      _$gUpdateVehicleOrderDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleOrderData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateVehicleOrderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleOrderData.serializer,
        json,
      );
}

abstract class GUpdateVehicleOrderData_updateVehicleOrder
    implements
        Built<GUpdateVehicleOrderData_updateVehicleOrder,
            GUpdateVehicleOrderData_updateVehicleOrderBuilder> {
  GUpdateVehicleOrderData_updateVehicleOrder._();

  factory GUpdateVehicleOrderData_updateVehicleOrder(
      [Function(GUpdateVehicleOrderData_updateVehicleOrderBuilder b)
          updates]) = _$GUpdateVehicleOrderData_updateVehicleOrder;

  static void _initializeBuilder(
          GUpdateVehicleOrderData_updateVehicleOrderBuilder b) =>
      b..G__typename = 'VehicleOrder';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GUpdateVehicleOrderData_updateVehicleOrder>
      get serializer => _$gUpdateVehicleOrderDataUpdateVehicleOrderSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleOrderData_updateVehicleOrder.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateVehicleOrderData_updateVehicleOrder? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleOrderData_updateVehicleOrder.serializer,
        json,
      );
}

abstract class GCreateOrderRejectionByDealerData
    implements
        Built<GCreateOrderRejectionByDealerData,
            GCreateOrderRejectionByDealerDataBuilder> {
  GCreateOrderRejectionByDealerData._();

  factory GCreateOrderRejectionByDealerData(
          [Function(GCreateOrderRejectionByDealerDataBuilder b) updates]) =
      _$GCreateOrderRejectionByDealerData;

  static void _initializeBuilder(GCreateOrderRejectionByDealerDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateOrderRejectionByDealerData_createOrderRejectionByDealer?
      get createOrderRejectionByDealer;
  static Serializer<GCreateOrderRejectionByDealerData> get serializer =>
      _$gCreateOrderRejectionByDealerDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateOrderRejectionByDealerData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateOrderRejectionByDealerData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateOrderRejectionByDealerData.serializer,
        json,
      );
}

abstract class GCreateOrderRejectionByDealerData_createOrderRejectionByDealer
    implements
        Built<GCreateOrderRejectionByDealerData_createOrderRejectionByDealer,
            GCreateOrderRejectionByDealerData_createOrderRejectionByDealerBuilder> {
  GCreateOrderRejectionByDealerData_createOrderRejectionByDealer._();

  factory GCreateOrderRejectionByDealerData_createOrderRejectionByDealer(
          [Function(
                  GCreateOrderRejectionByDealerData_createOrderRejectionByDealerBuilder
                      b)
              updates]) =
      _$GCreateOrderRejectionByDealerData_createOrderRejectionByDealer;

  static void _initializeBuilder(
          GCreateOrderRejectionByDealerData_createOrderRejectionByDealerBuilder
              b) =>
      b..G__typename = 'OrderRejectionByDealer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GCreateOrderRejectionByDealerData_createOrderRejectionByDealer>
      get serializer =>
          _$gCreateOrderRejectionByDealerDataCreateOrderRejectionByDealerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateOrderRejectionByDealerData_createOrderRejectionByDealer
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateOrderRejectionByDealerData_createOrderRejectionByDealer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCreateOrderRejectionByDealerData_createOrderRejectionByDealer
                .serializer,
            json,
          );
}
