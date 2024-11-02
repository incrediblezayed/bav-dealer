/* // ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:dealerapp/src/utils/extensions.dart';

class ProductVariantModel {
  ProductVariantModel({
    required this.prices,
    required this.colors,
    required this.name,
    required this.id,
    required this.totalPrice,
    required this.vehicle,
    required this.tags,
    required this.gallery,
  });

  factory ProductVariantModel.fromRawJson(String str) =>
      ProductVariantModel.fromJson(json.decode(str));

  factory ProductVariantModel.fromJson(Map<String, dynamic> json) =>
      ProductVariantModel(
        gallery: json['gallery'] == null
            ? []
            : List<Gallery>.from(
                json['gallery'].map((x) => Gallery.fromJson(x)),
              ).sortedBy<num>((e) => e.index),
        prices: List<VehiclePrice>.from(
          json['prices'].map((x) => VehiclePrice.fromJson(x)),
        ),
        colors: json['colors'] == null
            ? []
            : List<VehicleColor>.from(
                json['colors'].map((x) => VehicleColor.fromJson(x)),
              ),
        name: json['name'],
        id: json['id'],
        totalPrice: json['totalPrice'],
        vehicle: Vehicle.fromJson(json['vehicle']),
        tags: json['tags'] != null && json['tags'].length > 0
            ? List<Tag>.from(json['tags'].map((x) => Tag.fromJson(x)))
            : [],
      );

  List<Gallery> get galleryImages =>
      gallery.where((e) => e.type == 'image').toList();

  final List<VehiclePrice> prices;
  final List<VehicleColor> colors;
  final List<Gallery> gallery;
  final String name;
  final String id;
  final int totalPrice;
  final Vehicle vehicle;
  final List<Tag> tags;
}

class VehicleColor {
  VehicleColor({
    required this.id,
    required this.code,
    required this.galleryView,
    required this.gallery,
    required this.images,
    required this.reels,
    required this.name,
    required this.videos,
  });

  factory VehicleColor.fromRawJson(String str) =>
      VehicleColor.fromJson(json.decode(str));

  factory VehicleColor.fromJson(Map<String, dynamic> json) => VehicleColor(
        id: json['id'],
        code: HexColor.fromHex(json['code'] ?? '#000000'),
        gallery: json['gallery'] == null
            ? []
            : List<Gallery>.from(
                json['gallery'].map((x) => Gallery.fromJson(x)),
              ).sortedBy<num>((e) => e.index),
        galleryView: json['galleryView'] == null
            ? []
            : List<GalleryView>.from(
                json['galleryView'].map((x) => GalleryView.fromJson(x)),
              ),
        images: json['images'] == null
            ? []
            : List<ImageElement>.from(
                json['images'].map((x) => ImageElement.fromJson(x)),
              ),
        reels: json['reels'] == null
            ? []
            : List<Gallery>.from(
                json['reels'].map((x) => Gallery.fromJson(x)),
              ).sortedBy<num>((e) => e.index),
        name: json['name'],
        videos: json['videos'] == null
            ? []
            : List<VideoElement>.from(
                json['videos'].map((x) => VideoElement.fromJson(x)),
              ),
      );
  final String id;
  final Color code;
  final List<GalleryView> galleryView;
  final List<Gallery> gallery;
  final List<ImageElement> images;
  final List<Gallery> reels;
  final String name;
  final List<VideoElement> videos;
}

class Gallery {
  Gallery({
    required this.file,
    required this.fileId,
    required this.id,
    required this.index,
    required this.type,
  });

  factory Gallery.fromRawJson(String str) => Gallery.fromJson(json.decode(str));

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        file: json['file'] == null ? null : FileClass.fromJson(json['file']),
        fileId: json['fileId'],
        id: json['id'],
        index: json['index'],
        type: json['type'],
      );
  final FileClass? file;
  final String fileId;
  final String id;
  final int index;
  final String type;
}

class FileClass {
  FileClass({
    required this.id,
    required this.name,
    required this.image,
  });

  factory FileClass.fromRawJson(String str) =>
      FileClass.fromJson(json.decode(str));

  factory FileClass.fromJson(Map<String, dynamic> json) => FileClass(
        id: json['id'],
        name: json['name'],
        image: FileImage.fromJson(json['image']),
      );
  final String id;
  final String name;
  final FileImage image;
}

class FileImage {
  FileImage({
    required this.url,
    required this.extension,
    required this.filesize,
  });

  factory FileImage.fromRawJson(String str) =>
      FileImage.fromJson(json.decode(str));

  factory FileImage.fromJson(Map<String, dynamic> json) => FileImage(
        url: json['url'],
        extension: json['extension'],
        filesize: json['filesize'],
      );
  final String url;
  final String extension;
  final int filesize;
}

class GalleryView {
  GalleryView({
    required this.id,
    required this.type,
    required this.file,
  });

  factory GalleryView.fromRawJson(String str) =>
      GalleryView.fromJson(json.decode(str));

  factory GalleryView.fromJson(Map<String, dynamic> json) => GalleryView(
        id: json['id'],
        type: json['type'],
        file: FileClass.fromJson(json['file']),
      );
  final String id;
  final String type;
  final FileClass file;
}

class ImageElement {
  ImageElement({
    required this.name,
    required this.image,
  });

  factory ImageElement.fromRawJson(String str) =>
      ImageElement.fromJson(json.decode(str));

  factory ImageElement.fromJson(Map<String, dynamic> json) => ImageElement(
        name: json['name'],
        image: json['image'] == null ? null : Logo.fromJson(json['image']),
      );
  final String name;
  final Logo? image;
}

class Logo {
  Logo({
    required this.url,
    required this.width,
    required this.id,
    required this.height,
    required this.extension,
    required this.filesize,
  });

  factory Logo.fromRawJson(String str) => Logo.fromJson(json.decode(str));

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        url: json['url'],
        width: json['width'],
        id: json['id'],
        height: json['height'],
        extension: json['extension'],
        filesize: json['filesize'],
      );
  final String url;
  final int? width;
  final String id;
  final int? height;
  final String? extension;
  final int? filesize;
}

class VideoElement {
  VideoElement({
    required this.name,
    required this.video,
    required this.id,
  });

  factory VideoElement.fromRawJson(String str) =>
      VideoElement.fromJson(json.decode(str));

  factory VideoElement.fromJson(Map<String, dynamic> json) => VideoElement(
        name: json['name'],
        video: VideoVideo.fromJson(json['video']),
        id: json['id'],
      );
  final String name;
  final VideoVideo video;
  final String id;
}

class VideoVideo {
  VideoVideo({
    required this.filename,
    required this.filesize,
    required this.url,
  });

  factory VideoVideo.fromRawJson(String str) =>
      VideoVideo.fromJson(json.decode(str));

  factory VideoVideo.fromJson(Map<String, dynamic> json) => VideoVideo(
        filename: json['filename'],
        filesize: json['filesize'],
        url: json['url'],
      );
  final String filename;
  final int filesize;
  final String url;
}

class VehiclePrice {
  VehiclePrice({
    required this.amount,
    required this.category,
  });

  factory VehiclePrice.fromRawJson(String str) =>
      VehiclePrice.fromJson(json.decode(str));

  factory VehiclePrice.fromJson(Map<String, dynamic> json) {
    dynamic catgeoryField;
    if (json.containsKey('category')) {
      catgeoryField = json['category'];
    } else if (json.containsKey('priceCategory')) {
      catgeoryField = json['priceCategory'];
    }
    return VehiclePrice(
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

class Category {
  Category({
    required this.name,
    required this.description,
  });

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json['name'],
        description: json['description'],
      );
  final String name;
  final String description;
}

class Specification {
  Specification({
    required this.id,
    required this.name,
    required this.specification,
    required this.type,
    required this.intValue,
    required this.stringValue,
    required this.category,
  });

  factory Specification.fromRawJson(String str) =>
      Specification.fromJson(json.decode(str));

  factory Specification.fromJson(Map<String, dynamic> json) => Specification(
        id: json['id'],
        name: json['name'],
        specification: Type.fromJson(json['specification']),
        type: json['type'],
        intValue: json['intValue'],
        stringValue: json['stringValue'],
        category: Type.fromJson(json['category']),
      );
  static List<Specification> mergedSpecs({
    List<Specification?>? vehicleSpecs,
    List<Specification?>? variantSpecs,
  }) {
    return [
      if (vehicleSpecs != null)
        ...vehicleSpecs
            .where(
              (element) =>
                  element != null &&
                  !(variantSpecs?.any(
                        (e) => e?.specification.id == element.specification.id,
                      ) ??
                      false),
            )
            .map((e) => e!),
      if (variantSpecs != null)
        ...variantSpecs.where((element) => element != null).map((e) => e!),
    ];
  }

  final String id;
  final String name;
  final Type specification;
  final String type;
  final int? intValue;
  final String? stringValue;
  final Type category;
}

class Type {
  Type({
    required this.id,
    required this.name,
    required this.description,
    required this.unit,
  });

  factory Type.fromRawJson(String str) => Type.fromJson(json.decode(str));

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        unit: json['unit'] ?? '',
      );
  final String? id;
  final String name;
  final String? description;
  final String unit;
}

class Tag {
  Tag({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Tag.fromRawJson(String str) => Tag.fromJson(json.decode(str));

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json['id'],
        title: json['title'],
        description: json['description'],
      );
  final String id;
  final String title;
  final String description;
}

class Vehicle {
  Vehicle({
    required this.brand,
    required this.name,
    required this.description,
    required this.id,
    required this.type,
    required this.specifications,
  });

  factory Vehicle.fromRawJson(String str) => Vehicle.fromJson(json.decode(str));

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        brand: Brand.fromJson(json['brand']),
        name: json['name'],
        description: json['description'],
        id: json['id'],
        type: json['type'] == null ? null : Type.fromJson(json['type']),
        specifications: json['specifications'] == null ||
                json['specifications'].length == 0
            ? []
            : List<Specification>.from(
                json['specifications'].map((x) => Specification.fromJson(x)),
              ),
      );
  final Brand brand;
  final String name;
  final String? description;
  final String id;
  final Type? type;
  final List<Specification> specifications;
}

class Brand {
  Brand({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory Brand.fromRawJson(String str) => Brand.fromJson(json.decode(str));

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json['id'],
        name: json['name'],
        logo: json['logo'] == null ? null : Logo.fromJson(json['logo']),
      );
  final String id;
  final String name;
  final Logo? logo;
}
 */