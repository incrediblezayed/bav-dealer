// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ItemType {
  product,
  vehicle,
}

class ProductVariantModel {
  ProductVariantModel(
      {required this.prices,
      required List<VehicleColor> colors,
      required this.name,
      required this.specifications,
      required this.id,
      required this.totalPrice,
      required this.vehicle,
      required this.tags,
      required this.gallery,
      required this.product,
      required this.itemType})
      : _colors = colors;

  factory ProductVariantModel.vehicleFromJson(
    Map<String, dynamic> json,
  ) {
    try {
      return ProductVariantModel(
          prices: json['prices'] == null
              ? []
              : List<VehiclePrice>.from(
                  json['prices'].map((x) => VehiclePrice.fromJson(x)),
                ),
          colors: json['colors'] == null
              ? []
              : List<VehicleColor>.from(
                  json['colors'].map((x) => VehicleColor.fromJson(x)),
                ),
          name: json['name'],
          specifications: json['specifications'] == null
              ? []
              : List<Specification>.from(
                  json['specifications'].map((x) => Specification.fromJson(x)),
                ),
          id: json['id'],
          totalPrice: json['totalPrice'],
          vehicle: ProductModel.fromJson(json['vehicle']),
          tags: json['tags'] != null && json['tags'].length > 0
              ? List<Tag>.from(json['tags'].map((x) => Tag.fromJson(x)))
              : [],
          gallery: json['gallery'] == null
              ? []
              : List<Gallery>.from(
                  json['gallery'].map((x) => Gallery.fromJson(x)),
                ).sorted((a, b) => a.index.compareTo(b.index)),
          product: null,
          itemType: ItemType.vehicle);
    } catch (e) {
      e.log();
      if (e is! DioException) {
        json.log(
          color: LogColors.red,
        );
      }
      rethrow;
    }
  }

  factory ProductVariantModel.productFromJson(Map<String, dynamic> json) {
    try {
      return ProductVariantModel(
          prices: [],
          colors: [],
          name: json['name'],
          specifications: json['specifications'] == null
              ? []
              : List<Specification>.from(
                  json['specifications'].map((x) => Specification.fromJson(x)),
                ),
          id: json['id'],
          totalPrice: json['totalPrice'] is int
              ? json['totalPrice']
              : int.tryParse(json['totalPrice']?.toString() ?? '0'),
          vehicle: null,
          tags: json['tags'] != null && json['tags'].length > 0
              ? List<Tag>.from(json['tags'].map((x) => Tag.fromJson(x)))
              : [],
          gallery: json['gallery'] == null
              ? []
              : List<Gallery>.from(
                  json['gallery'].map((x) => Gallery.fromJson(x)),
                ).sorted((a, b) => a.index.compareTo(b.index)),
          product: ProductModel.fromJson(json['product']),
          itemType: ItemType.product);
    } catch (e) {
      e.log();
      if (e is! DioException) {
        json.log(
          color: LogColors.red,
        );
      }
      rethrow;
    }
  }

  ProductModel get parentProduct =>
      itemType == ItemType.product ? product! : vehicle!;

  Specification? get rangeSpecification =>
      specifications.firstWhereOrNull(
        (element) => element.specification.name == 'Range',
      ) ??
      parentProduct.specifications.firstWhereOrNull(
        (element) => element.specification.name == 'Range',
      );

  Specification? get batteryCapacitySpecification =>
      specifications.firstWhereOrNull(
        (element) => element.specification.name == 'Battery Capacity',
      ) ??
      parentProduct.specifications.firstWhereOrNull(
        (element) => element.specification.name == 'Battery Capacity',
      );

  Specification? get batteryWarranty =>
      specifications.firstWhereOrNull(
        (element) => element.specification.name == 'Battery Warranty',
      ) ??
      parentProduct.specifications.firstWhereOrNull(
        (element) => element.specification.name == 'Battery Warranty',
      );

  List<Gallery> get images => gallery
      .where((e) => e.type == GalleryItemType.image)
      .sortedBy<num>((e) => e.index)
      .toList();

  List<VehicleColor> get sortedColors =>
      _colors.sortedBy<num>((e) => e.isDefault ? 0 : 1);

  final List<VehiclePrice> prices;
  final List<VehicleColor> _colors;
  final String name;
  final List<Specification> specifications;
  final String id;
  final int? totalPrice;
  final ProductModel? vehicle;
  final List<Tag> tags;

  final ProductModel? product;
  final List<Gallery> gallery;
  final ItemType itemType;

  @override
  String toString() {
    return '''ProductVariantModel(
      id: $id,
      name: $name,
      itemType: $itemType,
      totalPrice: $totalPrice,
      prices: ${prices.length},
      colors: ${_colors.length},
      specifications: ${specifications.length},
      tags: ${tags.length},
      gallery: ${gallery.length},
      vehicle: ${vehicle?.name},
      product: ${product?.name}
    )''';
  }
}

class VehicleColor {
  VehicleColor({
    required this.id,
    required this.code,
    required this.gallery,
    required this.name,
    required this.isDefault,
  });

