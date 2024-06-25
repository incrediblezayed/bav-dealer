// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductDealerStockRequestsData>
    _$gProductDealerStockRequestsDataSerializer =
    new _$GProductDealerStockRequestsDataSerializer();
Serializer<GProductDealerStockRequestsData_productDealerStockRequests>
    _$gProductDealerStockRequestsDataProductDealerStockRequestsSerializer =
    new _$GProductDealerStockRequestsData_productDealerStockRequestsSerializer();
Serializer<
        GProductDealerStockRequestsData_productDealerStockRequests_productVariant>
    _$gProductDealerStockRequestsDataProductDealerStockRequestsProductVariantSerializer =
    new _$GProductDealerStockRequestsData_productDealerStockRequests_productVariantSerializer();
Serializer<
        GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery>
    _$gProductDealerStockRequestsDataProductDealerStockRequestsProductVariantGallerySerializer =
    new _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallerySerializer();
Serializer<GVehicleDealerStockRequestsData>
    _$gVehicleDealerStockRequestsDataSerializer =
    new _$GVehicleDealerStockRequestsDataSerializer();
Serializer<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequestsSerializer();
Serializer<
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleColorSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorSerializer();
Serializer<
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleColorGallerySerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallerySerializer();
Serializer<
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleVariantSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantSerializer();
Serializer<GQueryData> _$gQueryDataSerializer = new _$GQueryDataSerializer();

class _$GProductDealerStockRequestsDataSerializer
    implements StructuredSerializer<GProductDealerStockRequestsData> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsData,
    _$GProductDealerStockRequestsData
  ];
  @override
  final String wireName = 'GProductDealerStockRequestsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductDealerStockRequestsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.productDealerStockRequests;
    if (value != null) {
      result
        ..add('productDealerStockRequests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GProductDealerStockRequestsData_productDealerStockRequests)
            ])));
    }
    return result;
  }

  @override
  GProductDealerStockRequestsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductDealerStockRequestsDataBuilder();

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
        case 'productDealerStockRequests':
          result.productDealerStockRequests.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GProductDealerStockRequestsData_productDealerStockRequests)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequestsSerializer
    implements
        StructuredSerializer<
            GProductDealerStockRequestsData_productDealerStockRequests> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsData_productDealerStockRequests,
    _$GProductDealerStockRequestsData_productDealerStockRequests
  ];
  @override
  final String wireName =
      'GProductDealerStockRequestsData_productDealerStockRequests';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProductDealerStockRequestsData_productDealerStockRequests object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.accepted;
    if (value != null) {
      result
        ..add('accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('totalPrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.productVariant;
    if (value != null) {
      result
        ..add('productVariant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProductDealerStockRequestsData_productDealerStockRequests_productVariant)));
    }
    return result;
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProductDealerStockRequestsData_productDealerStockRequestsBuilder();

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
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'productVariant':
          result.productVariant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProductDealerStockRequestsData_productDealerStockRequests_productVariant))!
              as GProductDealerStockRequestsData_productDealerStockRequests_productVariant);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_productVariantSerializer
    implements
        StructuredSerializer<
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsData_productDealerStockRequests_productVariant,
    _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant
  ];
  @override
  final String wireName =
      'GProductDealerStockRequestsData_productDealerStockRequests_productVariant';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GProductDealerStockRequestsData_productDealerStockRequests_productVariant
          object,
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
    value = object.gallery;
    if (value != null) {
      result
        ..add('gallery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery)
            ])));
    }
    return result;
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder();

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
        case 'gallery':
          result.gallery.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallerySerializer
    implements
        StructuredSerializer<
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery,
    _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
  ];
  @override
  final String wireName =
      'GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.JsonObject)));
    }
    return result;
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder();

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
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(_i3.JsonObject)) as _i3.JsonObject?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealerStockRequestsDataSerializer
    implements StructuredSerializer<GVehicleDealerStockRequestsData> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsData,
    _$GVehicleDealerStockRequestsData
  ];
  @override
  final String wireName = 'GVehicleDealerStockRequestsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealerStockRequestsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleDealerStockRequests;
    if (value != null) {
      result
        ..add('vehicleDealerStockRequests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests)
            ])));
    }
    return result;
  }

  @override
  GVehicleDealerStockRequestsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealerStockRequestsDataBuilder();

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
        case 'vehicleDealerStockRequests':
          result.vehicleDealerStockRequests.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GVehicleDealerStockRequestsData_vehicleDealerStockRequests)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequestsSerializer
    implements
        StructuredSerializer<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests,
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests
  ];
  @override
  final String wireName =
      'GVehicleDealerStockRequestsData_vehicleDealerStockRequests';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.accepted;
    if (value != null) {
      result
        ..add('accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('totalPrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicleColor;
    if (value != null) {
      result
        ..add('vehicleColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor)));
    }
    value = object.vehicleVariant;
    if (value != null) {
      result
        ..add('vehicleVariant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant)));
    }
    return result;
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder();

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
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicleColor':
          result.vehicleColor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor))!
              as GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor);
          break;
        case 'vehicleVariant':
          result.vehicleVariant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant))!
              as GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorSerializer
    implements
        StructuredSerializer<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor,
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
  ];
  @override
  final String wireName =
      'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
          object,
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
    value = object.gallery;
    if (value != null) {
      result
        ..add('gallery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery)
            ])));
    }
    return result;
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder();

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
        case 'gallery':
          result.gallery.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallerySerializer
    implements
        StructuredSerializer<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery,
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
  ];
  @override
  final String wireName =
      'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.JsonObject)));
    }
    return result;
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder();

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
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(_i3.JsonObject)) as _i3.JsonObject?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantSerializer
    implements
        StructuredSerializer<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant,
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
  ];
  @override
  final String wireName =
      'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
          object,
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
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder();

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

