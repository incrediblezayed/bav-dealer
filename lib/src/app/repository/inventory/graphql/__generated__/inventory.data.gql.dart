// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i3;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'inventory.data.gql.g.dart';

abstract class GProductVariantsData
    implements Built<GProductVariantsData, GProductVariantsDataBuilder> {
  GProductVariantsData._();

  factory GProductVariantsData(
          [Function(GProductVariantsDataBuilder b) updates]) =
      _$GProductVariantsData;

  static void _initializeBuilder(GProductVariantsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProductVariantsData_productVariants>? get productVariants;
  static Serializer<GProductVariantsData> get serializer =>
      _$gProductVariantsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants
    implements
        Built<GProductVariantsData_productVariants,
            GProductVariantsData_productVariantsBuilder> {
  GProductVariantsData_productVariants._();

  factory GProductVariantsData_productVariants(
          [Function(GProductVariantsData_productVariantsBuilder b) updates]) =
      _$GProductVariantsData_productVariants;

  static void _initializeBuilder(
          GProductVariantsData_productVariantsBuilder b) =>
      b..G__typename = 'ProductVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i2.JsonObject? get availableProductDealer;
  BuiltList<GProductVariantsData_productVariants_prices>? get prices;
  BuiltList<GProductVariantsData_productVariants_specifications>?
      get specifications;
  int? get totalPrice;
  BuiltList<GProductVariantsData_productVariants_gallery>? get gallery;
  GProductVariantsData_productVariants_product? get product;
  BuiltList<GProductVariantsData_productVariants_tags>? get tags;
  BuiltList<GProductVariantsData_productVariants_images>? get images;
  static Serializer<GProductVariantsData_productVariants> get serializer =>
      _$gProductVariantsDataProductVariantsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_prices
    implements
        Built<GProductVariantsData_productVariants_prices,
            GProductVariantsData_productVariants_pricesBuilder> {
  GProductVariantsData_productVariants_prices._();

  factory GProductVariantsData_productVariants_prices(
      [Function(GProductVariantsData_productVariants_pricesBuilder b)
          updates]) = _$GProductVariantsData_productVariants_prices;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_pricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get amount;
  GProductVariantsData_productVariants_prices_category? get category;
  static Serializer<GProductVariantsData_productVariants_prices>
      get serializer => _$gProductVariantsDataProductVariantsPricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_prices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_prices.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_prices_category
    implements
        Built<GProductVariantsData_productVariants_prices_category,
            GProductVariantsData_productVariants_prices_categoryBuilder> {
  GProductVariantsData_productVariants_prices_category._();

  factory GProductVariantsData_productVariants_prices_category(
      [Function(GProductVariantsData_productVariants_prices_categoryBuilder b)
          updates]) = _$GProductVariantsData_productVariants_prices_category;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_prices_categoryBuilder b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get description;
  static Serializer<GProductVariantsData_productVariants_prices_category>
      get serializer =>
          _$gProductVariantsDataProductVariantsPricesCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_prices_category.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_specifications
    implements
        Built<GProductVariantsData_productVariants_specifications,
            GProductVariantsData_productVariants_specificationsBuilder> {
  GProductVariantsData_productVariants_specifications._();

  factory GProductVariantsData_productVariants_specifications(
      [Function(GProductVariantsData_productVariants_specificationsBuilder b)
          updates]) = _$GProductVariantsData_productVariants_specifications;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_specificationsBuilder b) =>
      b..G__typename = 'ProductSpecification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool? get isKeyFeature;
  String? get name;
  GProductVariantsData_productVariants_specifications_specification?
      get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GProductVariantsData_productVariants_specifications_category? get category;
  static Serializer<GProductVariantsData_productVariants_specifications>
      get serializer =>
          _$gProductVariantsDataProductVariantsSpecificationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_specifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_specifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_specifications.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_specifications_specification
    implements
        Built<GProductVariantsData_productVariants_specifications_specification,
            GProductVariantsData_productVariants_specifications_specificationBuilder> {
  GProductVariantsData_productVariants_specifications_specification._();

  factory GProductVariantsData_productVariants_specifications_specification(
          [Function(
                  GProductVariantsData_productVariants_specifications_specificationBuilder
                      b)
              updates]) =
      _$GProductVariantsData_productVariants_specifications_specification;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_specifications_specificationBuilder
              b) =>
      b..G__typename = 'Specification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantsData_productVariants_specifications_specification_image?
      get image;
  String get id;
  String? get name;
  String? get description;
  String? get unit;
  static Serializer<
          GProductVariantsData_productVariants_specifications_specification>
      get serializer =>
          _$gProductVariantsDataProductVariantsSpecificationsSpecificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_specifications_specification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_specifications_specification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantsData_productVariants_specifications_specification
                .serializer,
            json,
          );
}

abstract class GProductVariantsData_productVariants_specifications_specification_image
    implements
        Built<
            GProductVariantsData_productVariants_specifications_specification_image,
            GProductVariantsData_productVariants_specifications_specification_imageBuilder> {
  GProductVariantsData_productVariants_specifications_specification_image._();

  factory GProductVariantsData_productVariants_specifications_specification_image(
          [Function(
                  GProductVariantsData_productVariants_specifications_specification_imageBuilder
                      b)
              updates]) =
      _$GProductVariantsData_productVariants_specifications_specification_image;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_specifications_specification_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GProductVariantsData_productVariants_specifications_specification_image>
      get serializer =>
          _$gProductVariantsDataProductVariantsSpecificationsSpecificationImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_specifications_specification_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_specifications_specification_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantsData_productVariants_specifications_specification_image
                .serializer,
            json,
          );
}

abstract class GProductVariantsData_productVariants_specifications_category
    implements
        Built<GProductVariantsData_productVariants_specifications_category,
            GProductVariantsData_productVariants_specifications_categoryBuilder> {
  GProductVariantsData_productVariants_specifications_category._();

  factory GProductVariantsData_productVariants_specifications_category(
          [Function(
                  GProductVariantsData_productVariants_specifications_categoryBuilder
                      b)
              updates]) =
      _$GProductVariantsData_productVariants_specifications_category;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_specifications_categoryBuilder
              b) =>
      b..G__typename = 'SpecificationCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  static Serializer<
          GProductVariantsData_productVariants_specifications_category>
      get serializer =>
          _$gProductVariantsDataProductVariantsSpecificationsCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_specifications_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_specifications_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_specifications_category.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_gallery
    implements
        Built<GProductVariantsData_productVariants_gallery,
            GProductVariantsData_productVariants_galleryBuilder> {
  GProductVariantsData_productVariants_gallery._();

  factory GProductVariantsData_productVariants_gallery(
      [Function(GProductVariantsData_productVariants_galleryBuilder b)
          updates]) = _$GProductVariantsData_productVariants_gallery;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_galleryBuilder b) =>
      b..G__typename = 'ProductGalleryItem';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.JsonObject? get file;
  String? get type;
  int? get index;
  static Serializer<GProductVariantsData_productVariants_gallery>
      get serializer => _$gProductVariantsDataProductVariantsGallerySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_gallery.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_gallery? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_gallery.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_product
    implements
        Built<GProductVariantsData_productVariants_product,
            GProductVariantsData_productVariants_productBuilder> {
  GProductVariantsData_productVariants_product._();

  factory GProductVariantsData_productVariants_product(
      [Function(GProductVariantsData_productVariants_productBuilder b)
          updates]) = _$GProductVariantsData_productVariants_product;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_productBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantsData_productVariants_product_brand? get brand;
  String? get name;
  String? get description;
  String? get longDescription;
  String get id;
  GProductVariantsData_productVariants_product_type? get type;
  BuiltList<GProductVariantsData_productVariants_product_specifications>?
      get specifications;
  static Serializer<GProductVariantsData_productVariants_product>
      get serializer => _$gProductVariantsDataProductVariantsProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_product.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_product_brand
    implements
        Built<GProductVariantsData_productVariants_product_brand,
            GProductVariantsData_productVariants_product_brandBuilder> {
  GProductVariantsData_productVariants_product_brand._();

  factory GProductVariantsData_productVariants_product_brand(
      [Function(GProductVariantsData_productVariants_product_brandBuilder b)
          updates]) = _$GProductVariantsData_productVariants_product_brand;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_brandBuilder b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  GProductVariantsData_productVariants_product_brand_logo? get logo;
  static Serializer<GProductVariantsData_productVariants_product_brand>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_brand.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_brand? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_product_brand.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_product_brand_logo
    implements
        Built<GProductVariantsData_productVariants_product_brand_logo,
            GProductVariantsData_productVariants_product_brand_logoBuilder> {
  GProductVariantsData_productVariants_product_brand_logo._();

  factory GProductVariantsData_productVariants_product_brand_logo(
      [Function(
              GProductVariantsData_productVariants_product_brand_logoBuilder b)
          updates]) = _$GProductVariantsData_productVariants_product_brand_logo;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_brand_logoBuilder b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i3.GImageExtension get extension;
  String get url;
  static Serializer<GProductVariantsData_productVariants_product_brand_logo>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductBrandLogoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_brand_logo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_brand_logo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_product_brand_logo.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_product_type
    implements
        Built<GProductVariantsData_productVariants_product_type,
            GProductVariantsData_productVariants_product_typeBuilder> {
  GProductVariantsData_productVariants_product_type._();

  factory GProductVariantsData_productVariants_product_type(
      [Function(GProductVariantsData_productVariants_product_typeBuilder b)
          updates]) = _$GProductVariantsData_productVariants_product_type;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_typeBuilder b) =>
      b..G__typename = 'ProductType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  static Serializer<GProductVariantsData_productVariants_product_type>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_product_type.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_product_specifications
    implements
        Built<GProductVariantsData_productVariants_product_specifications,
            GProductVariantsData_productVariants_product_specificationsBuilder> {
  GProductVariantsData_productVariants_product_specifications._();

  factory GProductVariantsData_productVariants_product_specifications(
      [Function(
              GProductVariantsData_productVariants_product_specificationsBuilder
                  b)
          updates]) = _$GProductVariantsData_productVariants_product_specifications;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_specificationsBuilder
              b) =>
      b..G__typename = 'ProductSpecification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool? get isKeyFeature;
  String? get name;
  GProductVariantsData_productVariants_product_specifications_specification?
      get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GProductVariantsData_productVariants_product_specifications_category?
      get category;
  static Serializer<GProductVariantsData_productVariants_product_specifications>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductSpecificationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_specifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_specifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_product_specifications.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_product_specifications_specification
    implements
        Built<
            GProductVariantsData_productVariants_product_specifications_specification,
            GProductVariantsData_productVariants_product_specifications_specificationBuilder> {
  GProductVariantsData_productVariants_product_specifications_specification._();

  factory GProductVariantsData_productVariants_product_specifications_specification(
          [Function(
                  GProductVariantsData_productVariants_product_specifications_specificationBuilder
                      b)
              updates]) =
      _$GProductVariantsData_productVariants_product_specifications_specification;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_specifications_specificationBuilder
              b) =>
      b..G__typename = 'Specification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantsData_productVariants_product_specifications_specification_image?
      get image;
  String get id;
  String? get name;
  String? get description;
  String? get unit;
  static Serializer<
          GProductVariantsData_productVariants_product_specifications_specification>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductSpecificationsSpecificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_specifications_specification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_specifications_specification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantsData_productVariants_product_specifications_specification
                .serializer,
            json,
          );
}

abstract class GProductVariantsData_productVariants_product_specifications_specification_image
    implements
        Built<
            GProductVariantsData_productVariants_product_specifications_specification_image,
            GProductVariantsData_productVariants_product_specifications_specification_imageBuilder> {
  GProductVariantsData_productVariants_product_specifications_specification_image._();

  factory GProductVariantsData_productVariants_product_specifications_specification_image(
          [Function(
                  GProductVariantsData_productVariants_product_specifications_specification_imageBuilder
                      b)
              updates]) =
      _$GProductVariantsData_productVariants_product_specifications_specification_image;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_specifications_specification_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GProductVariantsData_productVariants_product_specifications_specification_image>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductSpecificationsSpecificationImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_specifications_specification_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_specifications_specification_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantsData_productVariants_product_specifications_specification_image
                .serializer,
            json,
          );
}

abstract class GProductVariantsData_productVariants_product_specifications_category
    implements
        Built<
            GProductVariantsData_productVariants_product_specifications_category,
            GProductVariantsData_productVariants_product_specifications_categoryBuilder> {
  GProductVariantsData_productVariants_product_specifications_category._();

  factory GProductVariantsData_productVariants_product_specifications_category(
          [Function(
                  GProductVariantsData_productVariants_product_specifications_categoryBuilder
                      b)
              updates]) =
      _$GProductVariantsData_productVariants_product_specifications_category;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_product_specifications_categoryBuilder
              b) =>
      b..G__typename = 'SpecificationCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  static Serializer<
          GProductVariantsData_productVariants_product_specifications_category>
      get serializer =>
          _$gProductVariantsDataProductVariantsProductSpecificationsCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_product_specifications_category
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_product_specifications_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantsData_productVariants_product_specifications_category
                .serializer,
            json,
          );
}

