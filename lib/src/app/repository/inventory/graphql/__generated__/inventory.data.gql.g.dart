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
Serializer<GVehicleDealersData> _$gVehicleDealersDataSerializer =
    new _$GVehicleDealersDataSerializer();
Serializer<GVehicleDealersData_vehicleDealers>
    _$gVehicleDealersDataVehicleDealersSerializer =
    new _$GVehicleDealersData_vehicleDealersSerializer();
Serializer<GVehicleDealersData_vehicleDealers_vehicleColor>
    _$gVehicleDealersDataVehicleDealersVehicleColorSerializer =
    new _$GVehicleDealersData_vehicleDealers_vehicleColorSerializer();
Serializer<GVehicleDealersData_vehicleDealers_vehicleColor_images>
    _$gVehicleDealersDataVehicleDealersVehicleColorImagesSerializer =
    new _$GVehicleDealersData_vehicleDealers_vehicleColor_imagesSerializer();
Serializer<GVehicleDealersData_vehicleDealers_vehicleColor_images_image>
    _$gVehicleDealersDataVehicleDealersVehicleColorImagesImageSerializer =
    new _$GVehicleDealersData_vehicleDealers_vehicleColor_images_imageSerializer();
Serializer<GVehicleDealersData_vehicleDealers_vehicleVariant>
    _$gVehicleDealersDataVehicleDealersVehicleVariantSerializer =
    new _$GVehicleDealersData_vehicleDealers_vehicleVariantSerializer();
Serializer<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle>
    _$gVehicleDealersDataVehicleDealersVehicleVariantVehicleSerializer =
    new _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleSerializer();
Serializer<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand>
    _$gVehicleDealersDataVehicleDealersVehicleVariantVehicleBrandSerializer =
    new _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandSerializer();
Serializer<GVehicleDealersData_vehicleDealers_prices>
    _$gVehicleDealersDataVehicleDealersPricesSerializer =
    new _$GVehicleDealersData_vehicleDealers_pricesSerializer();
Serializer<GVehicleDealersData_vehicleDealers_prices_category>
    _$gVehicleDealersDataVehicleDealersPricesCategorySerializer =
    new _$GVehicleDealersData_vehicleDealers_prices_categorySerializer();
Serializer<GCreateVehicleDealerData> _$gCreateVehicleDealerDataSerializer =
    new _$GCreateVehicleDealerDataSerializer();
