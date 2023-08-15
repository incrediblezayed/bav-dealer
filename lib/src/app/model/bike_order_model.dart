// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

enum Status { pending, accepted, rejected }

class BikeOrderModel {
  final Status currentStatus;
  final String orderID;
  final DateTime dateTime;
  final String vehicleName;
  final String image;
  final String model;
  final String color;
  final String price;
  final String customerName;
  final String customerEmail;
  final String customerContact;
  final String customerAlternateContact;
  final String customerAddress;
  BikeOrderModel({
    required this.currentStatus,
    required this.orderID,
    required this.dateTime,
    required this.vehicleName,
    required this.image,
    required this.model,
    required this.color,
    required this.price,
    required this.customerName,
    required this.customerEmail,
    required this.customerContact,
    required this.customerAlternateContact,
    required this.customerAddress,
  });

  BikeOrderModel copyWith({
    Status? currentStatus,
    String? orderID,
    DateTime? dateTime,
    String? vehicleName,
    String? image,
    String? model,
    String? color,
    String? price,
    String? customerName,
    String? customerEmail,
    String? customerContact,
    String? customerAlternateContact,
    String? customerAddress,
  }) {
    return BikeOrderModel(
      currentStatus: currentStatus ?? this.currentStatus,
      orderID: orderID ?? this.orderID,
      dateTime: dateTime ?? this.dateTime,
      vehicleName: vehicleName ?? this.vehicleName,
      image: image ?? this.image,
      model: model ?? this.model,
      color: color ?? this.color,
      price: price ?? this.price,
      customerName: customerName ?? this.customerName,
      customerEmail: customerEmail ?? this.customerEmail,
      customerContact: customerContact ?? this.customerContact,
      customerAlternateContact:
          customerAlternateContact ?? this.customerAlternateContact,
      customerAddress: customerAddress ?? this.customerAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentStatus': currentStatus.name,
      'orderID': orderID,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'vehicleName': vehicleName,
      'image': image,
      'model': model,
      'color': color,
      'price': price,
      'customerName': customerName,
      'customerEmail': customerEmail,
      'customerContact': customerContact,
      'customerAlternateContact': customerAlternateContact,
      'customerAddress': customerAddress,
    };
  }

  factory BikeOrderModel.fromMap(Map<String, dynamic> map) {
    return BikeOrderModel(
      currentStatus: Status.values
          .firstWhere((element) => element.name == map['currentStatus']),
      orderID: map['orderID'] as String,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
      vehicleName: map['vehicleName'] as String,
      image: map['image'] as String,
      model: map['model'] as String,
      color: map['color'] as String,
      price: map['price'] as String,
      customerName: map['customerName'] as String,
      customerEmail: map['customerEmail'] as String,
      customerContact: map['customerContact'] as String,
      customerAlternateContact: map['customerAlternateContact'] as String,
      customerAddress: map['customerAddress'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BikeOrderModel.fromJson(String source) =>
      BikeOrderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BikeOrderModel(currentStatus: $currentStatus, orderID: $orderID, dateTime: $dateTime, vehicleName: $vehicleName, image: $image, model: $model, color: $color, price: $price, customerName: $customerName, customerEmail: $customerEmail, customerContact: $customerContact, customerAlternateContact: $customerAlternateContact, customerAddress: $customerAddress)';
  }

  @override
  bool operator ==(covariant BikeOrderModel other) {
    if (identical(this, other)) return true;

    return other.currentStatus == currentStatus &&
        other.orderID == orderID &&
        other.dateTime == dateTime &&
        other.vehicleName == vehicleName &&
        other.image == image &&
        other.model == model &&
        other.color == color &&
        other.price == price &&
        other.customerName == customerName &&
        other.customerEmail == customerEmail &&
        other.customerContact == customerContact &&
        other.customerAlternateContact == customerAlternateContact &&
        other.customerAddress == customerAddress;
  }

  @override
  int get hashCode {
    return currentStatus.hashCode ^
        orderID.hashCode ^
        dateTime.hashCode ^
        vehicleName.hashCode ^
        image.hashCode ^
        model.hashCode ^
        color.hashCode ^
        price.hashCode ^
        customerName.hashCode ^
        customerEmail.hashCode ^
        customerContact.hashCode ^
        customerAlternateContact.hashCode ^
        customerAddress.hashCode;
  }
}
