class VehicleDealerModel {
  final String id;
  final bool accepted;
  final String type;
  final double totalPrice;
  final int stock;
  final String vehicleColor;
  final String vehicleVariant;

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
      vehicleColor: json['vehicleColor'] ?? '',
      vehicleVariant: json['vehicleVariant'] ?? '',
    );
  }
}
