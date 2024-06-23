import 'dart:convert';

class ProductDealerModel {
  final String id;
  final ProductStockVariant productVariant;
  final int stock;
  final double totalPrice;
  final String type;
  final Dealer dealer;
  final bool accepted;
  final DateTime createdAt;
  final DateTime modifiedAt;

  ProductDealerModel({
    required this.id,
    required this.productVariant,
    required this.stock,
    required this.totalPrice,
    required this.type,
    required this.dealer,
    required this.accepted,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory ProductDealerModel.fromJson(Map<String, dynamic> json) {
    return ProductDealerModel(
      id: json['id'],
      productVariant: ProductStockVariant.fromJson(json['productVariant']),
      stock: json['stock'],
      totalPrice: json['totalPrice'].toDouble(),
      type: json['type'],
      dealer: Dealer.fromJson(json['dealer']),
      accepted: json['accepted'],
      createdAt: DateTime.parse(json['createdAt']),
      modifiedAt: DateTime.parse(json['modifiedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productVariant': productVariant.toJson(),
      'stock': stock,
      'totalPrice': totalPrice,
      'type': type,
      'dealer': dealer.toJson(),
      'accepted': accepted,
      'createdAt': createdAt.toIso8601String(),
      'modifiedAt': modifiedAt.toIso8601String(),
    };
  }
}

class ProductStockVariant {
  final String id;
  final String name;

  ProductStockVariant({
    required this.id,
    required this.name,
  });

  factory ProductStockVariant.fromJson(Map<String, dynamic> json) {
    return ProductStockVariant(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class Dealer {
  final String id;
  final User user;

  Dealer({
    required this.id,
    required this.user,
  });

  factory Dealer.fromJson(Map<String, dynamic> json) {
    return Dealer(
      id: json['id'],
      user: User.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user.toJson(),
    };
  }
}

class User {
  final String id;
  final String name;

  User({
    required this.id,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