abstract class GProductVariantsData_productVariants_tags
    implements
        Built<GProductVariantsData_productVariants_tags,
            GProductVariantsData_productVariants_tagsBuilder> {
  GProductVariantsData_productVariants_tags._();

  factory GProductVariantsData_productVariants_tags(
      [Function(GProductVariantsData_productVariants_tagsBuilder b)
          updates]) = _$GProductVariantsData_productVariants_tags;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_tagsBuilder b) =>
      b..G__typename = 'Tag';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  String? get description;
  static Serializer<GProductVariantsData_productVariants_tags> get serializer =>
      _$gProductVariantsDataProductVariantsTagsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_tags.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_tags? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_tags.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_images
    implements
        Built<GProductVariantsData_productVariants_images,
            GProductVariantsData_productVariants_imagesBuilder> {
  GProductVariantsData_productVariants_images._();

  factory GProductVariantsData_productVariants_images(
      [Function(GProductVariantsData_productVariants_imagesBuilder b)
          updates]) = _$GProductVariantsData_productVariants_images;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_imagesBuilder b) =>
      b..G__typename = 'ProductImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  GProductVariantsData_productVariants_images_image? get image;
  static Serializer<GProductVariantsData_productVariants_images>
      get serializer => _$gProductVariantsDataProductVariantsImagesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_images.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_images.serializer,
        json,
      );
}

