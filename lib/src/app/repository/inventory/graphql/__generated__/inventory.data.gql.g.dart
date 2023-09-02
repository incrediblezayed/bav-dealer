// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehiclesData> _$gVehiclesDataSerializer =
    new _$GVehiclesDataSerializer();
Serializer<GVehiclesData_vehicles> _$gVehiclesDataVehiclesSerializer =
    new _$GVehiclesData_vehiclesSerializer();
Serializer<GVehiclesData_vehicles_variants>
    _$gVehiclesDataVehiclesVariantsSerializer =
    new _$GVehiclesData_vehicles_variantsSerializer();
Serializer<GVehiclesData_vehicles_variants_vehicle>
    _$gVehiclesDataVehiclesVariantsVehicleSerializer =
    new _$GVehiclesData_vehicles_variants_vehicleSerializer();
Serializer<GVehiclesData_vehicles_variants_vehicle_brand>
    _$gVehiclesDataVehiclesVariantsVehicleBrandSerializer =
    new _$GVehiclesData_vehicles_variants_vehicle_brandSerializer();
Serializer<GVehiclesData_vehicles_variants_vehicle_type>
    _$gVehiclesDataVehiclesVariantsVehicleTypeSerializer =
    new _$GVehiclesData_vehicles_variants_vehicle_typeSerializer();
Serializer<GVehiclesData_vehicles_variants_colors>
    _$gVehiclesDataVehiclesVariantsColorsSerializer =
    new _$GVehiclesData_vehicles_variants_colorsSerializer();
Serializer<GVehiclesData_vehicles_variants_colors_images>
    _$gVehiclesDataVehiclesVariantsColorsImagesSerializer =
    new _$GVehiclesData_vehicles_variants_colors_imagesSerializer();
Serializer<GVehiclesData_vehicles_variants_colors_images_image>
    _$gVehiclesDataVehiclesVariantsColorsImagesImageSerializer =
    new _$GVehiclesData_vehicles_variants_colors_images_imageSerializer();
Serializer<GCreateVehicleDealerStockRequestData>
    _$gCreateVehicleDealerStockRequestDataSerializer =
    new _$GCreateVehicleDealerStockRequestDataSerializer();
Serializer<GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest>
    _$gCreateVehicleDealerStockRequestDataCreateVehicleDealerStockRequestSerializer =
    new _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestSerializer();
Serializer<GCreateVehicleTestDriveDealerStockRequestData>
    _$gCreateVehicleTestDriveDealerStockRequestDataSerializer =
    new _$GCreateVehicleTestDriveDealerStockRequestDataSerializer();
Serializer<
        GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest>
    _$gCreateVehicleTestDriveDealerStockRequestDataCreateTestDriveDealerStockRequestSerializer =
    new _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestSerializer();

class _$GVehiclesDataSerializer implements StructuredSerializer<GVehiclesData> {
  @override
  final Iterable<Type> types = const [GVehiclesData, _$GVehiclesData];
  @override
  final String wireName = 'GVehiclesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVehiclesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicles;
    if (value != null) {
      result
        ..add('vehicles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GVehiclesData_vehicles)])));
    }
    return result;
  }