Serializer<GCreateVehicleDealerData_createVehicleDealer>
    _$gCreateVehicleDealerDataCreateVehicleDealerSerializer =
    new _$GCreateVehicleDealerData_createVehicleDealerSerializer();

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
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('totalPrice')
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
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersDataSerializer
    implements StructuredSerializer<GVehicleDealersData> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData,
    _$GVehicleDealersData
  ];
  @override
  final String wireName = 'GVehicleDealersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleDealers;
    if (value != null) {
      result
        ..add('vehicleDealers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GVehicleDealersData_vehicleDealers)])));
    }
    return result;
  }

  @override
  GVehicleDealersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealersDataBuilder();

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
        case 'vehicleDealers':
          result.vehicleDealers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehicleDealersData_vehicleDealers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealersSerializer
    implements StructuredSerializer<GVehicleDealersData_vehicleDealers> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers,
    _$GVehicleDealersData_vehicleDealers
  ];
  @override
  final String wireName = 'GVehicleDealersData_vehicleDealers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealersData_vehicleDealers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleColor;
    if (value != null) {
      result
        ..add('vehicleColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealersData_vehicleDealers_vehicleColor)));
    }
    value = object.vehicleVariant;
    if (value != null) {
      result
        ..add('vehicleVariant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealersData_vehicleDealers_vehicleVariant)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prices;
    if (value != null) {
      result
        ..add('prices')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GVehicleDealersData_vehicleDealers_prices)
            ])));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('totalPrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GVehicleDealersData_vehicleDealers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealersData_vehicleDealersBuilder();

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
        case 'vehicleColor':
          result.vehicleColor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealersData_vehicleDealers_vehicleColor))!
              as GVehicleDealersData_vehicleDealers_vehicleColor);
          break;
        case 'vehicleVariant':
          result.vehicleVariant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealersData_vehicleDealers_vehicleVariant))!
              as GVehicleDealersData_vehicleDealers_vehicleVariant);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'prices':
          result.prices.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehicleDealersData_vehicleDealers_prices)
              ]))! as BuiltList<Object?>);
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleColorSerializer
    implements
        StructuredSerializer<GVehicleDealersData_vehicleDealers_vehicleColor> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_vehicleColor,
    _$GVehicleDealersData_vehicleDealers_vehicleColor
  ];
  @override
  final String wireName = 'GVehicleDealersData_vehicleDealers_vehicleColor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_vehicleColor object,
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
              const FullType(
                  GVehicleDealersData_vehicleDealers_vehicleColor_images)
            ])));
    }
    return result;
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealersData_vehicleDealers_vehicleColorBuilder();

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
                const FullType(
                    GVehicleDealersData_vehicleDealers_vehicleColor_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleColor_imagesSerializer
    implements
        StructuredSerializer<
            GVehicleDealersData_vehicleDealers_vehicleColor_images> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_vehicleColor_images,
    _$GVehicleDealersData_vehicleDealers_vehicleColor_images
  ];
  @override
  final String wireName =
      'GVehicleDealersData_vehicleDealers_vehicleColor_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_vehicleColor_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealersData_vehicleDealers_vehicleColor_images_image)));
    }
    return result;
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder();

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
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealersData_vehicleDealers_vehicleColor_images_image))!
              as GVehicleDealersData_vehicleDealers_vehicleColor_images_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleColor_images_imageSerializer
    implements
        StructuredSerializer<
            GVehicleDealersData_vehicleDealers_vehicleColor_images_image> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_vehicleColor_images_image,
    _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image
  ];
  @override
  final String wireName =
      'GVehicleDealersData_vehicleDealers_vehicleColor_images_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_vehicleColor_images_image object,
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
  GVehicleDealersData_vehicleDealers_vehicleColor_images_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder();

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

class _$GVehicleDealersData_vehicleDealers_vehicleVariantSerializer
    implements
        StructuredSerializer<
            GVehicleDealersData_vehicleDealers_vehicleVariant> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_vehicleVariant,
    _$GVehicleDealersData_vehicleDealers_vehicleVariant
  ];
  @override
  final String wireName = 'GVehicleDealersData_vehicleDealers_vehicleVariant';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_vehicleVariant object,
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
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicle;
    if (value != null) {
      result
        ..add('vehicle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle)));
    }
    return result;
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealersData_vehicleDealers_vehicleVariantBuilder();

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
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicle':
          result.vehicle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle))!
              as GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleSerializer
    implements
        StructuredSerializer<
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle,
    _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle
  ];
  @override
  final String wireName =
      'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand)));
    }
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
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder();

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
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand))!
              as GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandSerializer
    implements
        StructuredSerializer<
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand,
    _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
  ];
  @override
  final String wireName =
      'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand object,
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
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_pricesSerializer
    implements StructuredSerializer<GVehicleDealersData_vehicleDealers_prices> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_prices,
    _$GVehicleDealersData_vehicleDealers_prices
  ];
  @override
  final String wireName = 'GVehicleDealersData_vehicleDealers_prices';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealersData_vehicleDealers_prices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealersData_vehicleDealers_prices_category)));
    }
    return result;
  }

  @override
  GVehicleDealersData_vehicleDealers_prices deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealersData_vehicleDealers_pricesBuilder();

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
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealersData_vehicleDealers_prices_category))!
              as GVehicleDealersData_vehicleDealers_prices_category);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersData_vehicleDealers_prices_categorySerializer
    implements
        StructuredSerializer<
            GVehicleDealersData_vehicleDealers_prices_category> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersData_vehicleDealers_prices_category,
    _$GVehicleDealersData_vehicleDealers_prices_category
  ];
  @override
  final String wireName = 'GVehicleDealersData_vehicleDealers_prices_category';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealersData_vehicleDealers_prices_category object,
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
  GVehicleDealersData_vehicleDealers_prices_category deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealersData_vehicleDealers_prices_categoryBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerDataSerializer
    implements StructuredSerializer<GCreateVehicleDealerData> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerData,
    _$GCreateVehicleDealerData
  ];
  @override
  final String wireName = 'GCreateVehicleDealerData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVehicleDealerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createVehicleDealer;
    if (value != null) {
      result
        ..add('createVehicleDealer')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCreateVehicleDealerData_createVehicleDealer)));
    }
    return result;
  }

  @override
  GCreateVehicleDealerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleDealerDataBuilder();

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
        case 'createVehicleDealer':
          result.createVehicleDealer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCreateVehicleDealerData_createVehicleDealer))!
              as GCreateVehicleDealerData_createVehicleDealer);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerData_createVehicleDealerSerializer
    implements
        StructuredSerializer<GCreateVehicleDealerData_createVehicleDealer> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerData_createVehicleDealer,
    _$GCreateVehicleDealerData_createVehicleDealer
  ];
  @override
  final String wireName = 'GCreateVehicleDealerData_createVehicleDealer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreateVehicleDealerData_createVehicleDealer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateVehicleDealerData_createVehicleDealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleDealerData_createVehicleDealerBuilder();

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
  final int? totalPrice;

  factory _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest(
          [void Function(
                  GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder)?
              updates]) =>
      (new GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequestBuilder()
            ..update(updates))
          ._build();

  _$GCreateVehicleDealerStockRequestData_createVehicleDealerStockRequest._(
      {required this.G__typename, this.type, this.stock, this.totalPrice})
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
        totalPrice == other.totalPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
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
          ..add('totalPrice', totalPrice))
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

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

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
      _totalPrice = $v.totalPrice;
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
            totalPrice: totalPrice);
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData extends GVehicleDealersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GVehicleDealersData_vehicleDealers>? vehicleDealers;

  factory _$GVehicleDealersData(
          [void Function(GVehicleDealersDataBuilder)? updates]) =>
      (new GVehicleDealersDataBuilder()..update(updates))._build();

  _$GVehicleDealersData._({required this.G__typename, this.vehicleDealers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleDealersData', 'G__typename');
  }

  @override
  GVehicleDealersData rebuild(
          void Function(GVehicleDealersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersDataBuilder toBuilder() =>
      new GVehicleDealersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData &&
        G__typename == other.G__typename &&
        vehicleDealers == other.vehicleDealers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleDealers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealersData')
          ..add('G__typename', G__typename)
          ..add('vehicleDealers', vehicleDealers))
        .toString();
  }
}