abstract class GProductVariantsData_productVariants_images_image
    implements
        Built<GProductVariantsData_productVariants_images_image,
            GProductVariantsData_productVariants_images_imageBuilder> {
  GProductVariantsData_productVariants_images_image._();

  factory GProductVariantsData_productVariants_images_image(
      [Function(GProductVariantsData_productVariants_images_imageBuilder b)
          updates]) = _$GProductVariantsData_productVariants_images_image;

  static void _initializeBuilder(
          GProductVariantsData_productVariants_images_imageBuilder b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<GProductVariantsData_productVariants_images_image>
      get serializer =>
          _$gProductVariantsDataProductVariantsImagesImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsData_productVariants_images_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsData_productVariants_images_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsData_productVariants_images_image.serializer,
        json,
      );
}

abstract class GProductVariantsCountData
    implements
        Built<GProductVariantsCountData, GProductVariantsCountDataBuilder> {
  GProductVariantsCountData._();

  factory GProductVariantsCountData(
          [Function(GProductVariantsCountDataBuilder b) updates]) =
      _$GProductVariantsCountData;

  static void _initializeBuilder(GProductVariantsCountDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get productVariantsCount;
  static Serializer<GProductVariantsCountData> get serializer =>
      _$gProductVariantsCountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantsCountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantsCountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantsCountData.serializer,
        json,
      );
}