  @override
  GVehiclesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vehicles':
          result.vehicles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehiclesData_vehicles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehiclesSerializer
    implements StructuredSerializer<GVehiclesData_vehicles> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles,
    _$GVehiclesData_vehicles
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehiclesData_vehicles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.variants;
    if (value != null) {
      result
        ..add('variants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GVehiclesData_vehicles_variants)])));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehiclesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'variants':
          result.variants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehiclesData_vehicles_variants)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variantsSerializer
    implements StructuredSerializer<GVehiclesData_vehicles_variants> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants,
    _$GVehiclesData_vehicles_variants
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehiclesData_vehicles_variants object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicle;
    if (value != null) {
      result
        ..add('vehicle')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVehiclesData_vehicles_variants_vehicle)));
    }
    value = object.colors;
    if (value != null) {
      result
        ..add('colors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GVehiclesData_vehicles_variants_colors)
            ])));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles_variants deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehicles_variantsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle':
          result.vehicle.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GVehiclesData_vehicles_variants_vehicle))!
              as GVehiclesData_vehicles_variants_vehicle);
          break;
        case 'colors':
          result.colors.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehiclesData_vehicles_variants_colors)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variants_vehicleSerializer
    implements StructuredSerializer<GVehiclesData_vehicles_variants_vehicle> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants_vehicle,
    _$GVehiclesData_vehicles_variants_vehicle
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants_vehicle';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehiclesData_vehicles_variants_vehicle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVehiclesData_vehicles_variants_vehicle_brand)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVehiclesData_vehicles_variants_vehicle_type)));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles_variants_vehicle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehicles_variants_vehicleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehiclesData_vehicles_variants_vehicle_brand))!
              as GVehiclesData_vehicles_variants_vehicle_brand);
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehiclesData_vehicles_variants_vehicle_type))!
              as GVehiclesData_vehicles_variants_vehicle_type);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variants_vehicle_brandSerializer
    implements
        StructuredSerializer<GVehiclesData_vehicles_variants_vehicle_brand> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants_vehicle_brand,
    _$GVehiclesData_vehicles_variants_vehicle_brand
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants_vehicle_brand';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehiclesData_vehicles_variants_vehicle_brand object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles_variants_vehicle_brand deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehicles_variants_vehicle_brandBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variants_vehicle_typeSerializer
    implements
        StructuredSerializer<GVehiclesData_vehicles_variants_vehicle_type> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants_vehicle_type,
    _$GVehiclesData_vehicles_variants_vehicle_type
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants_vehicle_type';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehiclesData_vehicles_variants_vehicle_type object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles_variants_vehicle_type deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehicles_variants_vehicle_typeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variants_colorsSerializer
    implements StructuredSerializer<GVehiclesData_vehicles_variants_colors> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants_colors,
    _$GVehiclesData_vehicles_variants_colors
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants_colors';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehiclesData_vehicles_variants_colors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GVehiclesData_vehicles_variants_colors_images)
            ])));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles_variants_colors deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehicles_variants_colorsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehiclesData_vehicles_variants_colors_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variants_colors_imagesSerializer
    implements
        StructuredSerializer<GVehiclesData_vehicles_variants_colors_images> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants_colors_images,
    _$GVehiclesData_vehicles_variants_colors_images
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants_colors_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehiclesData_vehicles_variants_colors_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehiclesData_vehicles_variants_colors_images_image)));
    }
    return result;
  }

  @override
  GVehiclesData_vehicles_variants_colors_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesData_vehicles_variants_colors_imagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehiclesData_vehicles_variants_colors_images_image))!
              as GVehiclesData_vehicles_variants_colors_images_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData_vehicles_variants_colors_images_imageSerializer
    implements
        StructuredSerializer<
            GVehiclesData_vehicles_variants_colors_images_image> {
  @override
  final Iterable<Type> types = const [
    GVehiclesData_vehicles_variants_colors_images_image,
    _$GVehiclesData_vehicles_variants_colors_images_image
  ];
  @override
  final String wireName = 'GVehiclesData_vehicles_variants_colors_images_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehiclesData_vehicles_variants_colors_images_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GVehiclesData_vehicles_variants_colors_images_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehiclesData_vehicles_variants_colors_images_imageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerStockRequestDataSerializer
    implements StructuredSerializer<GCreateVehicleDealerStockRequestData> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerStockRequestData,
    _$GCreateVehicleDealerStockRequestData
  ];
  @override
  final String wireName = 'GCreateVehicleDealerStockRequestData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVehicleDealerStockRequestData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createVehicleDealerStockRequest;
    if (value != null) {
      result
        ..add('createVehicleDealerStockRequest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest)));
    }
    return result;
  }

  @override
  GCreateVehicleDealerStockRequestData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleDealerStockRequestDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createVehicleDealerStockRequest':
          result.createVehicleDealerStockRequest.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest))!
              as GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestSerializer
    implements
        StructuredSerializer<
            GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest,
    _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
  ];
  @override
  final String wireName =
      'GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dealer_prices;
    if (value != null) {
      result
        ..add('dealer_prices')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dealer_prices':
          result.dealer_prices = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleTestDriveDealerStockRequestDataSerializer
    implements
        StructuredSerializer<GCreateVehicleTestDriveDealerStockRequestData> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleTestDriveDealerStockRequestData,
    _$GCreateVehicleTestDriveDealerStockRequestData
  ];
  @override
  final String wireName = 'GCreateVehicleTestDriveDealerStockRequestData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreateVehicleTestDriveDealerStockRequestData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createTestDriveDealerStockRequest;
    if (value != null) {
      result
        ..add('createTestDriveDealerStockRequest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest)));
    }
    return result;
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleTestDriveDealerStockRequestDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createTestDriveDealerStockRequest':
          result.createTestDriveDealerStockRequest.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest))!
              as GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestSerializer
    implements
        StructuredSerializer<
            GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest,
    _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
  ];
  @override
  final String wireName =
      'GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.available;
    if (value != null) {
      result
        ..add('available')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesData extends GVehiclesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GVehiclesData_vehicles>? vehicles;

  factory _$GVehiclesData([void Function(GVehiclesDataBuilder)? updates]) =>
      (new GVehiclesDataBuilder()..update(updates))._build();

  _$GVehiclesData._({required this.G__typename, this.vehicles}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehiclesData', 'G__typename');
  }

  @override
  GVehiclesData rebuild(void Function(GVehiclesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesDataBuilder toBuilder() => new GVehiclesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData &&
        G__typename == other.G__typename &&
        vehicles == other.vehicles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehiclesData')
          ..add('G__typename', G__typename)
          ..add('vehicles', vehicles))
        .toString();
  }
}