class GVehicleDealersDataBuilder
    implements Builder<GVehicleDealersData, GVehicleDealersDataBuilder> {
  _$GVehicleDealersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GVehicleDealersData_vehicleDealers>? _vehicleDealers;
  ListBuilder<GVehicleDealersData_vehicleDealers> get vehicleDealers =>
      _$this._vehicleDealers ??=
          new ListBuilder<GVehicleDealersData_vehicleDealers>();
  set vehicleDealers(
          ListBuilder<GVehicleDealersData_vehicleDealers>? vehicleDealers) =>
      _$this._vehicleDealers = vehicleDealers;

  GVehicleDealersDataBuilder() {
    GVehicleDealersData._initializeBuilder(this);
  }

  GVehicleDealersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleDealers = $v.vehicleDealers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData;
  }

  @override
  void update(void Function(GVehicleDealersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData build() => _build();

  _$GVehicleDealersData _build() {
    _$GVehicleDealersData _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVehicleDealersData', 'G__typename'),
              vehicleDealers: _vehicleDealers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleDealers';
        _vehicleDealers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers
    extends GVehicleDealersData_vehicleDealers {
  @override
  final String G__typename;
  @override
  final GVehicleDealersData_vehicleDealers_vehicleColor? vehicleColor;
  @override
  final GVehicleDealersData_vehicleDealers_vehicleVariant? vehicleVariant;
  @override
  final String id;
  @override
  final int? stock;
  @override
  final BuiltList<GVehicleDealersData_vehicleDealers_prices>? prices;
  @override
  final int? totalPrice;

  factory _$GVehicleDealersData_vehicleDealers(
          [void Function(GVehicleDealersData_vehicleDealersBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealersBuilder()..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers._(
      {required this.G__typename,
      this.vehicleColor,
      this.vehicleVariant,
      required this.id,
      this.stock,
      this.prices,
      this.totalPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleDealersData_vehicleDealers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers rebuild(
          void Function(GVehicleDealersData_vehicleDealersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealersBuilder toBuilder() =>
      new GVehicleDealersData_vehicleDealersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers &&
        G__typename == other.G__typename &&
        vehicleColor == other.vehicleColor &&
        vehicleVariant == other.vehicleVariant &&
        id == other.id &&
        stock == other.stock &&
        prices == other.prices &&
        totalPrice == other.totalPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleColor.hashCode);
    _$hash = $jc(_$hash, vehicleVariant.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, prices.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealersData_vehicleDealers')
          ..add('G__typename', G__typename)
          ..add('vehicleColor', vehicleColor)
          ..add('vehicleVariant', vehicleVariant)
          ..add('id', id)
          ..add('stock', stock)
          ..add('prices', prices)
          ..add('totalPrice', totalPrice))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealersBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers,
            GVehicleDealersData_vehicleDealersBuilder> {
  _$GVehicleDealersData_vehicleDealers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVehicleDealersData_vehicleDealers_vehicleColorBuilder? _vehicleColor;
  GVehicleDealersData_vehicleDealers_vehicleColorBuilder get vehicleColor =>
      _$this._vehicleColor ??=
          new GVehicleDealersData_vehicleDealers_vehicleColorBuilder();
  set vehicleColor(
          GVehicleDealersData_vehicleDealers_vehicleColorBuilder?
              vehicleColor) =>
      _$this._vehicleColor = vehicleColor;

  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder? _vehicleVariant;
  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder get vehicleVariant =>
      _$this._vehicleVariant ??=
          new GVehicleDealersData_vehicleDealers_vehicleVariantBuilder();
  set vehicleVariant(
          GVehicleDealersData_vehicleDealers_vehicleVariantBuilder?
              vehicleVariant) =>
      _$this._vehicleVariant = vehicleVariant;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  ListBuilder<GVehicleDealersData_vehicleDealers_prices>? _prices;
  ListBuilder<GVehicleDealersData_vehicleDealers_prices> get prices =>
      _$this._prices ??=
          new ListBuilder<GVehicleDealersData_vehicleDealers_prices>();
  set prices(ListBuilder<GVehicleDealersData_vehicleDealers_prices>? prices) =>
      _$this._prices = prices;

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

  GVehicleDealersData_vehicleDealersBuilder() {
    GVehicleDealersData_vehicleDealers._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleColor = $v.vehicleColor?.toBuilder();
      _vehicleVariant = $v.vehicleVariant?.toBuilder();
      _id = $v.id;
      _stock = $v.stock;
      _prices = $v.prices?.toBuilder();
      _totalPrice = $v.totalPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersData_vehicleDealers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers;
  }

  @override
  void update(
      void Function(GVehicleDealersData_vehicleDealersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers build() => _build();

  _$GVehicleDealersData_vehicleDealers _build() {
    _$GVehicleDealersData_vehicleDealers _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData_vehicleDealers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehicleDealersData_vehicleDealers', 'G__typename'),
              vehicleColor: _vehicleColor?.build(),
              vehicleVariant: _vehicleVariant?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehicleDealersData_vehicleDealers', 'id'),
              stock: stock,
              prices: _prices?.build(),
              totalPrice: totalPrice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleColor';
        _vehicleColor?.build();
        _$failedField = 'vehicleVariant';
        _vehicleVariant?.build();

        _$failedField = 'prices';
        _prices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersData_vehicleDealers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleColor
    extends GVehicleDealersData_vehicleDealers_vehicleColor {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final BuiltList<GVehicleDealersData_vehicleDealers_vehicleColor_images>?
      images;

  factory _$GVehicleDealersData_vehicleDealers_vehicleColor(
          [void Function(
                  GVehicleDealersData_vehicleDealers_vehicleColorBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_vehicleColorBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_vehicleColor._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.code,
      this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehicleDealersData_vehicleDealers_vehicleColor', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers_vehicleColor', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor rebuild(
          void Function(GVehicleDealersData_vehicleDealers_vehicleColorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_vehicleColorBuilder toBuilder() =>
      new GVehicleDealersData_vehicleDealers_vehicleColorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers_vehicleColor &&
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
            r'GVehicleDealersData_vehicleDealers_vehicleColor')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('images', images))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_vehicleColorBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_vehicleColor,
            GVehicleDealersData_vehicleDealers_vehicleColorBuilder> {
  _$GVehicleDealersData_vehicleDealers_vehicleColor? _$v;

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

  ListBuilder<GVehicleDealersData_vehicleDealers_vehicleColor_images>? _images;
  ListBuilder<GVehicleDealersData_vehicleDealers_vehicleColor_images>
      get images => _$this._images ??= new ListBuilder<
          GVehicleDealersData_vehicleDealers_vehicleColor_images>();
  set images(
          ListBuilder<GVehicleDealersData_vehicleDealers_vehicleColor_images>?
              images) =>
      _$this._images = images;

  GVehicleDealersData_vehicleDealers_vehicleColorBuilder() {
    GVehicleDealersData_vehicleDealers_vehicleColor._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_vehicleColorBuilder get _$this {
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
  void replace(GVehicleDealersData_vehicleDealers_vehicleColor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers_vehicleColor;
  }

  @override
  void update(
      void Function(GVehicleDealersData_vehicleDealers_vehicleColorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor build() => _build();

  _$GVehicleDealersData_vehicleDealers_vehicleColor _build() {
    _$GVehicleDealersData_vehicleDealers_vehicleColor _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData_vehicleDealers_vehicleColor._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleDealersData_vehicleDealers_vehicleColor',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehicleDealersData_vehicleDealers_vehicleColor', 'id'),
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
            r'GVehicleDealersData_vehicleDealers_vehicleColor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleColor_images
    extends GVehicleDealersData_vehicleDealers_vehicleColor_images {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GVehicleDealersData_vehicleDealers_vehicleColor_images_image? image;

  factory _$GVehicleDealersData_vehicleDealers_vehicleColor_images(
          [void Function(
                  GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_vehicleColor_images._(
      {required this.G__typename, required this.id, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealersData_vehicleDealers_vehicleColor_images',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers_vehicleColor_images', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_images rebuild(
          void Function(
                  GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder toBuilder() =>
      new GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers_vehicleColor_images &&
        G__typename == other.G__typename &&
        id == other.id &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealersData_vehicleDealers_vehicleColor_images')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_vehicleColor_images,
            GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder> {
  _$GVehicleDealersData_vehicleDealers_vehicleColor_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder? _image;
  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder
      get image => _$this._image ??=
          new GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder();
  set image(
          GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder?
              image) =>
      _$this._image = image;

  GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder() {
    GVehicleDealersData_vehicleDealers_vehicleColor_images._initializeBuilder(
        this);
  }

  GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersData_vehicleDealers_vehicleColor_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers_vehicleColor_images;
  }

  @override
  void update(
      void Function(
              GVehicleDealersData_vehicleDealers_vehicleColor_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_images build() => _build();

  _$GVehicleDealersData_vehicleDealers_vehicleColor_images _build() {
    _$GVehicleDealersData_vehicleDealers_vehicleColor_images _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData_vehicleDealers_vehicleColor_images._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleDealersData_vehicleDealers_vehicleColor_images',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GVehicleDealersData_vehicleDealers_vehicleColor_images',
                  'id'),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersData_vehicleDealers_vehicleColor_images',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image
    extends GVehicleDealersData_vehicleDealers_vehicleColor_images_image {
  @override
  final String G__typename;
  @override
  final String url;

  factory _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image(
          [void Function(
                  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image._(
      {required this.G__typename, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealersData_vehicleDealers_vehicleColor_images_image',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(url,
        r'GVehicleDealersData_vehicleDealers_vehicleColor_images_image', 'url');
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_images_image rebuild(
          void Function(
                  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder
      toBuilder() =>
          new GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealersData_vehicleDealers_vehicleColor_images_image &&
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
            r'GVehicleDealersData_vehicleDealers_vehicleColor_images_image')
          ..add('G__typename', G__typename)
          ..add('url', url))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_vehicleColor_images_image,
            GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder> {
  _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder() {
    GVehicleDealersData_vehicleDealers_vehicleColor_images_image
        ._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleDealersData_vehicleDealers_vehicleColor_images_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image;
  }

  @override
  void update(
      void Function(
              GVehicleDealersData_vehicleDealers_vehicleColor_images_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleColor_images_image build() =>
      _build();

  _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image _build() {
    final _$result = _$v ??
        new _$GVehicleDealersData_vehicleDealers_vehicleColor_images_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleDealersData_vehicleDealers_vehicleColor_images_image',
                'G__typename'),
            url: BuiltValueNullFieldError.checkNotNull(
                url,
                r'GVehicleDealersData_vehicleDealers_vehicleColor_images_image',
                'url'));
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleVariant
    extends GVehicleDealersData_vehicleDealers_vehicleVariant {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final int? price;
  @override
  final GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle? vehicle;

  factory _$GVehicleDealersData_vehicleDealers_vehicleVariant(
          [void Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_vehicleVariantBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_vehicleVariant._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.modifiedAt,
      this.price,
      this.vehicle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehicleDealersData_vehicleDealers_vehicleVariant', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers_vehicleVariant', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant rebuild(
          void Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder toBuilder() =>
      new GVehicleDealersData_vehicleDealers_vehicleVariantBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers_vehicleVariant &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        modifiedAt == other.modifiedAt &&
        price == other.price &&
        vehicle == other.vehicle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, vehicle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealersData_vehicleDealers_vehicleVariant')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('modifiedAt', modifiedAt)
          ..add('price', price)
          ..add('vehicle', vehicle))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_vehicleVariantBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_vehicleVariant,
            GVehicleDealersData_vehicleDealers_vehicleVariantBuilder> {
  _$GVehicleDealersData_vehicleDealers_vehicleVariant? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder? _vehicle;
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder
      get vehicle => _$this._vehicle ??=
          new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder();
  set vehicle(
          GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder?
              vehicle) =>
      _$this._vehicle = vehicle;

  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder() {
    GVehicleDealersData_vehicleDealers_vehicleVariant._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_vehicleVariantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _price = $v.price;
      _vehicle = $v.vehicle?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersData_vehicleDealers_vehicleVariant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers_vehicleVariant;
  }

  @override
  void update(
      void Function(GVehicleDealersData_vehicleDealers_vehicleVariantBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant build() => _build();

  _$GVehicleDealersData_vehicleDealers_vehicleVariant _build() {
    _$GVehicleDealersData_vehicleDealers_vehicleVariant _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData_vehicleDealers_vehicleVariant._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleDealersData_vehicleDealers_vehicleVariant',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GVehicleDealersData_vehicleDealers_vehicleVariant', 'id'),
              name: name,
              modifiedAt: _modifiedAt?.build(),
              price: price,
              vehicle: _vehicle?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();

        _$failedField = 'vehicle';
        _vehicle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersData_vehicleDealers_vehicleVariant',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle
    extends GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle {
  @override
  final String G__typename;
  @override
  final GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand? brand;
  @override
  final String? name;
  @override
  final String id;
  @override
  final String? description;

  factory _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle(
          [void Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle._(
      {required this.G__typename,
      this.brand,
      this.name,
      required this.id,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle rebuild(
          void Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder
      toBuilder() =>
          new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle &&
        G__typename == other.G__typename &&
        brand == other.brand &&
        name == other.name &&
        id == other.id &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle')
          ..add('G__typename', G__typename)
          ..add('brand', brand)
          ..add('name', name)
          ..add('id', id)
          ..add('description', description))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle,
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder> {
  _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder?
      _brand;
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder
      get brand => _$this._brand ??=
          new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder();
  set brand(
          GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder?
              brand) =>
      _$this._brand = brand;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder() {
    GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle
        ._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _brand = $v.brand?.toBuilder();
      _name = $v.name;
      _id = $v.id;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle;
  }

  @override
  void update(
      void Function(
              GVehicleDealersData_vehicleDealers_vehicleVariant_vehicleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle build() => _build();

  _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle _build() {
    _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle',
                  'G__typename'),
              brand: _brand?.build(),
              name: name,
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle',
                  'id'),
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'brand';
        _brand?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
    extends GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand(
          [void Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand',
        'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand rebuild(
          void Function(
                  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder
      toBuilder() =>
          new GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand,
            GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder> {
  _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder() {
    GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand
        ._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand;
  }

  @override
  void update(
      void Function(
              GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brandBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand build() =>
      _build();

  _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand _build() {
    final _$result = _$v ??
        new _$GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GVehicleDealersData_vehicleDealers_vehicleVariant_vehicle_brand',
                'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_prices
    extends GVehicleDealersData_vehicleDealers_prices {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int? amount;
  @override
  final GVehicleDealersData_vehicleDealers_prices_category? category;

  factory _$GVehicleDealersData_vehicleDealers_prices(
          [void Function(GVehicleDealersData_vehicleDealers_pricesBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_pricesBuilder()..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_prices._(
      {required this.G__typename, required this.id, this.amount, this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehicleDealersData_vehicleDealers_prices', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers_prices', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_prices rebuild(
          void Function(GVehicleDealersData_vehicleDealers_pricesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_pricesBuilder toBuilder() =>
      new GVehicleDealersData_vehicleDealers_pricesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers_prices &&
        G__typename == other.G__typename &&
        id == other.id &&
        amount == other.amount &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealersData_vehicleDealers_prices')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('amount', amount)
          ..add('category', category))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_pricesBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_prices,
            GVehicleDealersData_vehicleDealers_pricesBuilder> {
  _$GVehicleDealersData_vehicleDealers_prices? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  GVehicleDealersData_vehicleDealers_prices_categoryBuilder? _category;
  GVehicleDealersData_vehicleDealers_prices_categoryBuilder get category =>
      _$this._category ??=
          new GVehicleDealersData_vehicleDealers_prices_categoryBuilder();
  set category(
          GVehicleDealersData_vehicleDealers_prices_categoryBuilder?
              category) =>
      _$this._category = category;

  GVehicleDealersData_vehicleDealers_pricesBuilder() {
    GVehicleDealersData_vehicleDealers_prices._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_pricesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _amount = $v.amount;
      _category = $v.category?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersData_vehicleDealers_prices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers_prices;
  }

  @override
  void update(
      void Function(GVehicleDealersData_vehicleDealers_pricesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_prices build() => _build();

  _$GVehicleDealersData_vehicleDealers_prices _build() {
    _$GVehicleDealersData_vehicleDealers_prices _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersData_vehicleDealers_prices._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehicleDealersData_vehicleDealers_prices', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehicleDealersData_vehicleDealers_prices', 'id'),
              amount: amount,
              category: _category?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersData_vehicleDealers_prices',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersData_vehicleDealers_prices_category
    extends GVehicleDealersData_vehicleDealers_prices_category {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GVehicleDealersData_vehicleDealers_prices_category(
          [void Function(
                  GVehicleDealersData_vehicleDealers_prices_categoryBuilder)?
              updates]) =>
      (new GVehicleDealersData_vehicleDealers_prices_categoryBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealersData_vehicleDealers_prices_category._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehicleDealersData_vehicleDealers_prices_category', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleDealersData_vehicleDealers_prices_category', 'id');
  }

  @override
  GVehicleDealersData_vehicleDealers_prices_category rebuild(
          void Function(
                  GVehicleDealersData_vehicleDealers_prices_categoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersData_vehicleDealers_prices_categoryBuilder toBuilder() =>
      new GVehicleDealersData_vehicleDealers_prices_categoryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersData_vehicleDealers_prices_category &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealersData_vehicleDealers_prices_category')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GVehicleDealersData_vehicleDealers_prices_categoryBuilder
    implements
        Builder<GVehicleDealersData_vehicleDealers_prices_category,
            GVehicleDealersData_vehicleDealers_prices_categoryBuilder> {
  _$GVehicleDealersData_vehicleDealers_prices_category? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehicleDealersData_vehicleDealers_prices_categoryBuilder() {
    GVehicleDealersData_vehicleDealers_prices_category._initializeBuilder(this);
  }

  GVehicleDealersData_vehicleDealers_prices_categoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersData_vehicleDealers_prices_category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersData_vehicleDealers_prices_category;
  }

  @override
  void update(
      void Function(GVehicleDealersData_vehicleDealers_prices_categoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersData_vehicleDealers_prices_category build() => _build();

  _$GVehicleDealersData_vehicleDealers_prices_category _build() {
    final _$result = _$v ??
        new _$GVehicleDealersData_vehicleDealers_prices_category._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleDealersData_vehicleDealers_prices_category',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GVehicleDealersData_vehicleDealers_prices_category', 'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerData extends GCreateVehicleDealerData {
  @override
  final String G__typename;
  @override
  final GCreateVehicleDealerData_createVehicleDealer? createVehicleDealer;

  factory _$GCreateVehicleDealerData(
          [void Function(GCreateVehicleDealerDataBuilder)? updates]) =>
      (new GCreateVehicleDealerDataBuilder()..update(updates))._build();

  _$GCreateVehicleDealerData._(
      {required this.G__typename, this.createVehicleDealer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateVehicleDealerData', 'G__typename');
  }

  @override
  GCreateVehicleDealerData rebuild(
          void Function(GCreateVehicleDealerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerDataBuilder toBuilder() =>
      new GCreateVehicleDealerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVehicleDealerData &&
        G__typename == other.G__typename &&
        createVehicleDealer == other.createVehicleDealer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createVehicleDealer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVehicleDealerData')
          ..add('G__typename', G__typename)
          ..add('createVehicleDealer', createVehicleDealer))
        .toString();
  }
}

class GCreateVehicleDealerDataBuilder
    implements
        Builder<GCreateVehicleDealerData, GCreateVehicleDealerDataBuilder> {
  _$GCreateVehicleDealerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateVehicleDealerData_createVehicleDealerBuilder? _createVehicleDealer;
  GCreateVehicleDealerData_createVehicleDealerBuilder get createVehicleDealer =>
      _$this._createVehicleDealer ??=
          new GCreateVehicleDealerData_createVehicleDealerBuilder();
  set createVehicleDealer(
          GCreateVehicleDealerData_createVehicleDealerBuilder?
              createVehicleDealer) =>
      _$this._createVehicleDealer = createVehicleDealer;

  GCreateVehicleDealerDataBuilder() {
    GCreateVehicleDealerData._initializeBuilder(this);
  }

  GCreateVehicleDealerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createVehicleDealer = $v.createVehicleDealer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleDealerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleDealerData;
  }

  @override
  void update(void Function(GCreateVehicleDealerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerData build() => _build();

  _$GCreateVehicleDealerData _build() {
    _$GCreateVehicleDealerData _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleDealerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateVehicleDealerData', 'G__typename'),
              createVehicleDealer: _createVehicleDealer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createVehicleDealer';
        _createVehicleDealer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleDealerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerData_createVehicleDealer
    extends GCreateVehicleDealerData_createVehicleDealer {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GCreateVehicleDealerData_createVehicleDealer(
          [void Function(GCreateVehicleDealerData_createVehicleDealerBuilder)?
              updates]) =>
      (new GCreateVehicleDealerData_createVehicleDealerBuilder()
            ..update(updates))
          ._build();

  _$GCreateVehicleDealerData_createVehicleDealer._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCreateVehicleDealerData_createVehicleDealer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateVehicleDealerData_createVehicleDealer', 'id');
  }

  @override
  GCreateVehicleDealerData_createVehicleDealer rebuild(
          void Function(GCreateVehicleDealerData_createVehicleDealerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerData_createVehicleDealerBuilder toBuilder() =>
      new GCreateVehicleDealerData_createVehicleDealerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVehicleDealerData_createVehicleDealer &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreateVehicleDealerData_createVehicleDealer')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreateVehicleDealerData_createVehicleDealerBuilder
    implements
        Builder<GCreateVehicleDealerData_createVehicleDealer,
            GCreateVehicleDealerData_createVehicleDealerBuilder> {
  _$GCreateVehicleDealerData_createVehicleDealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCreateVehicleDealerData_createVehicleDealerBuilder() {
    GCreateVehicleDealerData_createVehicleDealer._initializeBuilder(this);
  }

  GCreateVehicleDealerData_createVehicleDealerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleDealerData_createVehicleDealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleDealerData_createVehicleDealer;
  }

  @override
  void update(
      void Function(GCreateVehicleDealerData_createVehicleDealerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerData_createVehicleDealer build() => _build();

  _$GCreateVehicleDealerData_createVehicleDealer _build() {
    final _$result = _$v ??
        new _$GCreateVehicleDealerData_createVehicleDealer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateVehicleDealerData_createVehicleDealer', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GCreateVehicleDealerData_createVehicleDealer', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
