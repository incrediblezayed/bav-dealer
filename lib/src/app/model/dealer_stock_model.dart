import 'dart:convert';

import 'package:dealerapp/src/app/model/product_details_model.dart';

enum DealerType { product, vehicle, testDrive }

class DealerStockModel {
  final Variant? _productVariant;
  final String id;
  final int? stock;
  final List<Price>? prices;
  final int? totalPrice;
  final List<Guarantee>? guarantees;
  final VehicleColor? vehicleColor;
  final Variant? _vehicleVariant;
  final DealerType dealerType;
  final String? type;
  final bool accepted;
  final DateTime createdAt;

  Variant get variant => switch (dealerType) {
        DealerType.product => _productVariant!,
        DealerType.testDrive => _vehicleVariant!,
        DealerType.vehicle => _vehicleVariant!
      };

  List<Gallery> get images => dealerType == DealerType.product
      ? variant.images
      : (vehicleColor?.images ?? []);

  DealerStockModel({
    required this.id,
    this.stock,
    this.prices,
    this.totalPrice,
    this.guarantees,
    this.vehicleColor,
    required this.dealerType,
    this.type,
    this.accepted = true,
    required this.createdAt,
    Variant? productVariant,
    Variant? vehicleVariant,
  })  : _productVariant = productVariant,
        _vehicleVariant = vehicleVariant;

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
      dealerType: dealerType,
      accepted: json['accepted'] ?? true,
      type: json['type'],
      createdAt: json['createdAt'] == null
          ? DateTime.now()
          : DateTime.parse(json['createdAt']),
    );
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
  final int originalAmount;
  final Category? category;

  Price({
    required this.originalAmount,
    required this.id,
    required this.amount,
    required this.category,
  });

  Price copyWith({
    String? id,
    int? amount,
    int? originalAmount,
    Category? category,
  }) =>
      Price(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        originalAmount: originalAmount ?? this.originalAmount,
        category: category ?? this.category,
      );

  factory Price.fromRawJson(String str) => Price.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        id: json['id'],
        amount: json['amount'],
        originalAmount: json['originalAmount'] ?? -1,
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
  final List<Gallery> images;

  Variant(
      {required this.id,
      required this.name,
      required this.modifiedAt,
      this.parentProduct,
      this.images = const []});

  factory Variant.fromRawJson(String str) => Variant.fromJson(json.decode(str));

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      modifiedAt: json['modifiedAt'] == null
          ? DateTime.now()
          : DateTime.parse(json['modifiedAt']),
      parentProduct: json['vehicle'] == null
          ? json['product'] == null
              ? null
              : Guarantee.fromJson(json['product'])
          : Guarantee.fromJson(json['vehicle']),
      images: json['gallery'] == null
          ? []
          : List<Gallery>.from(
              json['gallery'].map((x) => Gallery.fromJson(x))));
}
