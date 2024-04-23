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

abstract class GVehicleVariantsData
    implements Built<GVehicleVariantsData, GVehicleVariantsDataBuilder> {
  GVehicleVariantsData._();

  factory GVehicleVariantsData(
          [Function(GVehicleVariantsDataBuilder b) updates]) =
      _$GVehicleVariantsData;

  static void _initializeBuilder(GVehicleVariantsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehicleVariantsData_vehicleVariants>? get vehicleVariants;
  static Serializer<GVehicleVariantsData> get serializer =>
      _$gVehicleVariantsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants
    implements
        Built<GVehicleVariantsData_vehicleVariants,
            GVehicleVariantsData_vehicleVariantsBuilder> {
  GVehicleVariantsData_vehicleVariants._();

  factory GVehicleVariantsData_vehicleVariants(
          [Function(GVehicleVariantsData_vehicleVariantsBuilder b) updates]) =
      _$GVehicleVariantsData_vehicleVariants;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariantsBuilder b) =>
      b..G__typename = 'VehicleVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GVehicleVariantsData_vehicleVariants_prices>? get prices;
  BuiltList<GVehicleVariantsData_vehicleVariants_colors>? get colors;
  String? get name;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  String get id;
  int? get totalPrice;
  GVehicleVariantsData_vehicleVariants_vehicle? get vehicle;
  static Serializer<GVehicleVariantsData_vehicleVariants> get serializer =>
      _$gVehicleVariantsDataVehicleVariantsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_prices
    implements
        Built<GVehicleVariantsData_vehicleVariants_prices,
            GVehicleVariantsData_vehicleVariants_pricesBuilder> {
  GVehicleVariantsData_vehicleVariants_prices._();

  factory GVehicleVariantsData_vehicleVariants_prices(
      [Function(GVehicleVariantsData_vehicleVariants_pricesBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_prices;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_pricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get amount;
  GVehicleVariantsData_vehicleVariants_prices_category? get category;
  static Serializer<GVehicleVariantsData_vehicleVariants_prices>
      get serializer => _$gVehicleVariantsDataVehicleVariantsPricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_prices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_prices.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_prices_category
    implements
        Built<GVehicleVariantsData_vehicleVariants_prices_category,
            GVehicleVariantsData_vehicleVariants_prices_categoryBuilder> {
  GVehicleVariantsData_vehicleVariants_prices_category._();

  factory GVehicleVariantsData_vehicleVariants_prices_category(
      [Function(GVehicleVariantsData_vehicleVariants_prices_categoryBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_prices_category;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_prices_categoryBuilder b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get description;
  static Serializer<GVehicleVariantsData_vehicleVariants_prices_category>
      get serializer =>
          _$gVehicleVariantsDataVehicleVariantsPricesCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_prices_category.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_colors
    implements
        Built<GVehicleVariantsData_vehicleVariants_colors,
            GVehicleVariantsData_vehicleVariants_colorsBuilder> {
  GVehicleVariantsData_vehicleVariants_colors._();

  factory GVehicleVariantsData_vehicleVariants_colors(
      [Function(GVehicleVariantsData_vehicleVariants_colorsBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_colors;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_colorsBuilder b) =>
      b..G__typename = 'VehicleColor';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get code;
  BuiltList<GVehicleVariantsData_vehicleVariants_colors_images>? get images;
  String? get name;
  static Serializer<GVehicleVariantsData_vehicleVariants_colors>
      get serializer => _$gVehicleVariantsDataVehicleVariantsColorsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_colors.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_colors? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_colors.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_colors_images
    implements
        Built<GVehicleVariantsData_vehicleVariants_colors_images,
            GVehicleVariantsData_vehicleVariants_colors_imagesBuilder> {
  GVehicleVariantsData_vehicleVariants_colors_images._();

  factory GVehicleVariantsData_vehicleVariants_colors_images(
      [Function(GVehicleVariantsData_vehicleVariants_colors_imagesBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_colors_images;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_colors_imagesBuilder b) =>
      b..G__typename = 'VehicleImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  GVehicleVariantsData_vehicleVariants_colors_images_image? get image;
  static Serializer<GVehicleVariantsData_vehicleVariants_colors_images>
      get serializer =>
          _$gVehicleVariantsDataVehicleVariantsColorsImagesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_colors_images.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_colors_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_colors_images.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_colors_images_image
    implements
        Built<GVehicleVariantsData_vehicleVariants_colors_images_image,
            GVehicleVariantsData_vehicleVariants_colors_images_imageBuilder> {
  GVehicleVariantsData_vehicleVariants_colors_images_image._();

  factory GVehicleVariantsData_vehicleVariants_colors_images_image(
      [Function(
              GVehicleVariantsData_vehicleVariants_colors_images_imageBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_colors_images_image;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_colors_images_imageBuilder b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  int get width;
  String get id;
  static Serializer<GVehicleVariantsData_vehicleVariants_colors_images_image>
      get serializer =>
          _$gVehicleVariantsDataVehicleVariantsColorsImagesImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_colors_images_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_colors_images_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_colors_images_image.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_vehicle
    implements
        Built<GVehicleVariantsData_vehicleVariants_vehicle,
            GVehicleVariantsData_vehicleVariants_vehicleBuilder> {
  GVehicleVariantsData_vehicleVariants_vehicle._();

  factory GVehicleVariantsData_vehicleVariants_vehicle(
      [Function(GVehicleVariantsData_vehicleVariants_vehicleBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_vehicle;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_vehicleBuilder b) =>
      b..G__typename = 'Vehicle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVehicleVariantsData_vehicleVariants_vehicle_brand? get brand;
  String? get name;
  String get id;
  GVehicleVariantsData_vehicleVariants_vehicle_type? get type;
  static Serializer<GVehicleVariantsData_vehicleVariants_vehicle>
      get serializer => _$gVehicleVariantsDataVehicleVariantsVehicleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_vehicle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_vehicle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_vehicle.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_vehicle_brand
    implements
        Built<GVehicleVariantsData_vehicleVariants_vehicle_brand,
            GVehicleVariantsData_vehicleVariants_vehicle_brandBuilder> {
  GVehicleVariantsData_vehicleVariants_vehicle_brand._();

  factory GVehicleVariantsData_vehicleVariants_vehicle_brand(
      [Function(GVehicleVariantsData_vehicleVariants_vehicle_brandBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_vehicle_brand;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_vehicle_brandBuilder b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GVehicleVariantsData_vehicleVariants_vehicle_brand>
      get serializer =>
          _$gVehicleVariantsDataVehicleVariantsVehicleBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_vehicle_brand.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_vehicle_brand? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_vehicle_brand.serializer,
        json,
      );
}

abstract class GVehicleVariantsData_vehicleVariants_vehicle_type
    implements
        Built<GVehicleVariantsData_vehicleVariants_vehicle_type,
            GVehicleVariantsData_vehicleVariants_vehicle_typeBuilder> {
  GVehicleVariantsData_vehicleVariants_vehicle_type._();

  factory GVehicleVariantsData_vehicleVariants_vehicle_type(
      [Function(GVehicleVariantsData_vehicleVariants_vehicle_typeBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants_vehicle_type;

  static void _initializeBuilder(
          GVehicleVariantsData_vehicleVariants_vehicle_typeBuilder b) =>
      b..G__typename = 'VehicleType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  static Serializer<GVehicleVariantsData_vehicleVariants_vehicle_type>
      get serializer =>
          _$gVehicleVariantsDataVehicleVariantsVehicleTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsData_vehicleVariants_vehicle_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsData_vehicleVariants_vehicle_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsData_vehicleVariants_vehicle_type.serializer,
        json,
      );
}

abstract class GVehicleVariantsCountData
    implements
        Built<GVehicleVariantsCountData, GVehicleVariantsCountDataBuilder> {
  GVehicleVariantsCountData._();

  factory GVehicleVariantsCountData(
          [Function(GVehicleVariantsCountDataBuilder b) updates]) =
      _$GVehicleVariantsCountData;

  static void _initializeBuilder(GVehicleVariantsCountDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get vehicleVariantsCount;
  static Serializer<GVehicleVariantsCountData> get serializer =>
      _$gVehicleVariantsCountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleVariantsCountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVariantsCountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleVariantsCountData.serializer,
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
  BuiltList<GVehicleDealersData_vehicleDealers_guarantees>? get guarantees;
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

abstract class GVehicleDealersData_vehicleDealers_guarantees
    implements
        Built<GVehicleDealersData_vehicleDealers_guarantees,
            GVehicleDealersData_vehicleDealers_guaranteesBuilder> {
  GVehicleDealersData_vehicleDealers_guarantees._();

  factory GVehicleDealersData_vehicleDealers_guarantees(
      [Function(GVehicleDealersData_vehicleDealers_guaranteesBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers_guarantees;

  static void _initializeBuilder(
          GVehicleDealersData_vehicleDealers_guaranteesBuilder b) =>
      b..G__typename = 'Guarantee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  String? get description;
  static Serializer<GVehicleDealersData_vehicleDealers_guarantees>
      get serializer => _$gVehicleDealersDataVehicleDealersGuaranteesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVehicleDealersData_vehicleDealers_guarantees.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleDealersData_vehicleDealers_guarantees? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVehicleDealersData_vehicleDealers_guarantees.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerData
    implements
        Built<GCreateVehicleDealerData, GCreateVehicleDealerDataBuilder> {
  GCreateVehicleDealerData._();

  factory GCreateVehicleDealerData(
          [Function(GCreateVehicleDealerDataBuilder b) updates]) =
      _$GCreateVehicleDealerData;

  static void _initializeBuilder(GCreateVehicleDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateVehicleDealerData_createVehicleDealer? get createVehicleDealer;
  static Serializer<GCreateVehicleDealerData> get serializer =>
      _$gCreateVehicleDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVehicleDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateVehicleDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVehicleDealerData.serializer,
        json,
      );
}

abstract class GCreateVehicleDealerData_createVehicleDealer
    implements
        Built<GCreateVehicleDealerData_createVehicleDealer,
            GCreateVehicleDealerData_createVehicleDealerBuilder> {
  GCreateVehicleDealerData_createVehicleDealer._();

  factory GCreateVehicleDealerData_createVehicleDealer(
      [Function(GCreateVehicleDealerData_createVehicleDealerBuilder b)
          updates]) = _$GCreateVehicleDealerData_createVehicleDealer;

  static void _initializeBuilder(
          GCreateVehicleDealerData_createVehicleDealerBuilder b) =>
      b..G__typename = 'VehicleDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateVehicleDealerData_createVehicleDealer>
      get serializer => _$gCreateVehicleDealerDataCreateVehicleDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateVehicleDealerData_createVehicleDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateVehicleDealerData_createVehicleDealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateVehicleDealerData_createVehicleDealer.serializer,
        json,
      );
}

abstract class GPriceCategoriesData
    implements Built<GPriceCategoriesData, GPriceCategoriesDataBuilder> {
  GPriceCategoriesData._();

  factory GPriceCategoriesData(
          [Function(GPriceCategoriesDataBuilder b) updates]) =
      _$GPriceCategoriesData;

  static void _initializeBuilder(GPriceCategoriesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPriceCategoriesData_priceCategories>? get priceCategories;
  static Serializer<GPriceCategoriesData> get serializer =>
      _$gPriceCategoriesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPriceCategoriesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPriceCategoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPriceCategoriesData.serializer,
        json,
      );
}

abstract class GPriceCategoriesData_priceCategories
    implements
        Built<GPriceCategoriesData_priceCategories,
            GPriceCategoriesData_priceCategoriesBuilder> {
  GPriceCategoriesData_priceCategories._();

  factory GPriceCategoriesData_priceCategories(
          [Function(GPriceCategoriesData_priceCategoriesBuilder b) updates]) =
      _$GPriceCategoriesData_priceCategories;

  static void _initializeBuilder(
          GPriceCategoriesData_priceCategoriesBuilder b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  _i2.GDateTime? get createdAt;
  _i2.GDateTime? get modifiedAt;
  static Serializer<GPriceCategoriesData_priceCategories> get serializer =>
      _$gPriceCategoriesDataPriceCategoriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPriceCategoriesData_priceCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPriceCategoriesData_priceCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPriceCategoriesData_priceCategories.serializer,
        json,
      );
}
