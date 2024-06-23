import 'dart:convert';

class VehicleDealerModel {
  final String id;
  final VehicleStockVariant vehicleVariant;
  final VehicleColor vehicleColor;
  final int stock;
  final double totalPrice;
  final String type;
  final Dealer dealer;
  final bool accepted;
  final DateTime createdAt;
  final DateTime modifiedAt;

  VehicleDealerModel({
    required this.id,
    required this.vehicleVariant,
    required this.vehicleColor,
    required this.stock,
    required this.totalPrice,
    required this.type,
    required this.dealer,
    required this.accepted,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory VehicleDealerModel.fromJson(Map<String, dynamic> json) {
    return VehicleDealerModel(
      id: json['id'],
      vehicleVariant: VehicleStockVariant.fromJson(json['vehicleVariant']),
      vehicleColor: VehicleColor.fromJson(json['vehicleColor']),
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
      'vehicleVariant': vehicleVariant.toJson(),
      'vehicleColor': vehicleColor.toJson(),
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

class VehicleStockVariant {
  final String id;
  final String name;

  VehicleStockVariant({
    required this.id,
    required this.name,
  });

  factory VehicleStockVariant.fromJson(Map<String, dynamic> json) {
    return VehicleStockVariant(
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

class VehicleColor {
  final String id;
  final String name;

  VehicleColor({
    required this.id,
    required this.name,
  });

  factory VehicleColor.fromJson(Map<String, dynamic> json) {
    return VehicleColor(
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
  final String name;

  Dealer({
    required this.id,
    required this.name,
  });

  factory Dealer.fromJson(Map<String, dynamic> json) {
    return Dealer(
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
