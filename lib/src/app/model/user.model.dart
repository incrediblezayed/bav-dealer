import 'dart:convert';

import 'package:dealerapp/src/app/repository/graphql_client.dart';

//ignore_for_file: argument_type_not_assignable
//ignore_for_file: inference_failure_on_untyped_parameter
//ignore_for_file: inference_failure_on_collection_literal

///Data Model for User
class UserModel {
  ///User Model Default Constructor
  UserModel(
      {this.id,
      this.address,
      this.addresses,
      this.email,
      this.emailVerified,
      this.favorites,
      this.createdAt,
      this.cartItemsCount,
      this.cartItems,
      this.addressesCount,
      this.isAdmin,
      this.name,
      this.modifiedAt,
      this.phoneNumberVerified,
      this.phoneNumber,
      this.profileImage,
      this.favoritesCount,
      this.deactivate = false});

  ///From Json Method to create new constructor with data
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'],
      address: json['address'],
      addresses: json['addresses'] == null
          ? []
          : List<dynamic>.from(json['addresses']!.map((x) => x)),
      email: json['email'],
      emailVerified: json['emailVerified'],
      favorites: json['favorites'] == null
          ? []
          : List<dynamic>.from(json['favorites']!.map((x) => x)),
      createdAt:
          json['createdAt'] == null ? null : DateTime.parse(json['createdAt']),
      cartItemsCount: json['cartItemsCount'],
      cartItems: json['cartItems'] == null
          ? []
          : List<dynamic>.from(json['cartItems']!.map((x) => x)),
      addressesCount: json['addressesCount'],
      isAdmin: json['isAdmin'],
      name: json['name'],
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt']),
      phoneNumberVerified: json['phoneNumberVerified'],
      phoneNumber: json['phoneNumber'],
      profileImage: json['profile_image'] == null
          ? null
          : ImageFieldOutput.fromJson(json['profile_image']),
      favoritesCount: json['favoritesCount'],
      deactivate: json['deactivate'] ?? false);

  ///From Raw Json Method to create new constructor with data
  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  ///User Id
  final String? id;

  ///User Address
  final String? address;

  ///User Addresses
  final List<dynamic>? addresses;

  ///User Email
  final String? email;

  ///User Email Verified
  final bool? emailVerified;

  ///User Favorites
  final List<dynamic>? favorites;

  ///User Created At
  final DateTime? createdAt;

  ///User Cart Items Count
  final int? cartItemsCount;

  ///User Cart Items
  final List<dynamic>? cartItems;

  ///User Addresses Count
  final int? addressesCount;

  ///User Is Admin
  final bool? isAdmin;

  ///User Name
  final String? name;

  ///User Modified At
  final DateTime? modifiedAt;

  ///User Phone Number Verified
  final bool? phoneNumberVerified;

  ///User Phone Number
  final String? phoneNumber;

  ///User Profile Image
  final ImageFieldOutput? profileImage;

  ///User Favorites Count
  final int? favoritesCount;

  ///Deactivate field
  final bool deactivate;
}

///Data Model for Image Field Output
class ImageFieldOutput {
  ///Image Field Output Default Constructor
  ImageFieldOutput({
    this.url,
    this.width,
    this.height,
    this.filesize,
    this.id,
  });

  ///From Json Method to create new constructor with data
  factory ImageFieldOutput.fromJson(Map<String, dynamic> json) {
    return ImageFieldOutput(
      url: GraphqlClient.baseUrl + json['url'],
      width: json['width'],
      height: json['height'],
      filesize: json['filesize'],
      id: json['id'],
    );
  }

  ///Image Field Output Url
  final String? url;

  ///Image Field Output Width
  final int? width;

  ///Image Field Output Height
  final int? height;

  ///Image Field Output Filesize
  final int? filesize;

  ///Image Field Output Id
  final String? id;
}