  factory VehicleColor.fromRawJson(String str) =>
      VehicleColor.fromJson(json.decode(str));

  factory VehicleColor.fromJson(Map<String, dynamic> json) {
    Color color = Colors.black;
    try {
      color = HexColor.fromHex(json['code'] ?? '#000000');
    } catch (e) {
      e.log();
      json.log(
        color: LogColors.red,
      );
    }
    return VehicleColor(
      id: json['id']?.toString() ?? '', // Ensure id is a string
      code: color, // Default to black if null
      name: json['name'] ?? '', // Default to empty string if null
      gallery: json['gallery'] == null
          ? []
          : List<Gallery>.from(json['gallery'].map((x) => Gallery.fromJson(x)))
              .sortedBy<num>((e) => e.index),
      isDefault: json['default'] ?? false,
    );
  }

  final String id;
  final Color code;
  final List<Gallery> gallery;
  final String name;
  final bool isDefault;

  List<Gallery> get images => gallery
      .where((element) => element.type == GalleryItemType.image)
      .sortedBy<num>((e) => e.index)
      .toList();

  @override
  bool operator ==(covariant VehicleColor other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.code == code &&
        listEquals(other.gallery, gallery) &&
        other.name == name &&
        other.isDefault == isDefault;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        code.hashCode ^
        gallery.hashCode ^
        name.hashCode ^
        isDefault.hashCode;
  }
}

class Gallery {
  Gallery({
    required this.file,
    required this.index,
    required this.type,
  });

  factory Gallery.fromRawJson(String str) => Gallery.fromJson(json.decode(str));

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        file: json['file'] == null ? null : ImageElement.fromJson(json['file']),
        index: json['index'] is int
            ? json['index']
            : int.tryParse(json['index']?.toString() ?? '0'),
        type: GalleryItemType.values.firstWhere(
          (e) => e.name == json['type'],
        ),
      );

  final ImageElement? file;
  final int index;
  final GalleryItemType type;

  @override
  String toString() {
    return 'Gallery(file: $file, index: $index, type: $type)';
  }
}

class ImageElement {
  ImageElement({
    required this.name,
    required this.file,
  });

  factory ImageElement.fromRawJson(String str) =>
      ImageElement.fromJson(json.decode(str));

  factory ImageElement.fromJson(Map<String, dynamic> json) => ImageElement(
        name: json['name'] ?? json['filename'] ?? '',
        file: json['image'] == null
            ? json['video'] == null
                ? json['file'] == null
                    ? json['url'] == null
                        ? null
                        : Logo(
                            url: json['url'],
                            extension: json['extension'] ?? '')
                    : Logo.fromJson(json['file'])
                : Logo.fromJson(json['video'])
            : Logo.fromJson(json['image']),
      );
  final String? name;
  final Logo? file;

  @override
  String toString() {
    return 'ImageElement(name: $name, file: $file)';
  }
}

class Logo {
  Logo({
    required this.url,
    required this.extension,
  });

  factory Logo.fromRawJson(String str) => Logo.fromJson(json.decode(str));

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        url: _getImageUrl(json['url']),
        extension: json['extension'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'extension': extension,
      };

  final String url;
  final String? extension;

  @override
  String toString() {
    return 'Logo(url: $url, extension: $extension)';
  }
}

class VideoElement {
  VideoElement({
    required this.name,
    required this.video,
    required this.id,
  });

  factory VideoElement.fromRawJson(String str) =>
      VideoElement.fromJson(json.decode(str));

  factory VideoElement.fromJson(Map<String, dynamic> json) => VideoElement(
        name: json['name'],
        video: Logo.fromJson(json['video']),
        id: json['id'],
      );
  final String name;
  final Logo video;
  final String id;
}

class VehiclePrice {
  VehiclePrice({
    required this.amount,
    required this.category,
  });

  factory VehiclePrice.fromRawJson(String str) =>
      VehiclePrice.fromJson(json.decode(str));

  factory VehiclePrice.fromJson(Map<String, dynamic> json) {
    dynamic catgeoryField;
    if (json.containsKey('category')) {
      catgeoryField = json['category'];
    } else if (json.containsKey('priceCategory')) {
      catgeoryField = json['priceCategory'];
    } else if (json.containsKey('categoryName')) {
      catgeoryField = json['categoryName'];
    }
    return VehiclePrice(
      amount: json['amount'],
      category: catgeoryField == null
          ? Tag(title: '', description: '', id: '')
          : catgeoryField is String
              ? Tag(title: catgeoryField, description: '', id: '')
              : Tag.fromJson(catgeoryField),
    );
  }
  final int amount;
  final Tag category;
}

class Specification {
  Specification({
    required this.id,
    required this.name,
    required this.specification,
    required this.type,
    required this.intValue,
    required this.stringValue,
    required this.category,
    required this.isKeyFeature,
  });

  factory Specification.fromRawJson(String str) =>
      Specification.fromJson(json.decode(str));