abstract class GProductVariantData
    implements Built<GProductVariantData, GProductVariantDataBuilder> {
  GProductVariantData._();

  factory GProductVariantData(
      [Function(GProductVariantDataBuilder b) updates]) = _$GProductVariantData;

  static void _initializeBuilder(GProductVariantDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantData_productVariant? get productVariant;
  static Serializer<GProductVariantData> get serializer =>
      _$gProductVariantDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant
    implements
        Built<GProductVariantData_productVariant,
            GProductVariantData_productVariantBuilder> {
  GProductVariantData_productVariant._();

  factory GProductVariantData_productVariant(
          [Function(GProductVariantData_productVariantBuilder b) updates]) =
      _$GProductVariantData_productVariant;

  static void _initializeBuilder(GProductVariantData_productVariantBuilder b) =>
      b..G__typename = 'ProductVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i2.JsonObject? get availableProductDealer;
  BuiltList<GProductVariantData_productVariant_prices>? get prices;
  BuiltList<GProductVariantData_productVariant_specifications>?
      get specifications;
  int? get totalPrice;
  BuiltList<GProductVariantData_productVariant_gallery>? get gallery;
  GProductVariantData_productVariant_product? get product;
  BuiltList<GProductVariantData_productVariant_tags>? get tags;
  BuiltList<GProductVariantData_productVariant_images>? get images;
  static Serializer<GProductVariantData_productVariant> get serializer =>
      _$gProductVariantDataProductVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_prices
    implements
        Built<GProductVariantData_productVariant_prices,
            GProductVariantData_productVariant_pricesBuilder> {
  GProductVariantData_productVariant_prices._();

  factory GProductVariantData_productVariant_prices(
      [Function(GProductVariantData_productVariant_pricesBuilder b)
          updates]) = _$GProductVariantData_productVariant_prices;

  static void _initializeBuilder(
          GProductVariantData_productVariant_pricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get amount;
  GProductVariantData_productVariant_prices_category? get category;
  static Serializer<GProductVariantData_productVariant_prices> get serializer =>
      _$gProductVariantDataProductVariantPricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_prices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_prices.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_prices_category
    implements
        Built<GProductVariantData_productVariant_prices_category,
            GProductVariantData_productVariant_prices_categoryBuilder> {
  GProductVariantData_productVariant_prices_category._();

  factory GProductVariantData_productVariant_prices_category(
      [Function(GProductVariantData_productVariant_prices_categoryBuilder b)
          updates]) = _$GProductVariantData_productVariant_prices_category;

  static void _initializeBuilder(
          GProductVariantData_productVariant_prices_categoryBuilder b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get description;
  static Serializer<GProductVariantData_productVariant_prices_category>
      get serializer =>
          _$gProductVariantDataProductVariantPricesCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_prices_category.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_specifications
    implements
        Built<GProductVariantData_productVariant_specifications,
            GProductVariantData_productVariant_specificationsBuilder> {
  GProductVariantData_productVariant_specifications._();

  factory GProductVariantData_productVariant_specifications(
      [Function(GProductVariantData_productVariant_specificationsBuilder b)
          updates]) = _$GProductVariantData_productVariant_specifications;

  static void _initializeBuilder(
          GProductVariantData_productVariant_specificationsBuilder b) =>
      b..G__typename = 'ProductSpecification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool? get isKeyFeature;
  String? get name;
  GProductVariantData_productVariant_specifications_specification?
      get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GProductVariantData_productVariant_specifications_category? get category;
  static Serializer<GProductVariantData_productVariant_specifications>
      get serializer =>
          _$gProductVariantDataProductVariantSpecificationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_specifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_specifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_specifications.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_specifications_specification
    implements
        Built<GProductVariantData_productVariant_specifications_specification,
            GProductVariantData_productVariant_specifications_specificationBuilder> {
  GProductVariantData_productVariant_specifications_specification._();

  factory GProductVariantData_productVariant_specifications_specification(
          [Function(
                  GProductVariantData_productVariant_specifications_specificationBuilder
                      b)
              updates]) =
      _$GProductVariantData_productVariant_specifications_specification;

  static void _initializeBuilder(
          GProductVariantData_productVariant_specifications_specificationBuilder
              b) =>
      b..G__typename = 'Specification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantData_productVariant_specifications_specification_image?
      get image;
  String get id;
  String? get name;
  String? get description;
  String? get unit;
  static Serializer<
          GProductVariantData_productVariant_specifications_specification>
      get serializer =>
          _$gProductVariantDataProductVariantSpecificationsSpecificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_specifications_specification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_specifications_specification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantData_productVariant_specifications_specification
                .serializer,
            json,
          );
}

abstract class GProductVariantData_productVariant_specifications_specification_image
    implements
        Built<
            GProductVariantData_productVariant_specifications_specification_image,
            GProductVariantData_productVariant_specifications_specification_imageBuilder> {
  GProductVariantData_productVariant_specifications_specification_image._();

  factory GProductVariantData_productVariant_specifications_specification_image(
          [Function(
                  GProductVariantData_productVariant_specifications_specification_imageBuilder
                      b)
              updates]) =
      _$GProductVariantData_productVariant_specifications_specification_image;

  static void _initializeBuilder(
          GProductVariantData_productVariant_specifications_specification_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GProductVariantData_productVariant_specifications_specification_image>
      get serializer =>
          _$gProductVariantDataProductVariantSpecificationsSpecificationImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_specifications_specification_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_specifications_specification_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantData_productVariant_specifications_specification_image
                .serializer,
            json,
          );
}

abstract class GProductVariantData_productVariant_specifications_category
    implements
        Built<GProductVariantData_productVariant_specifications_category,
            GProductVariantData_productVariant_specifications_categoryBuilder> {
  GProductVariantData_productVariant_specifications_category._();

  factory GProductVariantData_productVariant_specifications_category(
      [Function(
              GProductVariantData_productVariant_specifications_categoryBuilder
                  b)
          updates]) = _$GProductVariantData_productVariant_specifications_category;

  static void _initializeBuilder(
          GProductVariantData_productVariant_specifications_categoryBuilder
              b) =>
      b..G__typename = 'SpecificationCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  static Serializer<GProductVariantData_productVariant_specifications_category>
      get serializer =>
          _$gProductVariantDataProductVariantSpecificationsCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_specifications_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_specifications_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_specifications_category.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_gallery
    implements
        Built<GProductVariantData_productVariant_gallery,
            GProductVariantData_productVariant_galleryBuilder> {
  GProductVariantData_productVariant_gallery._();

  factory GProductVariantData_productVariant_gallery(
      [Function(GProductVariantData_productVariant_galleryBuilder b)
          updates]) = _$GProductVariantData_productVariant_gallery;

  static void _initializeBuilder(
          GProductVariantData_productVariant_galleryBuilder b) =>
      b..G__typename = 'ProductGalleryItem';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.JsonObject? get file;
  String? get type;
  int? get index;
  static Serializer<GProductVariantData_productVariant_gallery>
      get serializer => _$gProductVariantDataProductVariantGallerySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_gallery.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_gallery? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_gallery.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_product
    implements
        Built<GProductVariantData_productVariant_product,
            GProductVariantData_productVariant_productBuilder> {
  GProductVariantData_productVariant_product._();

  factory GProductVariantData_productVariant_product(
      [Function(GProductVariantData_productVariant_productBuilder b)
          updates]) = _$GProductVariantData_productVariant_product;

  static void _initializeBuilder(
          GProductVariantData_productVariant_productBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantData_productVariant_product_brand? get brand;
  String? get name;
  String? get description;
  String? get longDescription;
  String get id;
  GProductVariantData_productVariant_product_type? get type;
  BuiltList<GProductVariantData_productVariant_product_specifications>?
      get specifications;
  static Serializer<GProductVariantData_productVariant_product>
      get serializer => _$gProductVariantDataProductVariantProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_product.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_product_brand
    implements
        Built<GProductVariantData_productVariant_product_brand,
            GProductVariantData_productVariant_product_brandBuilder> {
  GProductVariantData_productVariant_product_brand._();

  factory GProductVariantData_productVariant_product_brand(
      [Function(GProductVariantData_productVariant_product_brandBuilder b)
          updates]) = _$GProductVariantData_productVariant_product_brand;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_brandBuilder b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  GProductVariantData_productVariant_product_brand_logo? get logo;
  static Serializer<GProductVariantData_productVariant_product_brand>
      get serializer =>
          _$gProductVariantDataProductVariantProductBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_brand.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_brand? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_product_brand.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_product_brand_logo
    implements
        Built<GProductVariantData_productVariant_product_brand_logo,
            GProductVariantData_productVariant_product_brand_logoBuilder> {
  GProductVariantData_productVariant_product_brand_logo._();

  factory GProductVariantData_productVariant_product_brand_logo(
      [Function(GProductVariantData_productVariant_product_brand_logoBuilder b)
          updates]) = _$GProductVariantData_productVariant_product_brand_logo;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_brand_logoBuilder b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i3.GImageExtension get extension;
  String get url;
  static Serializer<GProductVariantData_productVariant_product_brand_logo>
      get serializer =>
          _$gProductVariantDataProductVariantProductBrandLogoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_brand_logo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_brand_logo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_product_brand_logo.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_product_type
    implements
        Built<GProductVariantData_productVariant_product_type,
            GProductVariantData_productVariant_product_typeBuilder> {
  GProductVariantData_productVariant_product_type._();

  factory GProductVariantData_productVariant_product_type(
      [Function(GProductVariantData_productVariant_product_typeBuilder b)
          updates]) = _$GProductVariantData_productVariant_product_type;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_typeBuilder b) =>
      b..G__typename = 'ProductType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  static Serializer<GProductVariantData_productVariant_product_type>
      get serializer =>
          _$gProductVariantDataProductVariantProductTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_type.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_type? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_product_type.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_product_specifications
    implements
        Built<GProductVariantData_productVariant_product_specifications,
            GProductVariantData_productVariant_product_specificationsBuilder> {
  GProductVariantData_productVariant_product_specifications._();

  factory GProductVariantData_productVariant_product_specifications(
      [Function(
              GProductVariantData_productVariant_product_specificationsBuilder
                  b)
          updates]) = _$GProductVariantData_productVariant_product_specifications;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_specificationsBuilder b) =>
      b..G__typename = 'ProductSpecification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool? get isKeyFeature;
  String? get name;
  GProductVariantData_productVariant_product_specifications_specification?
      get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GProductVariantData_productVariant_product_specifications_category?
      get category;
  static Serializer<GProductVariantData_productVariant_product_specifications>
      get serializer =>
          _$gProductVariantDataProductVariantProductSpecificationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_specifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_specifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_product_specifications.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_product_specifications_specification
    implements
        Built<
            GProductVariantData_productVariant_product_specifications_specification,
            GProductVariantData_productVariant_product_specifications_specificationBuilder> {
  GProductVariantData_productVariant_product_specifications_specification._();

  factory GProductVariantData_productVariant_product_specifications_specification(
          [Function(
                  GProductVariantData_productVariant_product_specifications_specificationBuilder
                      b)
              updates]) =
      _$GProductVariantData_productVariant_product_specifications_specification;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_specifications_specificationBuilder
              b) =>
      b..G__typename = 'Specification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductVariantData_productVariant_product_specifications_specification_image?
      get image;
  String get id;
  String? get name;
  String? get description;
  String? get unit;
  static Serializer<
          GProductVariantData_productVariant_product_specifications_specification>
      get serializer =>
          _$gProductVariantDataProductVariantProductSpecificationsSpecificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_specifications_specification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_specifications_specification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantData_productVariant_product_specifications_specification
                .serializer,
            json,
          );
}

abstract class GProductVariantData_productVariant_product_specifications_specification_image
    implements
        Built<
            GProductVariantData_productVariant_product_specifications_specification_image,
            GProductVariantData_productVariant_product_specifications_specification_imageBuilder> {
  GProductVariantData_productVariant_product_specifications_specification_image._();

  factory GProductVariantData_productVariant_product_specifications_specification_image(
          [Function(
                  GProductVariantData_productVariant_product_specifications_specification_imageBuilder
                      b)
              updates]) =
      _$GProductVariantData_productVariant_product_specifications_specification_image;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_specifications_specification_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GProductVariantData_productVariant_product_specifications_specification_image>
      get serializer =>
          _$gProductVariantDataProductVariantProductSpecificationsSpecificationImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_specifications_specification_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_specifications_specification_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantData_productVariant_product_specifications_specification_image
                .serializer,
            json,
          );
}

abstract class GProductVariantData_productVariant_product_specifications_category
    implements
        Built<
            GProductVariantData_productVariant_product_specifications_category,
            GProductVariantData_productVariant_product_specifications_categoryBuilder> {
  GProductVariantData_productVariant_product_specifications_category._();

  factory GProductVariantData_productVariant_product_specifications_category(
          [Function(
                  GProductVariantData_productVariant_product_specifications_categoryBuilder
                      b)
              updates]) =
      _$GProductVariantData_productVariant_product_specifications_category;

  static void _initializeBuilder(
          GProductVariantData_productVariant_product_specifications_categoryBuilder
              b) =>
      b..G__typename = 'SpecificationCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  static Serializer<
          GProductVariantData_productVariant_product_specifications_category>
      get serializer =>
          _$gProductVariantDataProductVariantProductSpecificationsCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_product_specifications_category
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_product_specifications_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductVariantData_productVariant_product_specifications_category
                .serializer,
            json,
          );
}

abstract class GProductVariantData_productVariant_tags
    implements
        Built<GProductVariantData_productVariant_tags,
            GProductVariantData_productVariant_tagsBuilder> {
  GProductVariantData_productVariant_tags._();

  factory GProductVariantData_productVariant_tags(
      [Function(GProductVariantData_productVariant_tagsBuilder b)
          updates]) = _$GProductVariantData_productVariant_tags;

  static void _initializeBuilder(
          GProductVariantData_productVariant_tagsBuilder b) =>
      b..G__typename = 'Tag';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  String? get description;
  static Serializer<GProductVariantData_productVariant_tags> get serializer =>
      _$gProductVariantDataProductVariantTagsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_tags.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_tags? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_tags.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_images
    implements
        Built<GProductVariantData_productVariant_images,
            GProductVariantData_productVariant_imagesBuilder> {
  GProductVariantData_productVariant_images._();

  factory GProductVariantData_productVariant_images(
      [Function(GProductVariantData_productVariant_imagesBuilder b)
          updates]) = _$GProductVariantData_productVariant_images;

  static void _initializeBuilder(
          GProductVariantData_productVariant_imagesBuilder b) =>
      b..G__typename = 'ProductImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  GProductVariantData_productVariant_images_image? get image;
  static Serializer<GProductVariantData_productVariant_images> get serializer =>
      _$gProductVariantDataProductVariantImagesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_images.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_images.serializer,
        json,
      );
}

abstract class GProductVariantData_productVariant_images_image
    implements
        Built<GProductVariantData_productVariant_images_image,
            GProductVariantData_productVariant_images_imageBuilder> {
  GProductVariantData_productVariant_images_image._();

  factory GProductVariantData_productVariant_images_image(
      [Function(GProductVariantData_productVariant_images_imageBuilder b)
          updates]) = _$GProductVariantData_productVariant_images_image;

  static void _initializeBuilder(
          GProductVariantData_productVariant_images_imageBuilder b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<GProductVariantData_productVariant_images_image>
      get serializer =>
          _$gProductVariantDataProductVariantImagesImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductVariantData_productVariant_images_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantData_productVariant_images_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductVariantData_productVariant_images_image.serializer,
        json,
      );
}

abstract class GProductTypesData
    implements Built<GProductTypesData, GProductTypesDataBuilder> {
  GProductTypesData._();

  factory GProductTypesData([Function(GProductTypesDataBuilder b) updates]) =
      _$GProductTypesData;

  static void _initializeBuilder(GProductTypesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProductTypesData_productTypes>? get productTypes;
  static Serializer<GProductTypesData> get serializer =>
      _$gProductTypesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductTypesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductTypesData.serializer,
        json,
      );
}

abstract class GProductTypesData_productTypes
    implements
        Built<GProductTypesData_productTypes,
            GProductTypesData_productTypesBuilder> {
  GProductTypesData_productTypes._();

  factory GProductTypesData_productTypes(
          [Function(GProductTypesData_productTypesBuilder b) updates]) =
      _$GProductTypesData_productTypes;

  static void _initializeBuilder(GProductTypesData_productTypesBuilder b) =>
      b..G__typename = 'ProductType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GProductTypesData_productTypes> get serializer =>
      _$gProductTypesDataProductTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductTypesData_productTypes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypesData_productTypes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductTypesData_productTypes.serializer,
        json,
      );
}

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
  _i3.GDateTime? get modifiedAt;
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
  _i3.GDateTime? get createdAt;
  _i3.GDateTime? get modifiedAt;
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

abstract class GUpdateVehicleDealerData
    implements
        Built<GUpdateVehicleDealerData, GUpdateVehicleDealerDataBuilder> {
  GUpdateVehicleDealerData._();

  factory GUpdateVehicleDealerData(
          [Function(GUpdateVehicleDealerDataBuilder b) updates]) =
      _$GUpdateVehicleDealerData;

  static void _initializeBuilder(GUpdateVehicleDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateVehicleDealerData_updateVehicleDealer? get updateVehicleDealer;
  static Serializer<GUpdateVehicleDealerData> get serializer =>
      _$gUpdateVehicleDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer,
            GUpdateVehicleDealerData_updateVehicleDealerBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer._();

  factory GUpdateVehicleDealerData_updateVehicleDealer(
      [Function(GUpdateVehicleDealerData_updateVehicleDealerBuilder b)
          updates]) = _$GUpdateVehicleDealerData_updateVehicleDealer;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealerBuilder b) =>
      b..G__typename = 'VehicleDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor? get vehicleColor;
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant?
      get vehicleVariant;
  String get id;
  int? get stock;
  BuiltList<GUpdateVehicleDealerData_updateVehicleDealer_prices>? get prices;
  int? get totalPrice;
  BuiltList<GUpdateVehicleDealerData_updateVehicleDealer_guarantees>?
      get guarantees;
  static Serializer<GUpdateVehicleDealerData_updateVehicleDealer>
      get serializer => _$gUpdateVehicleDealerDataUpdateVehicleDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor,
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleColorBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor(
      [Function(
              GUpdateVehicleDealerData_updateVehicleDealer_vehicleColorBuilder
                  b)
          updates]) = _$GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColorBuilder b) =>
      b..G__typename = 'VehicleColor';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get code;
  BuiltList<GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images>?
      get images;
  static Serializer<GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerVehicleColorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images,
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_imagesBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images(
          [Function(
                  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_imagesBuilder
                      b)
              updates]) =
      _$GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_imagesBuilder
              b) =>
      b..G__typename = 'VehicleImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image?
      get image;
  static Serializer<
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerVehicleColorImagesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images
                .serializer,
            json,
          );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image
    implements
        Built<
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image,
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_imageBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image(
          [Function(
                  GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_imageBuilder
                      b)
              updates]) =
      _$GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerVehicleColorImagesImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleColor_images_image
                .serializer,
            json,
          );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant,
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariantBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant(
      [Function(
              GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariantBuilder
                  b)
          updates]) = _$GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariantBuilder
              b) =>
      b..G__typename = 'VehicleVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i3.GDateTime? get modifiedAt;
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle?
      get vehicle;
  static Serializer<GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerVehicleVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle
    implements
        Built<
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle,
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicleBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle(
          [Function(
                  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicleBuilder
                      b)
              updates]) =
      _$GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicleBuilder
              b) =>
      b..G__typename = 'Vehicle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand?
      get brand;
  String? get name;
  String get id;
  String? get description;
  static Serializer<
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerVehicleVariantVehicleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle
                .serializer,
            json,
          );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand
    implements
        Built<
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand,
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brandBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand(
          [Function(
                  GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brandBuilder
                      b)
              updates]) =
      _$GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brandBuilder
              b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerVehicleVariantVehicleBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateVehicleDealerData_updateVehicleDealer_vehicleVariant_vehicle_brand
                .serializer,
            json,
          );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_prices
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer_prices,
            GUpdateVehicleDealerData_updateVehicleDealer_pricesBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_prices._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_prices(
      [Function(GUpdateVehicleDealerData_updateVehicleDealer_pricesBuilder b)
          updates]) = _$GUpdateVehicleDealerData_updateVehicleDealer_prices;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_pricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int? get amount;
  GUpdateVehicleDealerData_updateVehicleDealer_prices_category? get category;
  static Serializer<GUpdateVehicleDealerData_updateVehicleDealer_prices>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerPricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_prices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_prices.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_prices_category
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer_prices_category,
            GUpdateVehicleDealerData_updateVehicleDealer_prices_categoryBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_prices_category._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_prices_category(
          [Function(
                  GUpdateVehicleDealerData_updateVehicleDealer_prices_categoryBuilder
                      b)
              updates]) =
      _$GUpdateVehicleDealerData_updateVehicleDealer_prices_category;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_prices_categoryBuilder
              b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GUpdateVehicleDealerData_updateVehicleDealer_prices_category>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerPricesCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_prices_category.serializer,
        json,
      );
}

