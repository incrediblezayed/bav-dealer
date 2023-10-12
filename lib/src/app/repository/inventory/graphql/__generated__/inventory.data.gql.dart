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

part 'inventory.data.gql.g.dart';

abstract class GVehiclesData
    implements Built<GVehiclesData, GVehiclesDataBuilder> {
  GVehiclesData._();

  factory GVehiclesData([Function(GVehiclesDataBuilder b) updates]) =
      _$GVehiclesData;

  static void _initializeBuilder(GVehiclesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehiclesData_vehicles>? get vehicles;
  static Serializer<GVehiclesData> get serializer => _$gVehiclesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles
    implements Built<GVehiclesData_vehicles, GVehiclesData_vehiclesBuilder> {
  GVehiclesData_vehicles._();

  factory GVehiclesData_vehicles(
          [Function(GVehiclesData_vehiclesBuilder b) updates]) =
      _$GVehiclesData_vehicles;

  static void _initializeBuilder(GVehiclesData_vehiclesBuilder b) =>
      b..G__typename = 'Vehicle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehiclesData_vehicles_variants>? get variants;
  static Serializer<GVehiclesData_vehicles> get serializer =>
      _$gVehiclesDataVehiclesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants
    implements
        Built<GVehiclesData_vehicles_variants,
            GVehiclesData_vehicles_variantsBuilder> {
  GVehiclesData_vehicles_variants._();

  factory GVehiclesData_vehicles_variants(
          [Function(GVehiclesData_vehicles_variantsBuilder b) updates]) =
      _$GVehiclesData_vehicles_variants;

  static void _initializeBuilder(GVehiclesData_vehicles_variantsBuilder b) =>
      b..G__typename = 'VehicleVariant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get price;
  String? get name;
  GVehiclesData_vehicles_variants_vehicle? get vehicle;
  BuiltList<GVehiclesData_vehicles_variants_colors>? get colors;
  String get id;
  static Serializer<GVehiclesData_vehicles_variants> get serializer =>
      _$gVehiclesDataVehiclesVariantsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants_vehicle
    implements
        Built<GVehiclesData_vehicles_variants_vehicle,
            GVehiclesData_vehicles_variants_vehicleBuilder> {
  GVehiclesData_vehicles_variants_vehicle._();

  factory GVehiclesData_vehicles_variants_vehicle(
      [Function(GVehiclesData_vehicles_variants_vehicleBuilder b)
          updates]) = _$GVehiclesData_vehicles_variants_vehicle;

  static void _initializeBuilder(
          GVehiclesData_vehicles_variants_vehicleBuilder b) =>
      b..G__typename = 'Vehicle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  GVehiclesData_vehicles_variants_vehicle_brand? get brand;
  GVehiclesData_vehicles_variants_vehicle_type? get type;
  String get id;
  static Serializer<GVehiclesData_vehicles_variants_vehicle> get serializer =>
      _$gVehiclesDataVehiclesVariantsVehicleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants_vehicle.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants_vehicle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants_vehicle.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants_vehicle_brand
    implements
        Built<GVehiclesData_vehicles_variants_vehicle_brand,
            GVehiclesData_vehicles_variants_vehicle_brandBuilder> {
  GVehiclesData_vehicles_variants_vehicle_brand._();

  factory GVehiclesData_vehicles_variants_vehicle_brand(
      [Function(GVehiclesData_vehicles_variants_vehicle_brandBuilder b)
          updates]) = _$GVehiclesData_vehicles_variants_vehicle_brand;

  static void _initializeBuilder(
          GVehiclesData_vehicles_variants_vehicle_brandBuilder b) =>
      b..G__typename = 'Brand';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  static Serializer<GVehiclesData_vehicles_variants_vehicle_brand>
      get serializer => _$gVehiclesDataVehiclesVariantsVehicleBrandSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants_vehicle_brand.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants_vehicle_brand? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants_vehicle_brand.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants_vehicle_type
    implements
        Built<GVehiclesData_vehicles_variants_vehicle_type,
            GVehiclesData_vehicles_variants_vehicle_typeBuilder> {
  GVehiclesData_vehicles_variants_vehicle_type._();

  factory GVehiclesData_vehicles_variants_vehicle_type(
      [Function(GVehiclesData_vehicles_variants_vehicle_typeBuilder b)
          updates]) = _$GVehiclesData_vehicles_variants_vehicle_type;

  static void _initializeBuilder(
          GVehiclesData_vehicles_variants_vehicle_typeBuilder b) =>
      b..G__typename = 'VehicleType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get description;
  String get id;
  static Serializer<GVehiclesData_vehicles_variants_vehicle_type>
      get serializer => _$gVehiclesDataVehiclesVariantsVehicleTypeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants_vehicle_type.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants_vehicle_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants_vehicle_type.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants_colors
    implements
        Built<GVehiclesData_vehicles_variants_colors,
            GVehiclesData_vehicles_variants_colorsBuilder> {
  GVehiclesData_vehicles_variants_colors._();

  factory GVehiclesData_vehicles_variants_colors(
          [Function(GVehiclesData_vehicles_variants_colorsBuilder b) updates]) =
      _$GVehiclesData_vehicles_variants_colors;

  static void _initializeBuilder(
          GVehiclesData_vehicles_variants_colorsBuilder b) =>
      b..G__typename = 'VehicleColor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get code;
  BuiltList<GVehiclesData_vehicles_variants_colors_images>? get images;
  static Serializer<GVehiclesData_vehicles_variants_colors> get serializer =>
      _$gVehiclesDataVehiclesVariantsColorsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants_colors.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants_colors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants_colors.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants_colors_images
    implements
        Built<GVehiclesData_vehicles_variants_colors_images,
            GVehiclesData_vehicles_variants_colors_imagesBuilder> {
  GVehiclesData_vehicles_variants_colors_images._();

  factory GVehiclesData_vehicles_variants_colors_images(
      [Function(GVehiclesData_vehicles_variants_colors_imagesBuilder b)
          updates]) = _$GVehiclesData_vehicles_variants_colors_images;

  static void _initializeBuilder(
          GVehiclesData_vehicles_variants_colors_imagesBuilder b) =>
      b..G__typename = 'VehicleImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehiclesData_vehicles_variants_colors_images_image? get image;
  static Serializer<GVehiclesData_vehicles_variants_colors_images>
      get serializer => _$gVehiclesDataVehiclesVariantsColorsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants_colors_images.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants_colors_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants_colors_images.serializer,
        json,
      );
}

abstract class GVehiclesData_vehicles_variants_colors_images_image
    implements
        Built<GVehiclesData_vehicles_variants_colors_images_image,
            GVehiclesData_vehicles_variants_colors_images_imageBuilder> {
  GVehiclesData_vehicles_variants_colors_images_image._();

  factory GVehiclesData_vehicles_variants_colors_images_image(
      [Function(GVehiclesData_vehicles_variants_colors_images_imageBuilder b)
          updates]) = _$GVehiclesData_vehicles_variants_colors_images_image;

  static void _initializeBuilder(
          GVehiclesData_vehicles_variants_colors_images_imageBuilder b) =>
      b..G__typename = 'ImageFieldOutput';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<GVehiclesData_vehicles_variants_colors_images_image>
      get serializer =>
          _$gVehiclesDataVehiclesVariantsColorsImagesImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehiclesData_vehicles_variants_colors_images_image.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehiclesData_vehicles_variants_colors_images_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehiclesData_vehicles_variants_colors_images_image.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerStockRequestData
    implements
        Built<GCreateVehicleDealerStockRequestData,
            GCreateVehicleDealerStockRequestDataBuilder> {
  GCreateVehicleDealerStockRequestData._();

  factory GCreateVehicleDealerStockRequestData(
          [Function(GCreateVehicleDealerStockRequestDataBuilder b) updates]) =
      _$GCreateVehicleDealerStockRequestData;

  static void _initializeBuilder(
          GCreateVehicleDealerStockRequestDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest?
      get createVehicleDealerStockRequest;
  static Serializer<GCreateVehicleDealerStockRequestData> get serializer =>
      _$gCreateVehicleDealerStockRequestDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVehicleDealerStockRequestData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVehicleDealerStockRequestData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVehicleDealerStockRequestData.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
    implements
        Built<
            GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest,
            GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder> {
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest._();

  factory GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest(
          [Function(
                  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder
                      b)
              updates]) =
      _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest;

  static void _initializeBuilder(
          GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder
              b) =>
      b..G__typename = 'VehicleDealerStockRequest';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get type;
  int? get stock;
  int? get totalPrice;
  static Serializer<
          GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest>
      get serializer =>
          _$gCreateVehicleDealerStockRequestDataCreateVehicleDealerStockRequestSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
                .serializer,
            json,
          );
}

abstract class GVehicleDealersData
    implements Built<GVehicleDealersData, GVehicleDealersDataBuilder> {
  GVehicleDealersData._();

  factory GVehicleDealersData(
      [Function(GVehicleDealersDataBuilder b) updates]) = _$GVehicleDealersData;

  static void _initializeBuilder(GVehicleDealersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehicleDealersData_vehicleDealers>? get vehicleDealers;
  static Serializer<GVehicleDealersData> get serializer =>
      _$gVehicleDealersDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers
    implements
        Built<GVehicleDealersData_vehicleDealers,
            GVehicleDealersData_vehicleDealersBuilder> {
  GVehicleDealersData_vehicleDealers._();

  factory GVehicleDealersData_vehicleDealers(
          [Function(GVehicleDealersData_vehicleDealersBuilder b) updates]) =
      _$GVehicleDealersData_vehicleDealers;

  static void _initializeBuilder(GVehicleDealersData_vehicleDealersBuilder b) =>
      b..G__typename = 'VehicleDealer';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehicleDealersData_vehicleDealers_vehicleColor? get vehicleColor;
  GVehicleDealersData_vehicleDealers_vehicleVariant? get vehicleVariant;
  String get id;
  int? get stock;
  BuiltList<GVehicleDealersData_vehicleDealers_prices>? get prices;
  int? get totalPrice;
  static Serializer<GVehicleDealersData_vehicleDealers> get serializer =>
      _$gVehicleDealersDataVehicleDealersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_vehicleColor
    implements
        Built<GVehicleDealersData_vehicleDealers_vehicleColor,
            GVehicleDealersData_vehicleDealers_vehicleColorBuilder> {
  GVehicleDealersData_vehicleDealers_vehicleColor._();

  factory GVehicleDealersData_vehicleDealers_vehicleColor(
      [Function(GVehicleDealersData_vehicleDealers_vehicleColorBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers_vehicleColor;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_vehicleColorBuilder b) =>
      b..G__typename = 'VehicleColor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get code;
  BuiltList<GVehicleDealersData_vehicleDealers_vehicleColor_images>? get images;
  static Serializer<GVehicleDealersData_vehicleDealers_vehicleColor>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersVehicleColorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_vehicleColor.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_vehicleColor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_vehicleColor.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_vehicleColor_images
    implements
        Built<GVehicleDealersData_vehicleDealers_vehicleColor_images,
            GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder> {
  GVehicleDealersData_vehicleDealers_vehicleColor_images._();

  factory GVehicleDealersData_vehicleDealers_vehicleColor_images(
      [Function(GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers_vehicleColor_images;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder b) =>
      b..G__typename = 'VehicleImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GVehicleDealersData_vehicleDealers_vehicleColor_images_image? get image;
  static Serializer<GVehicleDealersData_vehicleDealers_vehicleColor_images>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersVehicleColorImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_vehicleColor_images.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_vehicleColor_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_vehicleColor_images.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_vehicleColor_images_image
    implements
        Built<GVehicleDealersData_vehicleDealers_vehicleColor_images_image,
            GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder> {
  GVehicleDealersData_vehicleDealers_vehicleColor_images_image._();

  factory GVehicleDealersData_vehicleDealers_vehicleColor_images_image(
          [Function(
                  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder
                      b)
              updates]) =
      _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GVehicleDealersData_vehicleDealers_vehicleColor_images_image>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersVehicleColorImagesImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_vehicleColor_images_image.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_vehicleColor_images_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_vehicleColor_images_image.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_vehicleVariant
    implements
        Built<GVehicleDealersData_vehicleDealers_vehicleVariant,
            GVehicleDealersData_vehicleDealers_vehicleVariantBuilder> {
  GVehicleDealersData_vehicleDealers_vehicleVariant._();

  factory GVehicleDealersData_vehicleDealers_vehicleVariant(
      [Function(GVehicleDealersData_vehicleDealers_vehicleVariantBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers_vehicleVariant;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_vehicleVariantBuilder b) =>
      b..G__typename = 'VehicleVariant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i2.GDateTime? get modifiedAt;
  int? get price;
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle? get vehicle;
  static Serializer<GVehicleDealersData_vehicleDealers_vehicleVariant>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersVehicleVariantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_vehicleVariant.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_vehicleVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_vehicleVariant.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle
    implements
        Built<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle,
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder> {
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle._();

  factory GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle(
      [Function(
              GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder
                  b)
          updates]) = _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder b) =>
      b..G__typename = 'Vehicle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand? get brand;
  String? get name;
  String get id;
  String? get description;
  static Serializer<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersVehicleVariantVehicleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
    implements
        Built<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand,
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder> {
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand._();

  factory GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand(
          [Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder
                      b)
              updates]) =
      _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder
              b) =>
      b..G__typename = 'Brand';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersVehicleVariantVehicleBrandSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
            .serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
                .serializer,
            json,
          );
}

abstract class GVehicleDealersData_vehicleDealers_prices
    implements
        Built<GVehicleDealersData_vehicleDealers_prices,
            GVehicleDealersData_vehicleDealers_pricesBuilder> {
  GVehicleDealersData_vehicleDealers_prices._();

  factory GVehicleDealersData_vehicleDealers_prices(
      [Function(GVehicleDealersData_vehicleDealers_pricesBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers_prices;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_pricesBuilder b) =>
      b..G__typename = 'Price';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int? get amount;
  GVehicleDealersData_vehicleDealers_prices_category? get category;
  static Serializer<GVehicleDealersData_vehicleDealers_prices> get serializer =>
      _$gVehicleDealersDataVehicleDealersPricesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_prices.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_prices.serializer,
        json,
      );
}

abstract class GVehicleDealersData_vehicleDealers_prices_category
    implements
        Built<GVehicleDealersData_vehicleDealers_prices_category,
            GVehicleDealersData_vehicleDealers_prices_categoryBuilder> {
  GVehicleDealersData_vehicleDealers_prices_category._();

  factory GVehicleDealersData_vehicleDealers_prices_category(
      [Function(GVehicleDealersData_vehicleDealers_prices_categoryBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers_prices_category;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_prices_categoryBuilder b) =>
      b..G__typename = 'PriceCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GVehicleDealersData_vehicleDealers_prices_category>
      get serializer =>
          _$gVehicleDealersDataVehicleDealersPricesCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealersData_vehicleDealers_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_prices_category.serializer,
        json,
      );
}
