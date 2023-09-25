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