abstract class GUpdateVehicleDealerData_updateVehicleDealer_guarantees
    implements
        Built<GUpdateVehicleDealerData_updateVehicleDealer_guarantees,
            GUpdateVehicleDealerData_updateVehicleDealer_guaranteesBuilder> {
  GUpdateVehicleDealerData_updateVehicleDealer_guarantees._();

  factory GUpdateVehicleDealerData_updateVehicleDealer_guarantees(
      [Function(
              GUpdateVehicleDealerData_updateVehicleDealer_guaranteesBuilder b)
          updates]) = _$GUpdateVehicleDealerData_updateVehicleDealer_guarantees;

  static void _initializeBuilder(
          GUpdateVehicleDealerData_updateVehicleDealer_guaranteesBuilder b) =>
      b..G__typename = 'Guarantee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  String? get description;
  static Serializer<GUpdateVehicleDealerData_updateVehicleDealer_guarantees>
      get serializer =>
          _$gUpdateVehicleDealerDataUpdateVehicleDealerGuaranteesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_guarantees.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateVehicleDealerData_updateVehicleDealer_guarantees? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateVehicleDealerData_updateVehicleDealer_guarantees.serializer,
        json,
      );
}

abstract class GUpdatePricesData
    implements Built<GUpdatePricesData, GUpdatePricesDataBuilder> {
  GUpdatePricesData._();

  factory GUpdatePricesData([Function(GUpdatePricesDataBuilder b) updates]) =
      _$GUpdatePricesData;

  static void _initializeBuilder(GUpdatePricesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUpdatePricesData_updatePrices?>? get updatePrices;
  static Serializer<GUpdatePricesData> get serializer =>
      _$gUpdatePricesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePricesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePricesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePricesData.serializer,
        json,
      );
}

abstract class GUpdatePricesData_updatePrices
    implements
        Built<GUpdatePricesData_updatePrices,
            GUpdatePricesData_updatePricesBuilder> {
  GUpdatePricesData_updatePrices._();

  factory GUpdatePricesData_updatePrices(
          [Function(GUpdatePricesData_updatePricesBuilder b) updates]) =
      _$GUpdatePricesData_updatePrices;

  static void _initializeBuilder(GUpdatePricesData_updatePricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GUpdatePricesData_updatePrices> get serializer =>
      _$gUpdatePricesDataUpdatePricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePricesData_updatePrices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePricesData_updatePrices? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePricesData_updatePrices.serializer,
        json,
      );
}
