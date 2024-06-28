import 'dart:convert';

class VehicleDealerModel {
  final String id;
  final bool accepted;
  final String type;
  final double totalPrice;
  final int stock;
  final VehicleColor vehicleColor;
  final VehicleVariant vehicleVariant;

  VehicleDealerModel({
    required this.id,
    required this.accepted,
    required this.type,
    required this.totalPrice,
    required this.stock,
    required this.vehicleColor,
    required this.vehicleVariant,
  });

  factory VehicleDealerModel.fromJson(Map<String, dynamic> json) {
    return VehicleDealerModel(
      id: json['id'] ?? '',
      accepted: json['accepted'] ?? false,
      type: json['type'] ?? '',
      totalPrice: json['totalPrice'] ?? 0.0,
      stock: json['stock'] ?? 0,
      vehicleColor: VehicleColor.fromJson(json['vehicleColor'] ?? {}),
      vehicleVariant: VehicleVariant.fromJson(json['vehicleVariant'] ?? {}),
    );
  }
}

class VehicleColor {
  final String id;
  final String name;
  final List<Gallery> gallery;

  VehicleColor({
    required this.id,
    required this.name,
    required this.gallery,
  });

  factory VehicleColor.fromJson(Map<String, dynamic> json) {
    return VehicleColor(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      gallery: json['gallery'] == null
          ? []
          : List<Gallery>.from(json['gallery'].map((x) => Gallery.fromJson(x))),
    );
  }
}

class Gallery {
  final String id;
  final String file;

  Gallery({
    required this.id,
    required this.file,
  });

  factory Gallery.fromJson(Map<String, dynamic> json) {
    return Gallery(
      id: json['id'] ?? '',
      file: json['file'] ?? '',
    );
  }
}

class VehicleVariant {
  final String id;
  final String name;

  VehicleVariant({
    required this.id,
    required this.name,
  });

  factory VehicleVariant.fromJson(Map<String, dynamic> json) {
    return VehicleVariant(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
