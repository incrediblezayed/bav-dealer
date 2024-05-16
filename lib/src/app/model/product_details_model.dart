import 'dart:convert';

import 'package:dealerapp/src/app/model/variant_details.model.dart';



class ProductDetailsModel {
  ProductDetailsModel({
    required this.prices,
    required this.name,
    required this.id,
    required this.totalPrice,
    required this.vehicle,
    required this.tags,
  });

  factory ProductDetailsModel.fromRawJson(String str) =>
      ProductDetailsModel.fromJson(json.decode(str));

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        prices: List<ProductPrice>.from(
          json['prices'].map((x) => ProductPrice.fromJson(x)),
        ),
        name: json['name'],
        id: json['id'],
        totalPrice: json['totalPrice'],
        vehicle: Vehicle.fromJson(json['vehicle']),
        tags: json['tags'] != null && json['tags'].length > 0
            ? List<Tag>.from(json['tags'].map((x) => Tag.fromJson(x)))
            : [],
      );

  final List<ProductPrice> prices;

  final String? name;
  final String? id;
  final int totalPrice;
  final Vehicle vehicle;
  final List<Tag> tags;
}
class ProductPrice {
  ProductPrice({
    required this.amount,
    required this.category,
  });

  factory ProductPrice.fromRawJson(String str) =>
      ProductPrice.fromJson(json.decode(str));

  factory ProductPrice.fromJson(Map<String, dynamic> json) {
    dynamic catgeoryField;
    if (json.containsKey('category')) {
      catgeoryField = json['category'];
    } else if (json.containsKey('priceCategory')) {
      catgeoryField = json['priceCategory'];
    }
    return ProductPrice(
      amount: json['amount'],
      category: catgeoryField == null
          ? Category(name: '', description: '')
          : catgeoryField is String
          ? Category(name: catgeoryField, description: '')
          : Category.fromJson(catgeoryField),
    );
  }
  final int amount;
  final Category category;
}