import 'dart:convert';
import 'dart:ui';

import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

enum ItemType {
  product,
  vehicle,
}

class ProductVariantModel {
  ProductVariantModel({
    required this.prices,
    required this.colors,
    required this.name,
    required this.specifications,
    required this.id,
    required this.totalPrice,
    required this.vehicle,
    required this.tags,
    required this.gallery,
    required this.product,
    required this.itemType,
  });

  factory ProductVariantModel.vehicleFromJson(Map<String, dynamic> json) {
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
              ),
        product: null,
        itemType: ItemType.vehicle,
      );
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
        totalPrice: json['totalPrice'],
        vehicle: null,
        tags: json['tags'] != null && json['tags'].length > 0
            ? List<Tag>.from(json['tags'].map((x) => Tag.fromJson(x)))
            : [],
        gallery: json['gallery'] == null
            ? []
            : List<Gallery>.from(
                json['gallery'].map((x) => Gallery.fromJson(x)),
              ),
        product: ProductModel.fromJson(json['product']),
        itemType: ItemType.product,
      );
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
  final List<VehiclePrice> prices;
  final List<VehicleColor> colors;
  final String name;
  final List<Specification> specifications;
  final String id;
  final int? totalPrice;
  final ProductModel? vehicle;
  final List<Tag> tags;

  final ProductModel? product;
  final List<Gallery> gallery;
  final ItemType itemType;
}

class VehicleColor {
  VehicleColor({
    required this.id,
    required this.code,
    required this.gallery,
    required this.name,
  });

  factory VehicleColor.fromRawJson(String str) =>
      VehicleColor.fromJson(json.decode(str));

  factory VehicleColor.fromJson(Map<String, dynamic> json) => VehicleColor(
        id: json['id'],
        code: HexColor.fromHex(json['code'] ?? '#000000'),
        name: json['name'],
        gallery: json['gallery'] == null
            ? []
            : List<Gallery>.from(
                json['gallery'].map((x) => Gallery.fromJson(x)),
              ),
      );
  final String id;
  final Color code;
  final List<Gallery> gallery;
  final String name;

  List<Gallery> get images => gallery
      .where((element) => element.type == GalleryItemType.image)
      .toList();

  @override
  bool operator ==(covariant VehicleColor other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.code == code &&
        listEquals(other.gallery, gallery) &&
        other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^ code.hashCode ^ gallery.hashCode ^ name.hashCode;
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
        index: json['index'],
        type: GalleryItemType.values.firstWhere(
          (e) => e.name == json['type'],
        ),
      );

  final ImageElement? file;
  final int index;
  final GalleryItemType type;
}

class ImageElement {
  ImageElement({
    required this.name,
    required this.file,
  });

  factory ImageElement.fromRawJson(String str) =>
      ImageElement.fromJson(json.decode(str));

  factory ImageElement.fromJson(Map<String, dynamic> json) => ImageElement(
        name: json['name'],
        file: json['image'] == null
            ? json['video'] == null
                ? json['file'] == null
                    ? null
                    : Logo.fromJson(json['file'])
                : Logo.fromJson(json['video'])
            : Logo.fromJson(json['image']),
      );
  final String? name;
  final Logo? file;
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
        specification: Type.fromJson(json['specification']),
        type: json['type'],
        intValue: json['intValue'],
        stringValue: json['stringValue'],
        category:
            json['category'] == null ? null : Type.fromJson(json['category']),
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

  String getValue() {
    var data = '';
    if (type == 'int') {
      data = intValue.toString();
    } else {
      data = stringValue ?? '';
    }
    return data.isEmpty ? '' : '$data ${specification.unit}';
  }

  final String id;
  final String name;
  final Type specification;
  final String type;
  final int? intValue;
  final String? stringValue;
  final Type? category;
  final bool isKeyFeature;
}

class Type {
  Type({
    required this.id,
    required this.name,
    required this.description,
    required this.unit,
    this.logo,
  });

  factory Type.fromRawJson(String str) => Type.fromJson(json.decode(str));

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        unit: json['unit'] ?? '',
        logo: json['logo'] == null ? null : Logo.fromJson(json['logo']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'unit': unit,
        'logo': logo?.toJson(),
      };

  final String id;
  final String name;
  final String description;
  final String unit;
  final Logo? logo;
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
  });

  factory ProductModel.fromRawJson(String str) =>
      ProductModel.fromJson(json.decode(str));

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        brand: json['brand'] == null ? null : Brand.fromJson(json['brand']),
        name: json['name'],
        description: json['description'],
        longDescription: json['longDescription'] ?? '',
        id: json['id'],
        type: json['type'] == null ? null : Type.fromJson(json['type']),
        subTypes: json['subTypes'] == null
            ? []
            : List<Type>.from(
                json['subTypes'].map((x) => Type.fromJson(x)),
              ),
        specifications: json['specifications'] == null ||
                json['specifications'].length == 0
            ? []
            : List<Specification>.from(
                json['specifications'].map((x) => Specification.fromJson(x)),
              ),
      );
  final Brand? brand;
  final String name;
  final String? description;
  final String? longDescription;
  final String id;
  final Type? type;
  final List<Type> subTypes;
  final List<Specification> specifications;
}

class Brand {
  Brand({
    required this.id,
    required this.name,
    this.logo,
    this.type = const [],
  });

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
      );

  ItemType get itemType =>
      type.contains('vehicle') ? ItemType.vehicle : ItemType.product;
  final String id;
  final String name;
  final Logo? logo;
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