class _$GQueryDataSerializer implements StructuredSerializer<GQueryData> {
  @override
  final Iterable<Type> types = const [GQueryData, _$GQueryData];
  @override
  final String wireName = 'GQueryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleDealerStockRequestsCount;
    if (value != null) {
      result
        ..add('vehicleDealerStockRequestsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GQueryData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GQueryDataBuilder();

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
        case 'vehicleDealerStockRequestsCount':
          result.vehicleDealerStockRequestsCount = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsData
    extends GProductDealerStockRequestsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GProductDealerStockRequestsData_productDealerStockRequests>?
      productDealerStockRequests;

  factory _$GProductDealerStockRequestsData(
          [void Function(GProductDealerStockRequestsDataBuilder)? updates]) =>
      (new GProductDealerStockRequestsDataBuilder()..update(updates))._build();

  _$GProductDealerStockRequestsData._(
      {required this.G__typename, this.productDealerStockRequests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GProductDealerStockRequestsData', 'G__typename');
  }

  @override
  GProductDealerStockRequestsData rebuild(
          void Function(GProductDealerStockRequestsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsDataBuilder toBuilder() =>
      new GProductDealerStockRequestsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductDealerStockRequestsData &&
        G__typename == other.G__typename &&
        productDealerStockRequests == other.productDealerStockRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, productDealerStockRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductDealerStockRequestsData')
          ..add('G__typename', G__typename)
          ..add('productDealerStockRequests', productDealerStockRequests))
        .toString();
  }
}

class GProductDealerStockRequestsDataBuilder
    implements
        Builder<GProductDealerStockRequestsData,
            GProductDealerStockRequestsDataBuilder> {
  _$GProductDealerStockRequestsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GProductDealerStockRequestsData_productDealerStockRequests>?
      _productDealerStockRequests;
  ListBuilder<GProductDealerStockRequestsData_productDealerStockRequests>
      get productDealerStockRequests =>
          _$this._productDealerStockRequests ??= new ListBuilder<
              GProductDealerStockRequestsData_productDealerStockRequests>();
  set productDealerStockRequests(
          ListBuilder<
                  GProductDealerStockRequestsData_productDealerStockRequests>?
              productDealerStockRequests) =>
      _$this._productDealerStockRequests = productDealerStockRequests;

  GProductDealerStockRequestsDataBuilder() {
    GProductDealerStockRequestsData._initializeBuilder(this);
  }

  GProductDealerStockRequestsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _productDealerStockRequests = $v.productDealerStockRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductDealerStockRequestsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductDealerStockRequestsData;
  }

  @override
  void update(void Function(GProductDealerStockRequestsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsData build() => _build();

  _$GProductDealerStockRequestsData _build() {
    _$GProductDealerStockRequestsData _$result;
    try {
      _$result = _$v ??
          new _$GProductDealerStockRequestsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GProductDealerStockRequestsData', 'G__typename'),
              productDealerStockRequests: _productDealerStockRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productDealerStockRequests';
        _productDealerStockRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductDealerStockRequestsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests
    extends GProductDealerStockRequestsData_productDealerStockRequests {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final bool? accepted;
  @override
  final String? type;
  @override
  final int? totalPrice;
  @override
  final int? stock;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final GProductDealerStockRequestsData_productDealerStockRequests_productVariant?
      productVariant;

  factory _$GProductDealerStockRequestsData_productDealerStockRequests(
          [void Function(
                  GProductDealerStockRequestsData_productDealerStockRequestsBuilder)?
              updates]) =>
      (new GProductDealerStockRequestsData_productDealerStockRequestsBuilder()
            ..update(updates))
          ._build();

  _$GProductDealerStockRequestsData_productDealerStockRequests._(
      {required this.G__typename,
      required this.id,
      this.accepted,
      this.type,
      this.totalPrice,
      this.stock,
      this.modifiedAt,
      this.productVariant})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProductDealerStockRequestsData_productDealerStockRequests',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'GProductDealerStockRequestsData_productDealerStockRequests', 'id');
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests rebuild(
          void Function(
                  GProductDealerStockRequestsData_productDealerStockRequestsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsData_productDealerStockRequestsBuilder
      toBuilder() =>
          new GProductDealerStockRequestsData_productDealerStockRequestsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GProductDealerStockRequestsData_productDealerStockRequests &&
        G__typename == other.G__typename &&
        id == other.id &&
        accepted == other.accepted &&
        type == other.type &&
        totalPrice == other.totalPrice &&
        stock == other.stock &&
        modifiedAt == other.modifiedAt &&
        productVariant == other.productVariant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, productVariant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProductDealerStockRequestsData_productDealerStockRequests')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('accepted', accepted)
          ..add('type', type)
          ..add('totalPrice', totalPrice)
          ..add('stock', stock)
          ..add('modifiedAt', modifiedAt)
          ..add('productVariant', productVariant))
        .toString();
  }
}

class GProductDealerStockRequestsData_productDealerStockRequestsBuilder
    implements
        Builder<GProductDealerStockRequestsData_productDealerStockRequests,
            GProductDealerStockRequestsData_productDealerStockRequestsBuilder> {
  _$GProductDealerStockRequestsData_productDealerStockRequests? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder?
      _productVariant;
  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
      get productVariant => _$this._productVariant ??=
          new GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder();
  set productVariant(
          GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder?
              productVariant) =>
      _$this._productVariant = productVariant;

  GProductDealerStockRequestsData_productDealerStockRequestsBuilder() {
    GProductDealerStockRequestsData_productDealerStockRequests
        ._initializeBuilder(this);
  }

  GProductDealerStockRequestsData_productDealerStockRequestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _accepted = $v.accepted;
      _type = $v.type;
      _totalPrice = $v.totalPrice;
      _stock = $v.stock;
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _productVariant = $v.productVariant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GProductDealerStockRequestsData_productDealerStockRequests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductDealerStockRequestsData_productDealerStockRequests;
  }

  @override
  void update(
      void Function(
              GProductDealerStockRequestsData_productDealerStockRequestsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests build() =>
      _build();

  _$GProductDealerStockRequestsData_productDealerStockRequests _build() {
    _$GProductDealerStockRequestsData_productDealerStockRequests _$result;
    try {
      _$result = _$v ??
          new _$GProductDealerStockRequestsData_productDealerStockRequests._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GProductDealerStockRequestsData_productDealerStockRequests',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GProductDealerStockRequestsData_productDealerStockRequests',
                  'id'),
              accepted: accepted,
              type: type,
              totalPrice: totalPrice,
              stock: stock,
              modifiedAt: _modifiedAt?.build(),
              productVariant: _productVariant?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
        _$failedField = 'productVariant';
        _productVariant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductDealerStockRequestsData_productDealerStockRequests',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant
    extends GProductDealerStockRequestsData_productDealerStockRequests_productVariant {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String id;
  @override
  final BuiltList<
          GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery>?
      gallery;

  factory _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant(
          [void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder)?
              updates]) =>
      (new GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder()
            ..update(updates))
          ._build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant._(
      {required this.G__typename, this.name, required this.id, this.gallery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant',
        'id');
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant rebuild(
          void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
      toBuilder() =>
          new GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GProductDealerStockRequestsData_productDealerStockRequests_productVariant &&
        G__typename == other.G__typename &&
        name == other.name &&
        id == other.id &&
        gallery == other.gallery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, gallery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id)
          ..add('gallery', gallery))
        .toString();
  }
}

class GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
    implements
        Builder<
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant,
            GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder> {
  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<
          GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery>?
      _gallery;
  ListBuilder<
          GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery>
      get gallery => _$this._gallery ??= new ListBuilder<
          GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery>();
  set gallery(
          ListBuilder<
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery>?
              gallery) =>
      _$this._gallery = gallery;

  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder() {
    GProductDealerStockRequestsData_productDealerStockRequests_productVariant
        ._initializeBuilder(this);
  }

  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _id = $v.id;
      _gallery = $v.gallery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GProductDealerStockRequestsData_productDealerStockRequests_productVariant
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant;
  }

  @override
  void update(
      void Function(
              GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant
      build() => _build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant
      _build() {
    _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant
        _$result;
    try {
      _$result = _$v ??
          new _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant',
                  'G__typename'),
              name: name,
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant',
                  'id'),
              gallery: _gallery?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gallery';
        _gallery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
    extends GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.JsonObject? file;

  factory _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery(
          [void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder)?
              updates]) =>
      (new GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder()
            ..update(updates))
          ._build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery._(
      {required this.G__typename, required this.id, this.file})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery',
        'id');
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
      rebuild(
              void Function(
                      GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder
      toBuilder() =>
          new GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery &&
        G__typename == other.G__typename &&
        id == other.id &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('file', file))
        .toString();
  }
}

class GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder
    implements
        Builder<
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery,
            GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder> {
  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.JsonObject? _file;
  _i3.JsonObject? get file => _$this._file;
  set file(_i3.JsonObject? file) => _$this._file = file;

  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder() {
    GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
        ._initializeBuilder(this);
  }

  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery;
  }

  @override
  void update(
      void Function(
              GProductDealerStockRequestsData_productDealerStockRequests_productVariant_galleryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
      build() => _build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
      _build() {
    final _$result = _$v ??
        new _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant_gallery',
                'id'),
            file: file);
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsData
    extends GVehicleDealerStockRequestsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>?
      vehicleDealerStockRequests;

  factory _$GVehicleDealerStockRequestsData(
          [void Function(GVehicleDealerStockRequestsDataBuilder)? updates]) =>
      (new GVehicleDealerStockRequestsDataBuilder()..update(updates))._build();

  _$GVehicleDealerStockRequestsData._(
      {required this.G__typename, this.vehicleDealerStockRequests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleDealerStockRequestsData', 'G__typename');
  }

  @override
  GVehicleDealerStockRequestsData rebuild(
          void Function(GVehicleDealerStockRequestsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsDataBuilder toBuilder() =>
      new GVehicleDealerStockRequestsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealerStockRequestsData &&
        G__typename == other.G__typename &&
        vehicleDealerStockRequests == other.vehicleDealerStockRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleDealerStockRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealerStockRequestsData')
          ..add('G__typename', G__typename)
          ..add('vehicleDealerStockRequests', vehicleDealerStockRequests))
        .toString();
  }
}

class GVehicleDealerStockRequestsDataBuilder
    implements
        Builder<GVehicleDealerStockRequestsData,
            GVehicleDealerStockRequestsDataBuilder> {
  _$GVehicleDealerStockRequestsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>?
      _vehicleDealerStockRequests;
  ListBuilder<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>
      get vehicleDealerStockRequests =>
          _$this._vehicleDealerStockRequests ??= new ListBuilder<
              GVehicleDealerStockRequestsData_vehicleDealerStockRequests>();
  set vehicleDealerStockRequests(
          ListBuilder<
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests>?
              vehicleDealerStockRequests) =>
      _$this._vehicleDealerStockRequests = vehicleDealerStockRequests;

  GVehicleDealerStockRequestsDataBuilder() {
    GVehicleDealerStockRequestsData._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleDealerStockRequests = $v.vehicleDealerStockRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealerStockRequestsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealerStockRequestsData;
  }

  @override
  void update(void Function(GVehicleDealerStockRequestsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsData build() => _build();

  _$GVehicleDealerStockRequestsData _build() {
    _$GVehicleDealerStockRequestsData _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealerStockRequestsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehicleDealerStockRequestsData', 'G__typename'),
              vehicleDealerStockRequests: _vehicleDealerStockRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleDealerStockRequests';
        _vehicleDealerStockRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealerStockRequestsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests
    extends GVehicleDealerStockRequestsData_vehicleDealerStockRequests {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final bool? accepted;
  @override
  final String? type;
  @override
  final int? totalPrice;
  @override
  final int? stock;
  @override
  final GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor?
      vehicleColor;
  @override
  final GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant?
      vehicleVariant;

  factory _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests(
          [void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder)?
              updates]) =>
      (new GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests._(
      {required this.G__typename,
      required this.id,
      this.accepted,
      this.type,
      this.totalPrice,
      this.stock,
      this.vehicleColor,
      this.vehicleVariant})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests', 'id');
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests rebuild(
          void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder
      toBuilder() =>
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealerStockRequestsData_vehicleDealerStockRequests &&
        G__typename == other.G__typename &&
        id == other.id &&
        accepted == other.accepted &&
        type == other.type &&
        totalPrice == other.totalPrice &&
        stock == other.stock &&
        vehicleColor == other.vehicleColor &&
        vehicleVariant == other.vehicleVariant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, vehicleColor.hashCode);
    _$hash = $jc(_$hash, vehicleVariant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('accepted', accepted)
          ..add('type', type)
          ..add('totalPrice', totalPrice)
          ..add('stock', stock)
          ..add('vehicleColor', vehicleColor)
          ..add('vehicleVariant', vehicleVariant))
        .toString();
  }
}

class GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder
    implements
        Builder<GVehicleDealerStockRequestsData_vehicleDealerStockRequests,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder> {
  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder?
      _vehicleColor;
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder
      get vehicleColor => _$this._vehicleColor ??=
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder();
  set vehicleColor(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder?
              vehicleColor) =>
      _$this._vehicleColor = vehicleColor;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder?
      _vehicleVariant;
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder
      get vehicleVariant => _$this._vehicleVariant ??=
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder();
  set vehicleVariant(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder?
              vehicleVariant) =>
      _$this._vehicleVariant = vehicleVariant;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder() {
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests
        ._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _accepted = $v.accepted;
      _type = $v.type;
      _totalPrice = $v.totalPrice;
      _stock = $v.stock;
      _vehicleColor = $v.vehicleColor?.toBuilder();
      _vehicleVariant = $v.vehicleVariant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests;
  }

  @override
  void update(
      void Function(
              GVehicleDealerStockRequestsData_vehicleDealerStockRequestsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests build() =>
      _build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests _build() {
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests',
                  'id'),
              accepted: accepted,
              type: type,
              totalPrice: totalPrice,
              stock: stock,
              vehicleColor: _vehicleColor?.build(),
              vehicleVariant: _vehicleVariant?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleColor';
        _vehicleColor?.build();
        _$failedField = 'vehicleVariant';
        _vehicleVariant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
    extends GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final BuiltList<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery>?
      gallery;

  factory _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor(
          [void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder)?
              updates]) =>
      (new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor._(
      {required this.G__typename, required this.id, this.name, this.gallery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor',
        'id');
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor rebuild(
          void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder
      toBuilder() =>
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        gallery == other.gallery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gallery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('gallery', gallery))
        .toString();
  }
}

class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder
    implements
        Builder<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder> {
  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery>?
      _gallery;
  ListBuilder<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery>
      get gallery => _$this._gallery ??= new ListBuilder<
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery>();
  set gallery(
          ListBuilder<
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery>?
              gallery) =>
      _$this._gallery = gallery;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder() {
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
        ._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _gallery = $v.gallery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor;
  }

  @override
  void update(
      void Function(
              GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
      build() => _build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
      _build() {
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
        _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor',
                  'id'),
              name: name,
              gallery: _gallery?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gallery';
        _gallery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
    extends GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.JsonObject? file;

  factory _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery(
          [void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder)?
              updates]) =>
      (new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery._(
      {required this.G__typename, required this.id, this.file})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery',
        'id');
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
      rebuild(
              void Function(
                      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder
      toBuilder() =>
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery &&
        G__typename == other.G__typename &&
        id == other.id &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('file', file))
        .toString();
  }
}

class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder
    implements
        Builder<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder> {
  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.JsonObject? _file;
  _i3.JsonObject? get file => _$this._file;
  set file(_i3.JsonObject? file) => _$this._file = file;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder() {
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
        ._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery;
  }

  @override
  void update(
      void Function(
              GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_galleryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
      build() => _build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
      _build() {
    final _$result = _$v ??
        new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor_gallery',
                'id'),
            file: file);
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
    extends GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant(
          [void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder)?
              updates]) =>
      (new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant',
        'id');
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant rebuild(
          void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder
      toBuilder() =>
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant &&
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
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder
    implements
        Builder<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder> {
  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder() {
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
        ._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder
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
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant;
  }

  @override
  void update(
      void Function(
              GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
      build() => _build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
      _build() {
    final _$result = _$v ??
        new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant',
                'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GQueryData extends GQueryData {
  @override
  final String G__typename;
  @override
  final int? vehicleDealerStockRequestsCount;

  factory _$GQueryData([void Function(GQueryDataBuilder)? updates]) =>
      (new GQueryDataBuilder()..update(updates))._build();

  _$GQueryData._(
      {required this.G__typename, this.vehicleDealerStockRequestsCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GQueryData', 'G__typename');
  }

  @override
  GQueryData rebuild(void Function(GQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GQueryDataBuilder toBuilder() => new GQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GQueryData &&
        G__typename == other.G__typename &&
        vehicleDealerStockRequestsCount ==
            other.vehicleDealerStockRequestsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleDealerStockRequestsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GQueryData')
          ..add('G__typename', G__typename)
          ..add('vehicleDealerStockRequestsCount',
              vehicleDealerStockRequestsCount))
        .toString();
  }
}

class GQueryDataBuilder implements Builder<GQueryData, GQueryDataBuilder> {
  _$GQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _vehicleDealerStockRequestsCount;
  int? get vehicleDealerStockRequestsCount =>
      _$this._vehicleDealerStockRequestsCount;
  set vehicleDealerStockRequestsCount(int? vehicleDealerStockRequestsCount) =>
      _$this._vehicleDealerStockRequestsCount = vehicleDealerStockRequestsCount;

  GQueryDataBuilder() {
    GQueryData._initializeBuilder(this);
  }

  GQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleDealerStockRequestsCount = $v.vehicleDealerStockRequestsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GQueryData;
  }

  @override
  void update(void Function(GQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GQueryData build() => _build();

  _$GQueryData _build() {
    final _$result = _$v ??
        new _$GQueryData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GQueryData', 'G__typename'),
            vehicleDealerStockRequestsCount: vehicleDealerStockRequestsCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
