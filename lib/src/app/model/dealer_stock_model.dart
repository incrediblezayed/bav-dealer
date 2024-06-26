import 'dart:convert';

enum DealerType { product, vehicle, testDrive }

class DealerStockModel {
  final Variant? productVariant;
  final String id;
  final int? stock;
  final List<Price>? prices;
  final int? totalPrice;
  final List<Guarantee>? guarantees;
  final VehicleColor? vehicleColor;
  final Variant? vehicleVariant;
  final DealerType dealerType;

  Variant get variant => switch (dealerType) {
        DealerType.product => productVariant!,
        DealerType.testDrive => vehicleVariant!,
        DealerType.vehicle => vehicleVariant!
      };

  List<ImageElement> get images => dealerType == DealerType.product
      ? variant.images
      : (vehicleColor?.images ?? []);

  DealerStockModel({
    this.productVariant,
    required this.id,
    this.stock,
    this.prices,
    this.totalPrice,
    this.guarantees,
    this.vehicleColor,
    this.vehicleVariant,
    required this.dealerType,
  });

  DealerStockModel copyWith(
          {Variant? productVariant,
          String? id,
          int? stock,
          List<Price>? prices,
          int? totalPrice,
          List<Guarantee>? guarantees,
          VehicleColor? vehicleColor,
          Variant? vehicleVariant,
          DealerType? dealerType}) =>
      DealerStockModel(
          productVariant: productVariant ?? this.productVariant,
          id: id ?? this.id,
          stock: stock ?? this.stock,
          prices: prices ?? this.prices,
          totalPrice: totalPrice ?? this.totalPrice,
          guarantees: guarantees ?? this.guarantees,
          vehicleColor: vehicleColor ?? this.vehicleColor,
          vehicleVariant: vehicleVariant ?? this.vehicleVariant,
          dealerType: dealerType ?? this.dealerType);

  factory DealerStockModel.fromJson(
      Map<String, dynamic> json, DealerType dealerType) {
    return DealerStockModel(
        productVariant: json['productVariant'] == null
            ? null
            : Variant.fromJson(json['productVariant']),
        id: json['id'],
        stock: json['stock'],
        prices: json['prices'] == null
            ? []
            : List<Price>.from(json['prices']!.map((x) => Price.fromJson(x))),
        totalPrice: json['totalPrice'] ?? json['price'],
        guarantees: json['guarantees'] == null
            ? []
            : List<Guarantee>.from(
                json['guarantees']!.map((x) => Guarantee.fromJson(x))),
        vehicleColor: json['vehicleColor'] == null
            ? null
            : VehicleColor.fromJson(json['vehicleColor']),
        vehicleVariant: json['vehicleVariant'] == null
            ? null
            : Variant.fromJson(json['vehicleVariant']),
        dealerType: dealerType);
  }
}

class Guarantee {
  final String name;
  final String id;
  final String description;
  final Category? brand;

  Guarantee({
    required this.name,
    required this.id,
    required this.description,
    this.brand,
  });

  Guarantee copyWith({
    String? name,
    String? id,
    String? description,
    Category? brand,
  }) =>
      Guarantee(
        name: name ?? this.name,
        id: id ?? this.id,
        description: description ?? this.description,
        brand: brand ?? this.brand,
      );

  factory Guarantee.fromRawJson(String str) =>
      Guarantee.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Guarantee.fromJson(Map<String, dynamic> json) => Guarantee(
        name: json['name'],
        id: json['id'],
        description: json['description'],
        brand: json['brand'] == null ? null : Category.fromJson(json['brand']),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
        'description': description,
        'brand': brand?.toJson(),
      };
}

class Category {
  final String id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  Category copyWith({
    String? id,
    String? name,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class Price {
  final String id;
  final int amount;
  final Category? category;

  Price({
    required this.id,
    required this.amount,
    required this.category,
  });

  Price copyWith({
    String? id,
    int? amount,
    Category? category,
  }) =>
      Price(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        category: category ?? this.category,
      );

  factory Price.fromRawJson(String str) => Price.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        id: json['id'],
        amount: json['amount'],
        category: json['category'] == null
            ? null
            : Category.fromJson(json['category']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'amount': amount,
        'category': category?.toJson(),
      };
}

class Variant {
  final String id;
  final String name;
  final DateTime modifiedAt;
  final Guarantee? parentProduct;

  final List<ImageElement> images;

  Variant(
      {required this.id,
      required this.name,
      required this.modifiedAt,
      this.parentProduct,
      this.images = const []});

  Variant copyWith(
          {String? id,
          String? name,
          DateTime? modifiedAt,
          Guarantee? parentProduct,
          List<ImageElement>? images}) =>
      Variant(
          id: id ?? this.id,
          name: name ?? this.name,
          modifiedAt: modifiedAt ?? this.modifiedAt,
          parentProduct: parentProduct ?? this.parentProduct,
          images: images ?? this.images);

  factory Variant.fromRawJson(String str) => Variant.fromJson(json.decode(str));

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
      id: json['id'],
      name: json['name'],
      modifiedAt: DateTime.parse(json['modifiedAt']),
      parentProduct: json['vehicle'] == null
          ? json['product'] == null
              ? null
              : Guarantee.fromJson(json['product'])
          : Guarantee.fromJson(json['vehicle']),
      images: json['images'] == null
          ? []
          : List<ImageElement>.from(
              json['images'].map((x) => ImageElement.fromJson(x))));
}

class VehicleColor {
  final String id;
  final String name;
  final String code;
  final List<ImageElement> images;

  VehicleColor({
    required this.id,
    required this.name,
    required this.code,
    required this.images,
  });

  VehicleColor copyWith({
    String? id,
    String? name,
    String? code,
    List<ImageElement>? images,
  }) =>
      VehicleColor(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        images: images ?? this.images,
      );

  factory VehicleColor.fromRawJson(String str) =>
      VehicleColor.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VehicleColor.fromJson(Map<String, dynamic> json) => VehicleColor(
        id: json['id'],
        name: json['name'],
        code: json['code'],
        images: List<ImageElement>.from(
            json['images'].map((x) => ImageElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'code': code,
        'images': List<dynamic>.from(images.map((x) => x.toJson())),
      };
}

class ImageElement {
  final String id;
  final ImageImage image;

  ImageElement({
    required this.id,
    required this.image,
  });

  ImageElement copyWith({
    String? id,
    ImageImage? image,
  }) =>
      ImageElement(
        id: id ?? this.id,
        image: image ?? this.image,
      );

  factory ImageElement.fromRawJson(String str) =>
      ImageElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageElement.fromJson(Map<String, dynamic> json) => ImageElement(
        id: json['id'],
        image: ImageImage.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image.toJson(),
      };
}

class ImageImage {
  final String url;

  ImageImage({
    required this.url,
  });

  ImageImage copyWith({
    String? url,
  }) =>
      ImageImage(
        url: url ?? this.url,
      );

  factory ImageImage.fromRawJson(String str) =>
      ImageImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageImage.fromJson(Map<String, dynamic> json) => ImageImage(
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'url': url,
      };
}
