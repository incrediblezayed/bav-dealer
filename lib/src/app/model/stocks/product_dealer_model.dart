import 'dart:convert';

class ProductDealerModel {
  final String id;
  final bool accepted;
  final String type;
  final double totalPrice;
  final int stock;
  final DateTime modifiedAt;
  final ProductVariant productVariant;

  ProductDealerModel({
    required this.id,
    required this.accepted,
    required this.type,
    required this.totalPrice,
    required this.stock,
    required this.modifiedAt,
    required this.productVariant,
  });

  factory ProductDealerModel.fromJson(Map<String, dynamic> json) {
    return ProductDealerModel(
      id: json['id'],
      accepted: json['accepted'],
      type: json['type'],
      totalPrice: json['totalPrice'],
      stock: json['stock'],
      modifiedAt: DateTime.parse(json['modifiedAt']['value']),
      productVariant: ProductVariant.fromJson(json['productVariant']),
    );
  }
}

class ProductVariant {
  final String name;
  final String id;
  final List<ProductGalleryItem> gallery;

  ProductVariant({
    required this.name,
    required this.id,
    required this.gallery,
  });

  factory ProductVariant.fromJson(Map<String, dynamic> json) {
    var galleryList = (json['gallery'] as List)
        .map((item) => ProductGalleryItem.fromJson(item))
        .toList();

    return ProductVariant(
      name: json['name'],
      id: json['id'],
      gallery: galleryList,
    );
  }
}

class ProductGalleryItem {
  final String id;
  final ProductFile file;

  ProductGalleryItem({
    required this.id,
    required this.file,
  });

  factory ProductGalleryItem.fromJson(Map<String, dynamic> json) {
    return ProductGalleryItem(
      id: json['id'],
      file: ProductFile.fromJson(json['file']),
    );
  }
}

class ProductFile {
  final String id;
  final String name;
  final String imageUrl;

  ProductFile({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory ProductFile.fromJson(Map<String, dynamic> json) {
    return ProductFile(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image']['url'],
    );
  }
}