class GVehiclesDataBuilder
    implements Builder<GVehiclesData, GVehiclesDataBuilder> {
  _$GVehiclesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GVehiclesData_vehicles>? _vehicles;
  ListBuilder<GVehiclesData_vehicles> get vehicles =>
      _$this._vehicles ??= new ListBuilder<GVehiclesData_vehicles>();
  set vehicles(ListBuilder<GVehiclesData_vehicles>? vehicles) =>
      _$this._vehicles = vehicles;

  GVehiclesDataBuilder() {
    GVehiclesData._initializeBuilder(this);
  }

  GVehiclesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicles = $v.vehicles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData;
  }

  @override
  void update(void Function(GVehiclesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData build() => _build();

  _$GVehiclesData _build() {
    _$GVehiclesData _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVehiclesData', 'G__typename'),
              vehicles: _vehicles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicles';
        _vehicles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles extends GVehiclesData_vehicles {
  @override
  final String G__typename;
  @override
  final BuiltList<GVehiclesData_vehicles_variants>? variants;

  factory _$GVehiclesData_vehicles(
          [void Function(GVehiclesData_vehiclesBuilder)? updates]) =>
      (new GVehiclesData_vehiclesBuilder()..update(updates))._build();

  _$GVehiclesData_vehicles._({required this.G__typename, this.variants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehiclesData_vehicles', 'G__typename');
  }

  @override
  GVehiclesData_vehicles rebuild(
          void Function(GVehiclesData_vehiclesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehiclesBuilder toBuilder() =>
      new GVehiclesData_vehiclesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles &&
        G__typename == other.G__typename &&
        variants == other.variants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, variants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehiclesData_vehicles')
          ..add('G__typename', G__typename)
          ..add('variants', variants))
        .toString();
  }
}

class GVehiclesData_vehiclesBuilder
    implements Builder<GVehiclesData_vehicles, GVehiclesData_vehiclesBuilder> {
  _$GVehiclesData_vehicles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GVehiclesData_vehicles_variants>? _variants;
  ListBuilder<GVehiclesData_vehicles_variants> get variants =>
      _$this._variants ??= new ListBuilder<GVehiclesData_vehicles_variants>();
  set variants(ListBuilder<GVehiclesData_vehicles_variants>? variants) =>
      _$this._variants = variants;

  GVehiclesData_vehiclesBuilder() {
    GVehiclesData_vehicles._initializeBuilder(this);
  }

  GVehiclesData_vehiclesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _variants = $v.variants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles;
  }

  @override
  void update(void Function(GVehiclesData_vehiclesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles build() => _build();

  _$GVehiclesData_vehicles _build() {
    _$GVehiclesData_vehicles _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesData_vehicles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVehiclesData_vehicles', 'G__typename'),
              variants: _variants?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'variants';
        _variants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesData_vehicles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants
    extends GVehiclesData_vehicles_variants {
  @override
  final String G__typename;
  @override
  final int? price;
  @override
  final String? name;
  @override
  final GVehiclesData_vehicles_variants_vehicle? vehicle;
  @override
  final BuiltList<GVehiclesData_vehicles_variants_colors>? colors;
  @override
  final String id;

  factory _$GVehiclesData_vehicles_variants(
          [void Function(GVehiclesData_vehicles_variantsBuilder)? updates]) =>
      (new GVehiclesData_vehicles_variantsBuilder()..update(updates))._build();

  _$GVehiclesData_vehicles_variants._(
      {required this.G__typename,
      this.price,
      this.name,
      this.vehicle,
      this.colors,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehiclesData_vehicles_variants', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehiclesData_vehicles_variants', 'id');
  }

  @override
  GVehiclesData_vehicles_variants rebuild(
          void Function(GVehiclesData_vehicles_variantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variantsBuilder toBuilder() =>
      new GVehiclesData_vehicles_variantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants &&
        G__typename == other.G__typename &&
        price == other.price &&
        name == other.name &&
        vehicle == other.vehicle &&
        colors == other.colors &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, vehicle.hashCode);
    _$hash = $jc(_$hash, colors.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehiclesData_vehicles_variants')
          ..add('G__typename', G__typename)
          ..add('price', price)
          ..add('name', name)
          ..add('vehicle', vehicle)
          ..add('colors', colors)
          ..add('id', id))
        .toString();
  }
}

class GVehiclesData_vehicles_variantsBuilder
    implements
        Builder<GVehiclesData_vehicles_variants,
            GVehiclesData_vehicles_variantsBuilder> {
  _$GVehiclesData_vehicles_variants? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehiclesData_vehicles_variants_vehicleBuilder? _vehicle;
  GVehiclesData_vehicles_variants_vehicleBuilder get vehicle =>
      _$this._vehicle ??= new GVehiclesData_vehicles_variants_vehicleBuilder();
  set vehicle(GVehiclesData_vehicles_variants_vehicleBuilder? vehicle) =>
      _$this._vehicle = vehicle;

  ListBuilder<GVehiclesData_vehicles_variants_colors>? _colors;
  ListBuilder<GVehiclesData_vehicles_variants_colors> get colors =>
      _$this._colors ??=
          new ListBuilder<GVehiclesData_vehicles_variants_colors>();
  set colors(ListBuilder<GVehiclesData_vehicles_variants_colors>? colors) =>
      _$this._colors = colors;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehiclesData_vehicles_variantsBuilder() {
    GVehiclesData_vehicles_variants._initializeBuilder(this);
  }

  GVehiclesData_vehicles_variantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _price = $v.price;
      _name = $v.name;
      _vehicle = $v.vehicle?.toBuilder();
      _colors = $v.colors?.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants;
  }

  @override
  void update(void Function(GVehiclesData_vehicles_variantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants build() => _build();

  _$GVehiclesData_vehicles_variants _build() {
    _$GVehiclesData_vehicles_variants _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesData_vehicles_variants._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehiclesData_vehicles_variants', 'G__typename'),
              price: price,
              name: name,
              vehicle: _vehicle?.build(),
              colors: _colors?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehiclesData_vehicles_variants', 'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicle';
        _vehicle?.build();
        _$failedField = 'colors';
        _colors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesData_vehicles_variants', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants_vehicle
    extends GVehiclesData_vehicles_variants_vehicle {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final GVehiclesData_vehicles_variants_vehicle_brand? brand;
  @override
  final GVehiclesData_vehicles_variants_vehicle_type? type;
  @override
  final String id;

  factory _$GVehiclesData_vehicles_variants_vehicle(
          [void Function(GVehiclesData_vehicles_variants_vehicleBuilder)?
              updates]) =>
      (new GVehiclesData_vehicles_variants_vehicleBuilder()..update(updates))
          ._build();

  _$GVehiclesData_vehicles_variants_vehicle._(
      {required this.G__typename,
      this.name,
      this.brand,
      this.type,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehiclesData_vehicles_variants_vehicle', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehiclesData_vehicles_variants_vehicle', 'id');
  }

  @override
  GVehiclesData_vehicles_variants_vehicle rebuild(
          void Function(GVehiclesData_vehicles_variants_vehicleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variants_vehicleBuilder toBuilder() =>
      new GVehiclesData_vehicles_variants_vehicleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants_vehicle &&
        G__typename == other.G__typename &&
        name == other.name &&
        brand == other.brand &&
        type == other.type &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehiclesData_vehicles_variants_vehicle')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('brand', brand)
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class GVehiclesData_vehicles_variants_vehicleBuilder
    implements
        Builder<GVehiclesData_vehicles_variants_vehicle,
            GVehiclesData_vehicles_variants_vehicleBuilder> {
  _$GVehiclesData_vehicles_variants_vehicle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehiclesData_vehicles_variants_vehicle_brandBuilder? _brand;
  GVehiclesData_vehicles_variants_vehicle_brandBuilder get brand =>
      _$this._brand ??=
          new GVehiclesData_vehicles_variants_vehicle_brandBuilder();
  set brand(GVehiclesData_vehicles_variants_vehicle_brandBuilder? brand) =>
      _$this._brand = brand;

  GVehiclesData_vehicles_variants_vehicle_typeBuilder? _type;
  GVehiclesData_vehicles_variants_vehicle_typeBuilder get type =>
      _$this._type ??=
          new GVehiclesData_vehicles_variants_vehicle_typeBuilder();
  set type(GVehiclesData_vehicles_variants_vehicle_typeBuilder? type) =>
      _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehiclesData_vehicles_variants_vehicleBuilder() {
    GVehiclesData_vehicles_variants_vehicle._initializeBuilder(this);
  }

  GVehiclesData_vehicles_variants_vehicleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _brand = $v.brand?.toBuilder();
      _type = $v.type?.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants_vehicle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants_vehicle;
  }

  @override
  void update(
      void Function(GVehiclesData_vehicles_variants_vehicleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants_vehicle build() => _build();

  _$GVehiclesData_vehicles_variants_vehicle _build() {
    _$GVehiclesData_vehicles_variants_vehicle _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesData_vehicles_variants_vehicle._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehiclesData_vehicles_variants_vehicle', 'G__typename'),
              name: name,
              brand: _brand?.build(),
              type: _type?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehiclesData_vehicles_variants_vehicle', 'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'brand';
        _brand?.build();
        _$failedField = 'type';
        _type?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesData_vehicles_variants_vehicle',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants_vehicle_brand
    extends GVehiclesData_vehicles_variants_vehicle_brand {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String id;

  factory _$GVehiclesData_vehicles_variants_vehicle_brand(
          [void Function(GVehiclesData_vehicles_variants_vehicle_brandBuilder)?
              updates]) =>
      (new GVehiclesData_vehicles_variants_vehicle_brandBuilder()
            ..update(updates))
          ._build();

  _$GVehiclesData_vehicles_variants_vehicle_brand._(
      {required this.G__typename, this.name, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehiclesData_vehicles_variants_vehicle_brand', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehiclesData_vehicles_variants_vehicle_brand', 'id');
  }

  @override
  GVehiclesData_vehicles_variants_vehicle_brand rebuild(
          void Function(GVehiclesData_vehicles_variants_vehicle_brandBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variants_vehicle_brandBuilder toBuilder() =>
      new GVehiclesData_vehicles_variants_vehicle_brandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants_vehicle_brand &&
        G__typename == other.G__typename &&
        name == other.name &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehiclesData_vehicles_variants_vehicle_brand')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class GVehiclesData_vehicles_variants_vehicle_brandBuilder
    implements
        Builder<GVehiclesData_vehicles_variants_vehicle_brand,
            GVehiclesData_vehicles_variants_vehicle_brandBuilder> {
  _$GVehiclesData_vehicles_variants_vehicle_brand? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehiclesData_vehicles_variants_vehicle_brandBuilder() {
    GVehiclesData_vehicles_variants_vehicle_brand._initializeBuilder(this);
  }

  GVehiclesData_vehicles_variants_vehicle_brandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants_vehicle_brand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants_vehicle_brand;
  }

  @override
  void update(
      void Function(GVehiclesData_vehicles_variants_vehicle_brandBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants_vehicle_brand build() => _build();

  _$GVehiclesData_vehicles_variants_vehicle_brand _build() {
    final _$result = _$v ??
        new _$GVehiclesData_vehicles_variants_vehicle_brand._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehiclesData_vehicles_variants_vehicle_brand',
                'G__typename'),
            name: name,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GVehiclesData_vehicles_variants_vehicle_brand', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants_vehicle_type
    extends GVehiclesData_vehicles_variants_vehicle_type {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String id;

  factory _$GVehiclesData_vehicles_variants_vehicle_type(
          [void Function(GVehiclesData_vehicles_variants_vehicle_typeBuilder)?
              updates]) =>
      (new GVehiclesData_vehicles_variants_vehicle_typeBuilder()
            ..update(updates))
          ._build();

  _$GVehiclesData_vehicles_variants_vehicle_type._(
      {required this.G__typename,
      this.name,
      this.description,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehiclesData_vehicles_variants_vehicle_type', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehiclesData_vehicles_variants_vehicle_type', 'id');
  }

  @override
  GVehiclesData_vehicles_variants_vehicle_type rebuild(
          void Function(GVehiclesData_vehicles_variants_vehicle_typeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variants_vehicle_typeBuilder toBuilder() =>
      new GVehiclesData_vehicles_variants_vehicle_typeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants_vehicle_type &&
        G__typename == other.G__typename &&
        name == other.name &&
        description == other.description &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehiclesData_vehicles_variants_vehicle_type')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description', description)
          ..add('id', id))
        .toString();
  }
}

class GVehiclesData_vehicles_variants_vehicle_typeBuilder
    implements
        Builder<GVehiclesData_vehicles_variants_vehicle_type,
            GVehiclesData_vehicles_variants_vehicle_typeBuilder> {
  _$GVehiclesData_vehicles_variants_vehicle_type? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehiclesData_vehicles_variants_vehicle_typeBuilder() {
    GVehiclesData_vehicles_variants_vehicle_type._initializeBuilder(this);
  }

  GVehiclesData_vehicles_variants_vehicle_typeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description = $v.description;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants_vehicle_type other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants_vehicle_type;
  }

  @override
  void update(
      void Function(GVehiclesData_vehicles_variants_vehicle_typeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants_vehicle_type build() => _build();

  _$GVehiclesData_vehicles_variants_vehicle_type _build() {
    final _$result = _$v ??
        new _$GVehiclesData_vehicles_variants_vehicle_type._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GVehiclesData_vehicles_variants_vehicle_type', 'G__typename'),
            name: name,
            description: description,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GVehiclesData_vehicles_variants_vehicle_type', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants_colors
    extends GVehiclesData_vehicles_variants_colors {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final BuiltList<GVehiclesData_vehicles_variants_colors_images>? images;

  factory _$GVehiclesData_vehicles_variants_colors(
          [void Function(GVehiclesData_vehicles_variants_colorsBuilder)?
              updates]) =>
      (new GVehiclesData_vehicles_variants_colorsBuilder()..update(updates))
          ._build();

  _$GVehiclesData_vehicles_variants_colors._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.code,
      this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehiclesData_vehicles_variants_colors', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehiclesData_vehicles_variants_colors', 'id');
  }

  @override
  GVehiclesData_vehicles_variants_colors rebuild(
          void Function(GVehiclesData_vehicles_variants_colorsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variants_colorsBuilder toBuilder() =>
      new GVehiclesData_vehicles_variants_colorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants_colors &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehiclesData_vehicles_variants_colors')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('images', images))
        .toString();
  }
}

class GVehiclesData_vehicles_variants_colorsBuilder
    implements
        Builder<GVehiclesData_vehicles_variants_colors,
            GVehiclesData_vehicles_variants_colorsBuilder> {
  _$GVehiclesData_vehicles_variants_colors? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<GVehiclesData_vehicles_variants_colors_images>? _images;
  ListBuilder<GVehiclesData_vehicles_variants_colors_images> get images =>
      _$this._images ??=
          new ListBuilder<GVehiclesData_vehicles_variants_colors_images>();
  set images(
          ListBuilder<GVehiclesData_vehicles_variants_colors_images>? images) =>
      _$this._images = images;

  GVehiclesData_vehicles_variants_colorsBuilder() {
    GVehiclesData_vehicles_variants_colors._initializeBuilder(this);
  }

  GVehiclesData_vehicles_variants_colorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _code = $v.code;
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants_colors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants_colors;
  }

  @override
  void update(
      void Function(GVehiclesData_vehicles_variants_colorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants_colors build() => _build();

  _$GVehiclesData_vehicles_variants_colors _build() {
    _$GVehiclesData_vehicles_variants_colors _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesData_vehicles_variants_colors._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehiclesData_vehicles_variants_colors', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehiclesData_vehicles_variants_colors', 'id'),
              name: name,
              code: code,
              images: _images?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesData_vehicles_variants_colors',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants_colors_images
    extends GVehiclesData_vehicles_variants_colors_images {
  @override
  final String G__typename;
  @override
  final GVehiclesData_vehicles_variants_colors_images_image? image;

  factory _$GVehiclesData_vehicles_variants_colors_images(
          [void Function(GVehiclesData_vehicles_variants_colors_imagesBuilder)?
              updates]) =>
      (new GVehiclesData_vehicles_variants_colors_imagesBuilder()
            ..update(updates))
          ._build();

  _$GVehiclesData_vehicles_variants_colors_images._(
      {required this.G__typename, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehiclesData_vehicles_variants_colors_images', 'G__typename');
  }

  @override
  GVehiclesData_vehicles_variants_colors_images rebuild(
          void Function(GVehiclesData_vehicles_variants_colors_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variants_colors_imagesBuilder toBuilder() =>
      new GVehiclesData_vehicles_variants_colors_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants_colors_images &&
        G__typename == other.G__typename &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehiclesData_vehicles_variants_colors_images')
          ..add('G__typename', G__typename)
          ..add('image', image))
        .toString();
  }
}

class GVehiclesData_vehicles_variants_colors_imagesBuilder
    implements
        Builder<GVehiclesData_vehicles_variants_colors_images,
            GVehiclesData_vehicles_variants_colors_imagesBuilder> {
  _$GVehiclesData_vehicles_variants_colors_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVehiclesData_vehicles_variants_colors_images_imageBuilder? _image;
  GVehiclesData_vehicles_variants_colors_images_imageBuilder get image =>
      _$this._image ??=
          new GVehiclesData_vehicles_variants_colors_images_imageBuilder();
  set image(
          GVehiclesData_vehicles_variants_colors_images_imageBuilder? image) =>
      _$this._image = image;

  GVehiclesData_vehicles_variants_colors_imagesBuilder() {
    GVehiclesData_vehicles_variants_colors_images._initializeBuilder(this);
  }

  GVehiclesData_vehicles_variants_colors_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants_colors_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants_colors_images;
  }

  @override
  void update(
      void Function(GVehiclesData_vehicles_variants_colors_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants_colors_images build() => _build();

  _$GVehiclesData_vehicles_variants_colors_images _build() {
    _$GVehiclesData_vehicles_variants_colors_images _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesData_vehicles_variants_colors_images._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehiclesData_vehicles_variants_colors_images',
                  'G__typename'),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesData_vehicles_variants_colors_images',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehiclesData_vehicles_variants_colors_images_image
    extends GVehiclesData_vehicles_variants_colors_images_image {
  @override
  final String G__typename;
  @override
  final String url;

  factory _$GVehiclesData_vehicles_variants_colors_images_image(
          [void Function(
                  GVehiclesData_vehicles_variants_colors_images_imageBuilder)?
              updates]) =>
      (new GVehiclesData_vehicles_variants_colors_images_imageBuilder()
            ..update(updates))
          ._build();

  _$GVehiclesData_vehicles_variants_colors_images_image._(
      {required this.G__typename, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehiclesData_vehicles_variants_colors_images_image', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GVehiclesData_vehicles_variants_colors_images_image', 'url');
  }

  @override
  GVehiclesData_vehicles_variants_colors_images_image rebuild(
          void Function(
                  GVehiclesData_vehicles_variants_colors_images_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesData_vehicles_variants_colors_images_imageBuilder toBuilder() =>
      new GVehiclesData_vehicles_variants_colors_images_imageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesData_vehicles_variants_colors_images_image &&
        G__typename == other.G__typename &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehiclesData_vehicles_variants_colors_images_image')
          ..add('G__typename', G__typename)
          ..add('url', url))
        .toString();
  }
}

class GVehiclesData_vehicles_variants_colors_images_imageBuilder
    implements
        Builder<GVehiclesData_vehicles_variants_colors_images_image,
            GVehiclesData_vehicles_variants_colors_images_imageBuilder> {
  _$GVehiclesData_vehicles_variants_colors_images_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GVehiclesData_vehicles_variants_colors_images_imageBuilder() {
    GVehiclesData_vehicles_variants_colors_images_image._initializeBuilder(
        this);
  }

  GVehiclesData_vehicles_variants_colors_images_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesData_vehicles_variants_colors_images_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesData_vehicles_variants_colors_images_image;
  }

  @override
  void update(
      void Function(GVehiclesData_vehicles_variants_colors_images_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesData_vehicles_variants_colors_images_image build() => _build();

  _$GVehiclesData_vehicles_variants_colors_images_image _build() {
    final _$result = _$v ??
        new _$GVehiclesData_vehicles_variants_colors_images_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehiclesData_vehicles_variants_colors_images_image',
                'G__typename'),
            url: BuiltValueNullFieldError.checkNotNull(url,
                r'GVehiclesData_vehicles_variants_colors_images_image', 'url'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerStockRequestData
    extends GCreateVehicleDealerStockRequestData {
  @override
  final String G__typename;
  @override
  final GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest?
      createVehicleDealerStockRequest;

  factory _$GCreateVehicleDealerStockRequestData(
          [void Function(GCreateVehicleDealerStockRequestDataBuilder)?
              updates]) =>
      (new GCreateVehicleDealerStockRequestDataBuilder()..update(updates))
          ._build();

  _$GCreateVehicleDealerStockRequestData._(
      {required this.G__typename, this.createVehicleDealerStockRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateVehicleDealerStockRequestData', 'G__typename');
  }

  @override
  GCreateVehicleDealerStockRequestData rebuild(
          void Function(GCreateVehicleDealerStockRequestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerStockRequestDataBuilder toBuilder() =>
      new GCreateVehicleDealerStockRequestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVehicleDealerStockRequestData &&
        G__typename == other.G__typename &&
        createVehicleDealerStockRequest ==
            other.createVehicleDealerStockRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createVehicleDealerStockRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVehicleDealerStockRequestData')
          ..add('G__typename', G__typename)
          ..add('createVehicleDealerStockRequest',
              createVehicleDealerStockRequest))
        .toString();
  }
}

class GCreateVehicleDealerStockRequestDataBuilder
    implements
        Builder<GCreateVehicleDealerStockRequestData,
            GCreateVehicleDealerStockRequestDataBuilder> {
  _$GCreateVehicleDealerStockRequestData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder?
      _createVehicleDealerStockRequest;
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder
      get createVehicleDealerStockRequest => _$this
              ._createVehicleDealerStockRequest ??=
          new GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder();
  set createVehicleDealerStockRequest(
          GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder?
              createVehicleDealerStockRequest) =>
      _$this._createVehicleDealerStockRequest = createVehicleDealerStockRequest;

  GCreateVehicleDealerStockRequestDataBuilder() {
    GCreateVehicleDealerStockRequestData._initializeBuilder(this);
  }

  GCreateVehicleDealerStockRequestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createVehicleDealerStockRequest =
          $v.createVehicleDealerStockRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleDealerStockRequestData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleDealerStockRequestData;
  }

  @override
  void update(
      void Function(GCreateVehicleDealerStockRequestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerStockRequestData build() => _build();

  _$GCreateVehicleDealerStockRequestData _build() {
    _$GCreateVehicleDealerStockRequestData _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleDealerStockRequestData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCreateVehicleDealerStockRequestData', 'G__typename'),
              createVehicleDealerStockRequest:
                  _createVehicleDealerStockRequest?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createVehicleDealerStockRequest';
        _createVehicleDealerStockRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleDealerStockRequestData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
    extends GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest {
  @override
  final String G__typename;
  @override
  final String? type;
  @override
  final int? stock;
  @override
  final int? dealer_prices;

  factory _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest(
          [void Function(
                  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder)?
              updates]) =>
      (new GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder()
            ..update(updates))
          ._build();

  _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest._(
      {required this.G__typename, this.type, this.stock, this.dealer_prices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest',
        'G__typename');
  }

  @override
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest rebuild(
          void Function(
                  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder
      toBuilder() =>
          new GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest &&
        G__typename == other.G__typename &&
        type == other.type &&
        stock == other.stock &&
        dealer_prices == other.dealer_prices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, dealer_prices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('stock', stock)
          ..add('dealer_prices', dealer_prices))
        .toString();
  }
}

class GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder
    implements
        Builder<
            GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest,
            GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder> {
  _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  int? _dealer_prices;
  int? get dealer_prices => _$this._dealer_prices;
  set dealer_prices(int? dealer_prices) =>
      _$this._dealer_prices = dealer_prices;

  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder() {
    GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
        ._initializeBuilder(this);
  }

  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _stock = $v.stock;
      _dealer_prices = $v.dealer_prices;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest;
  }

  @override
  void update(
      void Function(
              GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
      build() => _build();

  _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
      _build() {
    final _$result = _$v ??
        new _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest',
                'G__typename'),
            type: type,
            stock: stock,
            dealer_prices: dealer_prices);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleTestDriveDealerStockRequestData
    extends GCreateVehicleTestDriveDealerStockRequestData {
  @override
  final String G__typename;
  @override
  final GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest?
      createTestDriveDealerStockRequest;

  factory _$GCreateVehicleTestDriveDealerStockRequestData(
          [void Function(GCreateVehicleTestDriveDealerStockRequestDataBuilder)?
              updates]) =>
      (new GCreateVehicleTestDriveDealerStockRequestDataBuilder()
            ..update(updates))
          ._build();

  _$GCreateVehicleTestDriveDealerStockRequestData._(
      {required this.G__typename, this.createTestDriveDealerStockRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCreateVehicleTestDriveDealerStockRequestData', 'G__typename');
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestData rebuild(
          void Function(GCreateVehicleTestDriveDealerStockRequestDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleTestDriveDealerStockRequestDataBuilder toBuilder() =>
      new GCreateVehicleTestDriveDealerStockRequestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVehicleTestDriveDealerStockRequestData &&
        G__typename == other.G__typename &&
        createTestDriveDealerStockRequest ==
            other.createTestDriveDealerStockRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createTestDriveDealerStockRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreateVehicleTestDriveDealerStockRequestData')
          ..add('G__typename', G__typename)
          ..add('createTestDriveDealerStockRequest',
              createTestDriveDealerStockRequest))
        .toString();
  }
}

class GCreateVehicleTestDriveDealerStockRequestDataBuilder
    implements
        Builder<GCreateVehicleTestDriveDealerStockRequestData,
            GCreateVehicleTestDriveDealerStockRequestDataBuilder> {
  _$GCreateVehicleTestDriveDealerStockRequestData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder?
      _createTestDriveDealerStockRequest;
  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder
      get createTestDriveDealerStockRequest => _$this
              ._createTestDriveDealerStockRequest ??=
          new GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder();
  set createTestDriveDealerStockRequest(
          GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder?
              createTestDriveDealerStockRequest) =>
      _$this._createTestDriveDealerStockRequest =
          createTestDriveDealerStockRequest;

  GCreateVehicleTestDriveDealerStockRequestDataBuilder() {
    GCreateVehicleTestDriveDealerStockRequestData._initializeBuilder(this);
  }

  GCreateVehicleTestDriveDealerStockRequestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createTestDriveDealerStockRequest =
          $v.createTestDriveDealerStockRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleTestDriveDealerStockRequestData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleTestDriveDealerStockRequestData;
  }

  @override
  void update(
      void Function(GCreateVehicleTestDriveDealerStockRequestDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestData build() => _build();

  _$GCreateVehicleTestDriveDealerStockRequestData _build() {
    _$GCreateVehicleTestDriveDealerStockRequestData _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleTestDriveDealerStockRequestData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCreateVehicleTestDriveDealerStockRequestData',
                  'G__typename'),
              createTestDriveDealerStockRequest:
                  _createTestDriveDealerStockRequest?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createTestDriveDealerStockRequest';
        _createTestDriveDealerStockRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleTestDriveDealerStockRequestData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
    extends GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest {
  @override
  final String G__typename;
  @override
  final bool? available;
  @override
  final int? price;

  factory _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest(
          [void Function(
                  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder)?
              updates]) =>
      (new GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder()
            ..update(updates))
          ._build();

  _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest._(
      {required this.G__typename, this.available, this.price})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest',
        'G__typename');
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
      rebuild(
              void Function(
                      GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder
      toBuilder() =>
          new GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest &&
        G__typename == other.G__typename &&
        available == other.available &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, available.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest')
          ..add('G__typename', G__typename)
          ..add('available', available)
          ..add('price', price))
        .toString();
  }
}

class GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder
    implements
        Builder<
            GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest,
            GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder> {
  _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder() {
    GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
        ._initializeBuilder(this);
  }

  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _available = $v.available;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest;
  }

  @override
  void update(
      void Function(
              GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
      build() => _build();

  _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
      _build() {
    final _$result = _$v ??
        new _$GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCreateVehicleTestDriveDealerStockRequestData_createTestDriveDealerStockRequest',
                'G__typename'),
            available: available,
            price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