  factory Specification.fromJson(Map<String, dynamic> json) {
    try {
      return Specification(
        id: json['id'],
        name: json['name'],
        specification: ProductType.fromJson(json['specification']),
        type: json['type'],
        intValue: json['intValue'],
        stringValue: json['stringValue'],
        category: json['category'] == null
            ? null
            : ProductType.fromJson(json['category']),
        isKeyFeature: json['isKeyFeature'] ?? false,
      );
    } catch (e) {
      e.log();
      json.log(
        color: LogColors.green,
      );
      throw DioException(requestOptions: RequestOptions());
    }
  }
  static List<Specification> mergedSpecs({
    List<Specification?>? vehicleSpecs,
    List<Specification?>? variantSpecs,
  }) {
    return [
      if (vehicleSpecs != null)
        ...vehicleSpecs
            .where(
              (element) =>
                  element != null &&
                  !(variantSpecs?.any(
                        (e) => e?.specification.id == element.specification.id,
                      ) ??
                      false),
            )
            .map((e) => e!),
      if (variantSpecs != null)
        ...variantSpecs.where((element) => element != null).map((e) => e!),
    ];
  }

  String getValueWithUnit() {
    var data = '';
    if (type == 'int') {
      data = intValue.toString();
    } else {
      data = stringValue ?? '';
    }
    return data.isEmpty ? '' : '$data ${specification.unit}';
  }

  String? get value => type == 'int' ? intValue?.toString() : stringValue;
  final String id;
  final String name;
  final ProductType specification;
  final String type;
  final int? intValue;
  final String? stringValue;
  final ProductType? category;
  final bool isKeyFeature;
}

class ProductType {
  ProductType({
    required this.id,
    required this.name,
    required this.description,
    required this.unit,
    required this.vehicleType,
    this.logo,
  });

  factory ProductType.fromRawJson(String str) =>
      ProductType.fromJson(json.decode(str));

  factory ProductType.fromJson(Map<String, dynamic> json) => ProductType(
        id: json['id'] ?? '',
        name: json['name'],
        description: json['description'] ?? '',
        unit: json['unit'] ?? '',
        logo: json['logo'] == null ? null : Logo.fromJson(json['logo']),
        vehicleType: json['vehicleType'] == null
            ? null
            : ProductType.fromJson(json['vehicleType']),
      );

  final String id;
  final String name;
  final String description;
  final String unit;
  final ProductType? vehicleType;
  final Logo? logo;

  @override
  String toString() {
    return 'ProductType(id: $id, name: $name, description: $description, unit: $unit, vehicleType: $vehicleType, logo: $logo)';
  }
}

class Tag {
  Tag({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Tag.fromRawJson(String str) => Tag.fromJson(json.decode(str));

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json['id'] ?? '',
        title: json['title'] ?? json['name'] ?? '',
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
      };

  final String id;
  final String title;
  final String description;

  @override
  String toString() {
    return 'Tag(title: $title, description: $description)';
  }

  @override
  bool operator ==(covariant Tag other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ description.hashCode;
}

class ProductModel {
  ProductModel({
    required this.brand,
    required this.name,
    required this.description,
    required this.longDescription,
    required this.id,
    required this.type,
    required this.subTypes,
    required this.specifications,
    required this.brochure,
  });

  factory ProductModel.fromRawJson(String str) =>
      ProductModel.fromJson(json.decode(str));

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        brand: json['brand'] == null ? null : Brand.fromJson(json['brand']),
        name: json['name'],
        description: json['description'],
        longDescription: json['longDescription'] ?? '',
        id: json['id'],
        type: json['type'] == null ? null : ProductType.fromJson(json['type']),
        subTypes: json['subTypes'] == null
            ? []
            : List<ProductType>.from(
                json['subTypes'].map((x) => ProductType.fromJson(x)),
              ),
        specifications: json['specifications'] == null ||
                json['specifications'].length == 0
            ? []
            : List<Specification>.from(
                json['specifications'].map((x) => Specification.fromJson(x)),
              ),
        brochure: json['brochure'] == null
            ? null
            : ImageElement.fromJson(json['brochure']),
      );
  final Brand? brand;
  final String name;
  final String? description;
  final String? longDescription;
  final String id;
  final ProductType? type;
  final List<ProductType> subTypes;
  final List<Specification> specifications;
  final ImageElement? brochure;
}

class Brand {
  Brand({
    required this.id,
    required this.name,
    this.logo,
    this.type = const [],
    this.index,
  });

  ItemType get itemType =>
      type.contains('vehicle') ? ItemType.vehicle : ItemType.product;

  factory Brand.fromRawJson(String str) => Brand.fromJson(json.decode(str));

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json['id'],
        name: json['name'],
        logo: json['logo'] == null ? null : Logo.fromJson(json['logo']),
        type: json['type'] == null
            ? []
            : List<String>.from(
                json['type'].map((x) => x),
              ),
        index: json['index'],
      );
  final String id;
  final String name;
  final Logo? logo;
  final int? index;
  final List<String> type;
}

enum GalleryItemType { image, video }

String _getImageUrl(dynamic url) {
  if (url is! String || url == '') {
    return '';
  } else {
    final myUrl = url;
    if (myUrl.contains('http')) {
      return myUrl;
    } else {
      return GraphqlClient.baseUrl + myUrl;
    }
  }
}
