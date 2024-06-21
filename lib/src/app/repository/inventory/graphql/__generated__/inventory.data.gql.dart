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
          [void Function(GProductVariantsDataBuilder b) updates]) =
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
      [void Function(GProductVariantsData_productVariantsBuilder b)
          updates]) = _$GProductVariantsData_productVariants;

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
      [void Function(GProductVariantsData_productVariants_pricesBuilder b)
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
      [void Function(
              GProductVariantsData_productVariants_prices_categoryBuilder b)
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
      [void Function(
              GProductVariantsData_productVariants_specificationsBuilder b)
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
          [void Function(
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
          [void Function(
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
          [void Function(
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
      [void Function(GProductVariantsData_productVariants_galleryBuilder b)
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
      [void Function(GProductVariantsData_productVariants_productBuilder b)
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
      [void Function(
              GProductVariantsData_productVariants_product_brandBuilder b)
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
      [void Function(
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
      [void Function(GProductVariantsData_productVariants_product_typeBuilder b)
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
      [void Function(
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
          [void Function(
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
          [void Function(
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
          [void Function(
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
      [void Function(GProductVariantsData_productVariants_tagsBuilder b)
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
      [void Function(GProductVariantsData_productVariants_imagesBuilder b)
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
      [void Function(GProductVariantsData_productVariants_images_imageBuilder b)
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
          [void Function(GProductVariantsCountDataBuilder b) updates]) =
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
          [void Function(GProductVariantDataBuilder b) updates]) =
      _$GProductVariantData;

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
      [void Function(GProductVariantData_productVariantBuilder b)
          updates]) = _$GProductVariantData_productVariant;

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
      [void Function(GProductVariantData_productVariant_pricesBuilder b)
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
      [void Function(
              GProductVariantData_productVariant_prices_categoryBuilder b)
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
      [void Function(GProductVariantData_productVariant_specificationsBuilder b)
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
          [void Function(
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
          [void Function(
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
      [void Function(
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
      [void Function(GProductVariantData_productVariant_galleryBuilder b)
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
      [void Function(GProductVariantData_productVariant_productBuilder b)
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
      [void Function(GProductVariantData_productVariant_product_brandBuilder b)
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
      [void Function(
              GProductVariantData_productVariant_product_brand_logoBuilder b)
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
      [void Function(GProductVariantData_productVariant_product_typeBuilder b)
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
      [void Function(
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
          [void Function(
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
          [void Function(
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
          [void Function(
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
      [void Function(GProductVariantData_productVariant_tagsBuilder b)
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
      [void Function(GProductVariantData_productVariant_imagesBuilder b)
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
      [void Function(GProductVariantData_productVariant_images_imageBuilder b)
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

  factory GProductTypesData(
          [void Function(GProductTypesDataBuilder b) updates]) =
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
          [void Function(GProductTypesData_productTypesBuilder b) updates]) =
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
          [void Function(GVehicleVariantsDataBuilder b) updates]) =
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
      [void Function(GVehicleVariantsData_vehicleVariantsBuilder b)
          updates]) = _$GVehicleVariantsData_vehicleVariants;

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
      [void Function(GVehicleVariantsData_vehicleVariants_pricesBuilder b)
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
      [void Function(
              GVehicleVariantsData_vehicleVariants_prices_categoryBuilder b)
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
      [void Function(GVehicleVariantsData_vehicleVariants_colorsBuilder b)
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
      [void Function(
              GVehicleVariantsData_vehicleVariants_colors_imagesBuilder b)
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
      [void Function(
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
      [void Function(GVehicleVariantsData_vehicleVariants_vehicleBuilder b)
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
      [void Function(
              GVehicleVariantsData_vehicleVariants_vehicle_brandBuilder b)
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
      [void Function(GVehicleVariantsData_vehicleVariants_vehicle_typeBuilder b)
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
          [void Function(GVehicleVariantsCountDataBuilder b) updates]) =
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
      [void Function(GCreateVehicleDealerStockRequestDataBuilder b)
          updates]) = _$GCreateVehicleDealerStockRequestData;

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
          [void Function(
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
          [void Function(GVehicleDealersDataBuilder b) updates]) =
      _$GVehicleDealersData;

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
      [void Function(GVehicleDealersData_vehicleDealersBuilder b)
          updates]) = _$GVehicleDealersData_vehicleDealers;

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
      [void Function(GVehicleDealersData_vehicleDealers_vehicleColorBuilder b)
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
      [void Function(
              GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder b)
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
          [void Function(
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
      [void Function(GVehicleDealersData_vehicleDealers_vehicleVariantBuilder b)
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
      [void Function(
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
          [void Function(
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
      [void Function(GVehicleDealersData_vehicleDealers_pricesBuilder b)
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
      [void Function(
              GVehicleDealersData_vehicleDealers_prices_categoryBuilder b)
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
      [void Function(GVehicleDealersData_vehicleDealers_guaranteesBuilder b)
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
          [void Function(GCreateVehicleDealerDataBuilder b) updates]) =
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
      [void Function(GCreateVehicleDealerData_createVehicleDealerBuilder b)
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
          [void Function(GPriceCategoriesDataBuilder b) updates]) =
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
      [void Function(GPriceCategoriesData_priceCategoriesBuilder b)
          updates]) = _$GPriceCategoriesData_priceCategories;

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
          [void Function(GUpdateVehicleDealerDataBuilder b) updates]) =
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
      [void Function(GUpdateVehicleDealerData_updateVehicleDealerBuilder b)
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
      [void Function(
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
          [void Function(
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
          [void Function(
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
      [void Function(
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
          [void Function(
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
          [void Function(
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
      [void Function(
              GUpdateVehicleDealerData_updateVehicleDealer_pricesBuilder b)
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
          [void Function(
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
      [void Function(
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

  factory GUpdatePricesData(
          [void Function(GUpdatePricesDataBuilder b) updates]) =
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
          [void Function(GUpdatePricesData_updatePricesBuilder b) updates]) =
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

abstract class GTestDriveDealersData
    implements Built<GTestDriveDealersData, GTestDriveDealersDataBuilder> {
  GTestDriveDealersData._();

  factory GTestDriveDealersData(
          [void Function(GTestDriveDealersDataBuilder b) updates]) =
      _$GTestDriveDealersData;

  static void _initializeBuilder(GTestDriveDealersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GTestDriveDealersData_testDriveDealers>? get testDriveDealers;
  int? get testDriveDealersCount;
  static Serializer<GTestDriveDealersData> get serializer =>
      _$gTestDriveDealersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveDealersData.serializer,
        json,
      );
}

abstract class GTestDriveDealersData_testDriveDealers
    implements
        Built<GTestDriveDealersData_testDriveDealers,
            GTestDriveDealersData_testDriveDealersBuilder> {
  GTestDriveDealersData_testDriveDealers._();

  factory GTestDriveDealersData_testDriveDealers(
      [void Function(GTestDriveDealersData_testDriveDealersBuilder b)
          updates]) = _$GTestDriveDealersData_testDriveDealers;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealersBuilder b) =>
      b..G__typename = 'TestDriveDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GTestDriveDealersData_testDriveDealers_vehicleColor? get vehicleColor;
  GTestDriveDealersData_testDriveDealers_vehicleVariant? get vehicleVariant;
  int? get price;
  String get id;
  static Serializer<GTestDriveDealersData_testDriveDealers> get serializer =>
      _$gTestDriveDealersDataTestDriveDealersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveDealersData_testDriveDealers.serializer,
        json,
      );
}

abstract class GTestDriveDealersData_testDriveDealers_vehicleColor
    implements
        Built<GTestDriveDealersData_testDriveDealers_vehicleColor,
            GTestDriveDealersData_testDriveDealers_vehicleColorBuilder> {
  GTestDriveDealersData_testDriveDealers_vehicleColor._();

  factory GTestDriveDealersData_testDriveDealers_vehicleColor(
      [void Function(
              GTestDriveDealersData_testDriveDealers_vehicleColorBuilder b)
          updates]) = _$GTestDriveDealersData_testDriveDealers_vehicleColor;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealers_vehicleColorBuilder b) =>
      b..G__typename = 'VehicleColor';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get code;
  BuiltList<GTestDriveDealersData_testDriveDealers_vehicleColor_images>?
      get images;
  static Serializer<GTestDriveDealersData_testDriveDealers_vehicleColor>
      get serializer =>
          _$gTestDriveDealersDataTestDriveDealersVehicleColorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleColor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers_vehicleColor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleColor.serializer,
        json,
      );
}

abstract class GTestDriveDealersData_testDriveDealers_vehicleColor_images
    implements
        Built<GTestDriveDealersData_testDriveDealers_vehicleColor_images,
            GTestDriveDealersData_testDriveDealers_vehicleColor_imagesBuilder> {
  GTestDriveDealersData_testDriveDealers_vehicleColor_images._();

  factory GTestDriveDealersData_testDriveDealers_vehicleColor_images(
      [void Function(
              GTestDriveDealersData_testDriveDealers_vehicleColor_imagesBuilder
                  b)
          updates]) = _$GTestDriveDealersData_testDriveDealers_vehicleColor_images;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealers_vehicleColor_imagesBuilder
              b) =>
      b..G__typename = 'VehicleImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GTestDriveDealersData_testDriveDealers_vehicleColor_images_image? get image;
  static Serializer<GTestDriveDealersData_testDriveDealers_vehicleColor_images>
      get serializer =>
          _$gTestDriveDealersDataTestDriveDealersVehicleColorImagesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleColor_images.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers_vehicleColor_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleColor_images.serializer,
        json,
      );
}

abstract class GTestDriveDealersData_testDriveDealers_vehicleColor_images_image
    implements
        Built<GTestDriveDealersData_testDriveDealers_vehicleColor_images_image,
            GTestDriveDealersData_testDriveDealers_vehicleColor_images_imageBuilder> {
  GTestDriveDealersData_testDriveDealers_vehicleColor_images_image._();

  factory GTestDriveDealersData_testDriveDealers_vehicleColor_images_image(
          [void Function(
                  GTestDriveDealersData_testDriveDealers_vehicleColor_images_imageBuilder
                      b)
              updates]) =
      _$GTestDriveDealersData_testDriveDealers_vehicleColor_images_image;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealers_vehicleColor_images_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  static Serializer<
          GTestDriveDealersData_testDriveDealers_vehicleColor_images_image>
      get serializer =>
          _$gTestDriveDealersDataTestDriveDealersVehicleColorImagesImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleColor_images_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers_vehicleColor_images_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GTestDriveDealersData_testDriveDealers_vehicleColor_images_image
                .serializer,
            json,
          );
}

abstract class GTestDriveDealersData_testDriveDealers_vehicleVariant
    implements
        Built<GTestDriveDealersData_testDriveDealers_vehicleVariant,
            GTestDriveDealersData_testDriveDealers_vehicleVariantBuilder> {
  GTestDriveDealersData_testDriveDealers_vehicleVariant._();

  factory GTestDriveDealersData_testDriveDealers_vehicleVariant(
      [void Function(
              GTestDriveDealersData_testDriveDealers_vehicleVariantBuilder b)
          updates]) = _$GTestDriveDealersData_testDriveDealers_vehicleVariant;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealers_vehicleVariantBuilder b) =>
      b..G__typename = 'VehicleVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i3.GDateTime? get modifiedAt;
  GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle? get vehicle;
  static Serializer<GTestDriveDealersData_testDriveDealers_vehicleVariant>
      get serializer =>
          _$gTestDriveDealersDataTestDriveDealersVehicleVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleVariant.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers_vehicleVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleVariant.serializer,
        json,
      );
}

abstract class GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle
    implements
        Built<GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle,
            GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicleBuilder> {
  GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle._();

  factory GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle(
          [void Function(
                  GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicleBuilder
                      b)
              updates]) =
      _$GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicleBuilder
              b) =>
      b..G__typename = 'Vehicle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand?
      get brand;
  String? get name;
  String get id;
  String? get description;
  static Serializer<
          GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle>
      get serializer =>
          _$gTestDriveDealersDataTestDriveDealersVehicleVariantVehicleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle
                .serializer,
            json,
          );
}

abstract class GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand
    implements
        Built<
            GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand,
            GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brandBuilder> {
  GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand._();

  factory GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand(
          [void Function(
                  GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brandBuilder
                      b)
              updates]) =
      _$GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand;

  static void _initializeBuilder(
          GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brandBuilder
              b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand>
      get serializer =>
          _$gTestDriveDealersDataTestDriveDealersVehicleVariantVehicleBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GTestDriveDealersData_testDriveDealers_vehicleVariant_vehicle_brand
                .serializer,
            json,
          );
}

abstract class GUpdateTestDriveDealerData
    implements
        Built<GUpdateTestDriveDealerData, GUpdateTestDriveDealerDataBuilder> {
  GUpdateTestDriveDealerData._();

  factory GUpdateTestDriveDealerData(
          [void Function(GUpdateTestDriveDealerDataBuilder b) updates]) =
      _$GUpdateTestDriveDealerData;

  static void _initializeBuilder(GUpdateTestDriveDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateTestDriveDealerData_updateTestDriveDealer? get updateTestDriveDealer;
  static Serializer<GUpdateTestDriveDealerData> get serializer =>
      _$gUpdateTestDriveDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateTestDriveDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTestDriveDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateTestDriveDealerData.serializer,
        json,
      );
}

abstract class GUpdateTestDriveDealerData_updateTestDriveDealer
    implements
        Built<GUpdateTestDriveDealerData_updateTestDriveDealer,
            GUpdateTestDriveDealerData_updateTestDriveDealerBuilder> {
  GUpdateTestDriveDealerData_updateTestDriveDealer._();

  factory GUpdateTestDriveDealerData_updateTestDriveDealer(
      [void Function(GUpdateTestDriveDealerData_updateTestDriveDealerBuilder b)
          updates]) = _$GUpdateTestDriveDealerData_updateTestDriveDealer;

  static void _initializeBuilder(
          GUpdateTestDriveDealerData_updateTestDriveDealerBuilder b) =>
      b..G__typename = 'TestDriveDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GUpdateTestDriveDealerData_updateTestDriveDealer>
      get serializer =>
          _$gUpdateTestDriveDealerDataUpdateTestDriveDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateTestDriveDealerData_updateTestDriveDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTestDriveDealerData_updateTestDriveDealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateTestDriveDealerData_updateTestDriveDealer.serializer,
        json,
      );
}

abstract class GCreateTestDriveDealerData
    implements
        Built<GCreateTestDriveDealerData, GCreateTestDriveDealerDataBuilder> {
  GCreateTestDriveDealerData._();

  factory GCreateTestDriveDealerData(
          [void Function(GCreateTestDriveDealerDataBuilder b) updates]) =
      _$GCreateTestDriveDealerData;

  static void _initializeBuilder(GCreateTestDriveDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateTestDriveDealerData_createTestDriveDealer? get createTestDriveDealer;
  static Serializer<GCreateTestDriveDealerData> get serializer =>
      _$gCreateTestDriveDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateTestDriveDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTestDriveDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateTestDriveDealerData.serializer,
        json,
      );
}

abstract class GCreateTestDriveDealerData_createTestDriveDealer
    implements
        Built<GCreateTestDriveDealerData_createTestDriveDealer,
            GCreateTestDriveDealerData_createTestDriveDealerBuilder> {
  GCreateTestDriveDealerData_createTestDriveDealer._();

  factory GCreateTestDriveDealerData_createTestDriveDealer(
      [void Function(GCreateTestDriveDealerData_createTestDriveDealerBuilder b)
          updates]) = _$GCreateTestDriveDealerData_createTestDriveDealer;

  static void _initializeBuilder(
          GCreateTestDriveDealerData_createTestDriveDealerBuilder b) =>
      b..G__typename = 'TestDriveDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateTestDriveDealerData_createTestDriveDealer>
      get serializer =>
          _$gCreateTestDriveDealerDataCreateTestDriveDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateTestDriveDealerData_createTestDriveDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTestDriveDealerData_createTestDriveDealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateTestDriveDealerData_createTestDriveDealer.serializer,
        json,
      );
}

abstract class GProductDealersData
    implements Built<GProductDealersData, GProductDealersDataBuilder> {
  GProductDealersData._();

  factory GProductDealersData(
          [void Function(GProductDealersDataBuilder b) updates]) =
      _$GProductDealersData;

  static void _initializeBuilder(GProductDealersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProductDealersData_productDealers>? get productDealers;
  static Serializer<GProductDealersData> get serializer =>
      _$gProductDealersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData.serializer,
        json,
      );
}

abstract class GProductDealersData_productDealers
    implements
        Built<GProductDealersData_productDealers,
            GProductDealersData_productDealersBuilder> {
  GProductDealersData_productDealers._();

  factory GProductDealersData_productDealers(
      [void Function(GProductDealersData_productDealersBuilder b)
          updates]) = _$GProductDealersData_productDealers;

  static void _initializeBuilder(GProductDealersData_productDealersBuilder b) =>
      b..G__typename = 'ProductDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductDealersData_productDealers_productVariant? get productVariant;
  String get id;
  int? get stock;
  BuiltList<GProductDealersData_productDealers_prices>? get prices;
  int? get totalPrice;
  BuiltList<GProductDealersData_productDealers_guarantees>? get guarantees;
  static Serializer<GProductDealersData_productDealers> get serializer =>
      _$gProductDealersDataProductDealersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData_productDealers.serializer,
        json,
      );
}

abstract class GProductDealersData_productDealers_productVariant
    implements
        Built<GProductDealersData_productDealers_productVariant,
            GProductDealersData_productDealers_productVariantBuilder> {
  GProductDealersData_productDealers_productVariant._();

  factory GProductDealersData_productDealers_productVariant(
      [void Function(GProductDealersData_productDealers_productVariantBuilder b)
          updates]) = _$GProductDealersData_productDealers_productVariant;

  static void _initializeBuilder(
          GProductDealersData_productDealers_productVariantBuilder b) =>
      b..G__typename = 'ProductVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  _i3.GDateTime? get modifiedAt;
  GProductDealersData_productDealers_productVariant_product? get product;
  static Serializer<GProductDealersData_productDealers_productVariant>
      get serializer =>
          _$gProductDealersDataProductDealersProductVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers_productVariant.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers_productVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData_productDealers_productVariant.serializer,
        json,
      );
}

abstract class GProductDealersData_productDealers_productVariant_product
    implements
        Built<GProductDealersData_productDealers_productVariant_product,
            GProductDealersData_productDealers_productVariant_productBuilder> {
  GProductDealersData_productDealers_productVariant_product._();

  factory GProductDealersData_productDealers_productVariant_product(
      [void Function(
              GProductDealersData_productDealers_productVariant_productBuilder
                  b)
          updates]) = _$GProductDealersData_productDealers_productVariant_product;

  static void _initializeBuilder(
          GProductDealersData_productDealers_productVariant_productBuilder b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GProductDealersData_productDealers_productVariant_product_brand? get brand;
  String? get name;
  String get id;
  String? get description;
  static Serializer<GProductDealersData_productDealers_productVariant_product>
      get serializer =>
          _$gProductDealersDataProductDealersProductVariantProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers_productVariant_product.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers_productVariant_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData_productDealers_productVariant_product.serializer,
        json,
      );
}

abstract class GProductDealersData_productDealers_productVariant_product_brand
    implements
        Built<GProductDealersData_productDealers_productVariant_product_brand,
            GProductDealersData_productDealers_productVariant_product_brandBuilder> {
  GProductDealersData_productDealers_productVariant_product_brand._();

  factory GProductDealersData_productDealers_productVariant_product_brand(
          [void Function(
                  GProductDealersData_productDealers_productVariant_product_brandBuilder
                      b)
              updates]) =
      _$GProductDealersData_productDealers_productVariant_product_brand;

  static void _initializeBuilder(
          GProductDealersData_productDealers_productVariant_product_brandBuilder
              b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GProductDealersData_productDealers_productVariant_product_brand>
      get serializer =>
          _$gProductDealersDataProductDealersProductVariantProductBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers_productVariant_product_brand
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers_productVariant_product_brand?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GProductDealersData_productDealers_productVariant_product_brand
                .serializer,
            json,
          );
}

abstract class GProductDealersData_productDealers_prices
    implements
        Built<GProductDealersData_productDealers_prices,
            GProductDealersData_productDealers_pricesBuilder> {
  GProductDealersData_productDealers_prices._();

  factory GProductDealersData_productDealers_prices(
      [void Function(GProductDealersData_productDealers_pricesBuilder b)
          updates]) = _$GProductDealersData_productDealers_prices;

  static void _initializeBuilder(
          GProductDealersData_productDealers_pricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int? get amount;
  GProductDealersData_productDealers_prices_category? get category;
  static Serializer<GProductDealersData_productDealers_prices> get serializer =>
      _$gProductDealersDataProductDealersPricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers_prices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData_productDealers_prices.serializer,
        json,
      );
}

abstract class GProductDealersData_productDealers_prices_category
    implements
        Built<GProductDealersData_productDealers_prices_category,
            GProductDealersData_productDealers_prices_categoryBuilder> {
  GProductDealersData_productDealers_prices_category._();

  factory GProductDealersData_productDealers_prices_category(
      [void Function(
              GProductDealersData_productDealers_prices_categoryBuilder b)
          updates]) = _$GProductDealersData_productDealers_prices_category;

  static void _initializeBuilder(
          GProductDealersData_productDealers_prices_categoryBuilder b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<GProductDealersData_productDealers_prices_category>
      get serializer =>
          _$gProductDealersDataProductDealersPricesCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData_productDealers_prices_category.serializer,
        json,
      );
}

abstract class GProductDealersData_productDealers_guarantees
    implements
        Built<GProductDealersData_productDealers_guarantees,
            GProductDealersData_productDealers_guaranteesBuilder> {
  GProductDealersData_productDealers_guarantees._();

  factory GProductDealersData_productDealers_guarantees(
      [void Function(GProductDealersData_productDealers_guaranteesBuilder b)
          updates]) = _$GProductDealersData_productDealers_guarantees;

  static void _initializeBuilder(
          GProductDealersData_productDealers_guaranteesBuilder b) =>
      b..G__typename = 'Guarantee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String get id;
  String? get description;
  static Serializer<GProductDealersData_productDealers_guarantees>
      get serializer => _$gProductDealersDataProductDealersGuaranteesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GProductDealersData_productDealers_guarantees.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealersData_productDealers_guarantees? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GProductDealersData_productDealers_guarantees.serializer,
        json,
      );
}

abstract class GCreateProductDealerData
    implements
        Built<GCreateProductDealerData, GCreateProductDealerDataBuilder> {
  GCreateProductDealerData._();

  factory GCreateProductDealerData(
          [void Function(GCreateProductDealerDataBuilder b) updates]) =
      _$GCreateProductDealerData;

  static void _initializeBuilder(GCreateProductDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateProductDealerData_createProductDealer? get createProductDealer;
  static Serializer<GCreateProductDealerData> get serializer =>
      _$gCreateProductDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateProductDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateProductDealerData.serializer,
        json,
      );
}

abstract class GCreateProductDealerData_createProductDealer
    implements
        Built<GCreateProductDealerData_createProductDealer,
            GCreateProductDealerData_createProductDealerBuilder> {
  GCreateProductDealerData_createProductDealer._();

  factory GCreateProductDealerData_createProductDealer(
      [void Function(GCreateProductDealerData_createProductDealerBuilder b)
          updates]) = _$GCreateProductDealerData_createProductDealer;

  static void _initializeBuilder(
          GCreateProductDealerData_createProductDealerBuilder b) =>
      b..G__typename = 'ProductDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateProductDealerData_createProductDealer>
      get serializer => _$gCreateProductDealerDataCreateProductDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateProductDealerData_createProductDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductDealerData_createProductDealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateProductDealerData_createProductDealer.serializer,
        json,
      );
}

abstract class GUpdateProductDealerData
    implements
        Built<GUpdateProductDealerData, GUpdateProductDealerDataBuilder> {
  GUpdateProductDealerData._();

  factory GUpdateProductDealerData(
          [void Function(GUpdateProductDealerDataBuilder b) updates]) =
      _$GUpdateProductDealerData;

  static void _initializeBuilder(GUpdateProductDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateProductDealerData_updateProductDealer? get updateProductDealer;
  static Serializer<GUpdateProductDealerData> get serializer =>
      _$gUpdateProductDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductDealerData.serializer,
        json,
      );
}

abstract class GUpdateProductDealerData_updateProductDealer
    implements
        Built<GUpdateProductDealerData_updateProductDealer,
            GUpdateProductDealerData_updateProductDealerBuilder> {
  GUpdateProductDealerData_updateProductDealer._();

  factory GUpdateProductDealerData_updateProductDealer(
      [void Function(GUpdateProductDealerData_updateProductDealerBuilder b)
          updates]) = _$GUpdateProductDealerData_updateProductDealer;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealerBuilder b) =>
      b..G__typename = 'ProductDealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateProductDealerData_updateProductDealer_productVariant?
      get productVariant;
  String get id;
  int? get stock;
  int? get totalPrice;
  BuiltList<GUpdateProductDealerData_updateProductDealer_prices>? get prices;
  BuiltList<GUpdateProductDealerData_updateProductDealer_guarantees>?
      get guarantees;
  static Serializer<GUpdateProductDealerData_updateProductDealer>
      get serializer => _$gUpdateProductDealerDataUpdateProductDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductDealerData_updateProductDealer.serializer,
        json,
      );
}

abstract class GUpdateProductDealerData_updateProductDealer_productVariant
    implements
        Built<GUpdateProductDealerData_updateProductDealer_productVariant,
            GUpdateProductDealerData_updateProductDealer_productVariantBuilder> {
  GUpdateProductDealerData_updateProductDealer_productVariant._();

  factory GUpdateProductDealerData_updateProductDealer_productVariant(
      [void Function(
              GUpdateProductDealerData_updateProductDealer_productVariantBuilder
                  b)
          updates]) = _$GUpdateProductDealerData_updateProductDealer_productVariant;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealer_productVariantBuilder
              b) =>
      b..G__typename = 'ProductVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateProductDealerData_updateProductDealer_productVariant_product?
      get product;
  _i3.GDateTime? get modifiedAt;
  String get id;
  String? get name;
  static Serializer<GUpdateProductDealerData_updateProductDealer_productVariant>
      get serializer =>
          _$gUpdateProductDealerDataUpdateProductDealerProductVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer_productVariant.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer_productVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductDealerData_updateProductDealer_productVariant.serializer,
        json,
      );
}

abstract class GUpdateProductDealerData_updateProductDealer_productVariant_product
    implements
        Built<
            GUpdateProductDealerData_updateProductDealer_productVariant_product,
            GUpdateProductDealerData_updateProductDealer_productVariant_productBuilder> {
  GUpdateProductDealerData_updateProductDealer_productVariant_product._();

  factory GUpdateProductDealerData_updateProductDealer_productVariant_product(
          [void Function(
                  GUpdateProductDealerData_updateProductDealer_productVariant_productBuilder
                      b)
              updates]) =
      _$GUpdateProductDealerData_updateProductDealer_productVariant_product;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealer_productVariant_productBuilder
              b) =>
      b..G__typename = 'Product';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateProductDealerData_updateProductDealer_productVariant_product_brand?
      get brand;
  String get id;
  String? get name;
  String? get description;
  static Serializer<
          GUpdateProductDealerData_updateProductDealer_productVariant_product>
      get serializer =>
          _$gUpdateProductDealerDataUpdateProductDealerProductVariantProductSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer_productVariant_product
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer_productVariant_product?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateProductDealerData_updateProductDealer_productVariant_product
                .serializer,
            json,
          );
}

abstract class GUpdateProductDealerData_updateProductDealer_productVariant_product_brand
    implements
        Built<
            GUpdateProductDealerData_updateProductDealer_productVariant_product_brand,
            GUpdateProductDealerData_updateProductDealer_productVariant_product_brandBuilder> {
  GUpdateProductDealerData_updateProductDealer_productVariant_product_brand._();

  factory GUpdateProductDealerData_updateProductDealer_productVariant_product_brand(
          [void Function(
                  GUpdateProductDealerData_updateProductDealer_productVariant_product_brandBuilder
                      b)
              updates]) =
      _$GUpdateProductDealerData_updateProductDealer_productVariant_product_brand;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealer_productVariant_product_brandBuilder
              b) =>
      b..G__typename = 'Brand';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GUpdateProductDealerData_updateProductDealer_productVariant_product_brand>
      get serializer =>
          _$gUpdateProductDealerDataUpdateProductDealerProductVariantProductBrandSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer_productVariant_product_brand
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer_productVariant_product_brand?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUpdateProductDealerData_updateProductDealer_productVariant_product_brand
                .serializer,
            json,
          );
}

abstract class GUpdateProductDealerData_updateProductDealer_prices
    implements
        Built<GUpdateProductDealerData_updateProductDealer_prices,
            GUpdateProductDealerData_updateProductDealer_pricesBuilder> {
  GUpdateProductDealerData_updateProductDealer_prices._();

  factory GUpdateProductDealerData_updateProductDealer_prices(
      [void Function(
              GUpdateProductDealerData_updateProductDealer_pricesBuilder b)
          updates]) = _$GUpdateProductDealerData_updateProductDealer_prices;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealer_pricesBuilder b) =>
      b..G__typename = 'Price';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get amount;
  String get id;
  GUpdateProductDealerData_updateProductDealer_prices_category? get category;
  static Serializer<GUpdateProductDealerData_updateProductDealer_prices>
      get serializer =>
          _$gUpdateProductDealerDataUpdateProductDealerPricesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer_prices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer_prices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductDealerData_updateProductDealer_prices.serializer,
        json,
      );
}

abstract class GUpdateProductDealerData_updateProductDealer_prices_category
    implements
        Built<GUpdateProductDealerData_updateProductDealer_prices_category,
            GUpdateProductDealerData_updateProductDealer_prices_categoryBuilder> {
  GUpdateProductDealerData_updateProductDealer_prices_category._();

  factory GUpdateProductDealerData_updateProductDealer_prices_category(
          [void Function(
                  GUpdateProductDealerData_updateProductDealer_prices_categoryBuilder
                      b)
              updates]) =
      _$GUpdateProductDealerData_updateProductDealer_prices_category;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealer_prices_categoryBuilder
              b) =>
      b..G__typename = 'PriceCategory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  static Serializer<
          GUpdateProductDealerData_updateProductDealer_prices_category>
      get serializer =>
          _$gUpdateProductDealerDataUpdateProductDealerPricesCategorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer_prices_category.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer_prices_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductDealerData_updateProductDealer_prices_category.serializer,
        json,
      );
}

abstract class GUpdateProductDealerData_updateProductDealer_guarantees
    implements
        Built<GUpdateProductDealerData_updateProductDealer_guarantees,
            GUpdateProductDealerData_updateProductDealer_guaranteesBuilder> {
  GUpdateProductDealerData_updateProductDealer_guarantees._();

  factory GUpdateProductDealerData_updateProductDealer_guarantees(
      [void Function(
              GUpdateProductDealerData_updateProductDealer_guaranteesBuilder b)
          updates]) = _$GUpdateProductDealerData_updateProductDealer_guarantees;

  static void _initializeBuilder(
          GUpdateProductDealerData_updateProductDealer_guaranteesBuilder b) =>
      b..G__typename = 'Guarantee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get description;
  String? get name;
  static Serializer<GUpdateProductDealerData_updateProductDealer_guarantees>
      get serializer =>
          _$gUpdateProductDealerDataUpdateProductDealerGuaranteesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateProductDealerData_updateProductDealer_guarantees.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProductDealerData_updateProductDealer_guarantees? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateProductDealerData_updateProductDealer_guarantees.serializer,
        json,
      );
}

abstract class GCreateProductDealerStockRequestData
    implements
        Built<GCreateProductDealerStockRequestData,
            GCreateProductDealerStockRequestDataBuilder> {
  GCreateProductDealerStockRequestData._();

  factory GCreateProductDealerStockRequestData(
      [void Function(GCreateProductDealerStockRequestDataBuilder b)
          updates]) = _$GCreateProductDealerStockRequestData;

  static void _initializeBuilder(
          GCreateProductDealerStockRequestDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateProductDealerStockRequestData_createProductDealerStockRequest?
      get createProductDealerStockRequest;
  static Serializer<GCreateProductDealerStockRequestData> get serializer =>
      _$gCreateProductDealerStockRequestDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateProductDealerStockRequestData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductDealerStockRequestData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateProductDealerStockRequestData.serializer,
        json,
      );
}

abstract class GCreateProductDealerStockRequestData_createProductDealerStockRequest
    implements
        Built<
            GCreateProductDealerStockRequestData_createProductDealerStockRequest,
            GCreateProductDealerStockRequestData_createProductDealerStockRequestBuilder> {
  GCreateProductDealerStockRequestData_createProductDealerStockRequest._();

  factory GCreateProductDealerStockRequestData_createProductDealerStockRequest(
          [void Function(
                  GCreateProductDealerStockRequestData_createProductDealerStockRequestBuilder
                      b)
              updates]) =
      _$GCreateProductDealerStockRequestData_createProductDealerStockRequest;

  static void _initializeBuilder(
          GCreateProductDealerStockRequestData_createProductDealerStockRequestBuilder
              b) =>
      b..G__typename = 'ProductDealerStockRequest';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get type;
  int? get stock;
  int? get totalPrice;
  static Serializer<
          GCreateProductDealerStockRequestData_createProductDealerStockRequest>
      get serializer =>
          _$gCreateProductDealerStockRequestDataCreateProductDealerStockRequestSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateProductDealerStockRequestData_createProductDealerStockRequest
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateProductDealerStockRequestData_createProductDealerStockRequest?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCreateProductDealerStockRequestData_createProductDealerStockRequest
                .serializer,
            json,
          );
}
