// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehicleOrdersData> _$gVehicleOrdersDataSerializer =
    new _$GVehicleOrdersDataSerializer();
Serializer<GVehicleOrdersData_vehicleOrders>
    _$gVehicleOrdersDataVehicleOrdersSerializer =
    new _$GVehicleOrdersData_vehicleOrdersSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_dealer>
    _$gVehicleOrdersDataVehicleOrdersDealerSerializer =
    new _$GVehicleOrdersData_vehicleOrders_dealerSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant>
    _$gVehicleOrdersDataVehicleOrdersDealerVehicleVariantSerializer =
    new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle>
    _$gVehicleOrdersDataVehicleOrdersDealerVehicleVariantVehicleSerializer =
    new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor>
    _$gVehicleOrdersDataVehicleOrdersDealerVehicleColorSerializer =
    new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColorSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>
    _$gVehicleOrdersDataVehicleOrdersDealerVehicleColorImagesSerializer =
    new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image>
    _$gVehicleOrdersDataVehicleOrdersDealerVehicleColorImagesImageSerializer =
    new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_order>
    _$gVehicleOrdersDataVehicleOrdersOrderSerializer =
    new _$GVehicleOrdersData_vehicleOrders_orderSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_order_user>
    _$gVehicleOrdersDataVehicleOrdersOrderUserSerializer =
    new _$GVehicleOrdersData_vehicleOrders_order_userSerializer();
Serializer<GVehicleOrdersData_vehicleOrders_order_user_addresses>
    _$gVehicleOrdersDataVehicleOrdersOrderUserAddressesSerializer =
    new _$GVehicleOrdersData_vehicleOrders_order_user_addressesSerializer();
Serializer<GTestDriveOrdersData> _$gTestDriveOrdersDataSerializer =
    new _$GTestDriveOrdersDataSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders>
    _$gTestDriveOrdersDataTestDriveOrdersSerializer =
    new _$GTestDriveOrdersData_testDriveOrdersSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_dealer>
    _$gTestDriveOrdersDataTestDriveOrdersDealerSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_dealerSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant>
    _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleVariantSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle>
    _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleVariantVehicleSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor>
    _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleColorSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>
    _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleColorImagesSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesSerializer();
Serializer<
        GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image>
    _$gTestDriveOrdersDataTestDriveOrdersDealerVehicleColorImagesImageSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_order>
    _$gTestDriveOrdersDataTestDriveOrdersOrderSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_orderSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_order_user>
    _$gTestDriveOrdersDataTestDriveOrdersOrderUserSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_order_userSerializer();
Serializer<GTestDriveOrdersData_testDriveOrders_order_user_addresses>
    _$gTestDriveOrdersDataTestDriveOrdersOrderUserAddressesSerializer =
    new _$GTestDriveOrdersData_testDriveOrders_order_user_addressesSerializer();

class _$GVehicleOrdersDataSerializer
    implements StructuredSerializer<GVehicleOrdersData> {
  @override
  final Iterable<Type> types = const [GVehicleOrdersData, _$GVehicleOrdersData];
  @override
  final String wireName = 'GVehicleOrdersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleOrdersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleOrders;
    if (value != null) {
      result
        ..add('vehicleOrders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GVehicleOrdersData_vehicleOrders)])));
    }
    return result;
  }

  @override
  GVehicleOrdersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleOrdersDataBuilder();

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
        case 'vehicleOrders':
          result.vehicleOrders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GVehicleOrdersData_vehicleOrders)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrdersSerializer
    implements StructuredSerializer<GVehicleOrdersData_vehicleOrders> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders,
    _$GVehicleOrdersData_vehicleOrders
  ];
  @override
  final String wireName = 'GVehicleOrdersData_vehicleOrders';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleOrdersData_vehicleOrders object,
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
    value = object.dealer;
    if (value != null) {
      result
        ..add('dealer')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVehicleOrdersData_vehicleOrders_dealer)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVehicleOrdersData_vehicleOrders_order)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    return result;
  }

  @override
  GVehicleOrdersData_vehicleOrders deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleOrdersData_vehicleOrdersBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dealer':
          result.dealer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GVehicleOrdersData_vehicleOrders_dealer))!
              as GVehicleOrdersData_vehicleOrders_dealer);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order':
          result.order.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GVehicleOrdersData_vehicleOrders_order))!
              as GVehicleOrdersData_vehicleOrders_order);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealerSerializer
    implements StructuredSerializer<GVehicleOrdersData_vehicleOrders_dealer> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_dealer,
    _$GVehicleOrdersData_vehicleOrders_dealer
  ];
  @override
  final String wireName = 'GVehicleOrdersData_vehicleOrders_dealer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleOrdersData_vehicleOrders_dealer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleVariant;
    if (value != null) {
      result
        ..add('vehicleVariant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant)));
    }
    value = object.vehicleColor;
    if (value != null) {
      result
        ..add('vehicleColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleOrdersData_vehicleOrders_dealer_vehicleColor)));
    }
    return result;
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleOrdersData_vehicleOrders_dealerBuilder();

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
        case 'vehicleVariant':
          result.vehicleVariant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant))!
              as GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant);
          break;
        case 'vehicleColor':
          result.vehicleColor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor))!
              as GVehicleOrdersData_vehicleOrders_dealer_vehicleColor);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantSerializer
    implements
        StructuredSerializer<
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant,
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant
  ];
  @override
  final String wireName =
      'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicle;
    if (value != null) {
      result
        ..add('vehicle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle)));
    }
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
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder();

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
        case 'vehicle':
          result.vehicle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle))!
              as GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle);
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

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleSerializer
    implements
        StructuredSerializer<
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle,
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
  ];
  @override
  final String wireName =
      'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColorSerializer
    implements
        StructuredSerializer<
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor,
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor
  ];
  @override
  final String wireName =
      'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images)
            ])));
    }
    return result;
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesSerializer
    implements
        StructuredSerializer<
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images,
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images
  ];
  @override
  final String wireName =
      'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images object,
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
                GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image)));
    }
    return result;
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder();

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
                      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image))!
              as GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageSerializer
    implements
        StructuredSerializer<
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image,
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
  ];
  @override
  final String wireName =
      'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image object,
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
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder();

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

class _$GVehicleOrdersData_vehicleOrders_orderSerializer
    implements StructuredSerializer<GVehicleOrdersData_vehicleOrders_order> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_order,
    _$GVehicleOrdersData_vehicleOrders_order
  ];
  @override
  final String wireName = 'GVehicleOrdersData_vehicleOrders_order';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleOrdersData_vehicleOrders_order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVehicleOrdersData_vehicleOrders_order_user)));
    }
    return result;
  }

  @override
  GVehicleOrdersData_vehicleOrders_order deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleOrdersData_vehicleOrders_orderBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleOrdersData_vehicleOrders_order_user))!
              as GVehicleOrdersData_vehicleOrders_order_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_order_userSerializer
    implements
        StructuredSerializer<GVehicleOrdersData_vehicleOrders_order_user> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_order_user,
    _$GVehicleOrdersData_vehicleOrders_order_user
  ];
  @override
  final String wireName = 'GVehicleOrdersData_vehicleOrders_order_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_order_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addresses;
    if (value != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GVehicleOrdersData_vehicleOrders_order_user_addresses)
            ])));
    }
    return result;
  }

  @override
  GVehicleOrdersData_vehicleOrders_order_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleOrdersData_vehicleOrders_order_userBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GVehicleOrdersData_vehicleOrders_order_user_addresses)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersData_vehicleOrders_order_user_addressesSerializer
    implements
        StructuredSerializer<
            GVehicleOrdersData_vehicleOrders_order_user_addresses> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersData_vehicleOrders_order_user_addresses,
    _$GVehicleOrdersData_vehicleOrders_order_user_addresses
  ];
  @override
  final String wireName =
      'GVehicleOrdersData_vehicleOrders_order_user_addresses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleOrdersData_vehicleOrders_order_user_addresses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinCode;
    if (value != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.town;
    if (value != null) {
      result
        ..add('town')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GVehicleOrdersData_vehicleOrders_order_user_addresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder();

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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GTestDriveOrdersDataSerializer
    implements StructuredSerializer<GTestDriveOrdersData> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData,
    _$GTestDriveOrdersData
  ];
  @override
  final String wireName = 'GTestDriveOrdersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTestDriveOrdersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.testDriveOrders;
    if (value != null) {
      result
        ..add('testDriveOrders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GTestDriveOrdersData_testDriveOrders)])));
    }
    return result;
  }

  @override
  GTestDriveOrdersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveOrdersDataBuilder();

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
        case 'testDriveOrders':
          result.testDriveOrders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GTestDriveOrdersData_testDriveOrders)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrdersSerializer
    implements StructuredSerializer<GTestDriveOrdersData_testDriveOrders> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders,
    _$GTestDriveOrdersData_testDriveOrders
  ];
  @override
  final String wireName = 'GTestDriveOrdersData_testDriveOrders';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTestDriveOrdersData_testDriveOrders object,
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
    value = object.dealer;
    if (value != null) {
      result
        ..add('dealer')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GTestDriveOrdersData_testDriveOrders_dealer)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GTestDriveOrdersData_testDriveOrders_order)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    return result;
  }

  @override
  GTestDriveOrdersData_testDriveOrders deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveOrdersData_testDriveOrdersBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dealer':
          result.dealer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GTestDriveOrdersData_testDriveOrders_dealer))!
              as GTestDriveOrdersData_testDriveOrders_dealer);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order':
          result.order.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GTestDriveOrdersData_testDriveOrders_order))!
              as GTestDriveOrdersData_testDriveOrders_order);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealerSerializer
    implements
        StructuredSerializer<GTestDriveOrdersData_testDriveOrders_dealer> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_dealer,
    _$GTestDriveOrdersData_testDriveOrders_dealer
  ];
  @override
  final String wireName = 'GTestDriveOrdersData_testDriveOrders_dealer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_dealer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleVariant;
    if (value != null) {
      result
        ..add('vehicleVariant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant)));
    }
    value = object.vehicleColor;
    if (value != null) {
      result
        ..add('vehicleColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor)));
    }
    return result;
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveOrdersData_testDriveOrders_dealerBuilder();

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
        case 'vehicleVariant':
          result.vehicleVariant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant))!
              as GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant);
          break;
        case 'vehicleColor':
          result.vehicleColor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor))!
              as GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantSerializer
    implements
        StructuredSerializer<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant,
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant
  ];
  @override
  final String wireName =
      'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicle;
    if (value != null) {
      result
        ..add('vehicle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle)));
    }
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
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder();

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
        case 'vehicle':
          result.vehicle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle))!
              as GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle);
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

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleSerializer
    implements
        StructuredSerializer<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle,
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
  ];
  @override
  final String wireName =
      'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorSerializer
    implements
        StructuredSerializer<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor,
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor
  ];
  @override
  final String wireName =
      'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images)
            ])));
    }
    return result;
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesSerializer
    implements
        StructuredSerializer<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images,
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
  ];
  @override
  final String wireName =
      'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images object,
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
                GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image)));
    }
    return result;
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder();

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
                      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image))!
              as GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageSerializer
    implements
        StructuredSerializer<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image,
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
  ];
  @override
  final String wireName =
      'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
          object,
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
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder();

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

class _$GTestDriveOrdersData_testDriveOrders_orderSerializer
    implements
        StructuredSerializer<GTestDriveOrdersData_testDriveOrders_order> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_order,
    _$GTestDriveOrdersData_testDriveOrders_order
  ];
  @override
  final String wireName = 'GTestDriveOrdersData_testDriveOrders_order';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GTestDriveOrdersData_testDriveOrders_order_user)));
    }
    return result;
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveOrdersData_testDriveOrders_orderBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GTestDriveOrdersData_testDriveOrders_order_user))!
              as GTestDriveOrdersData_testDriveOrders_order_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_order_userSerializer
    implements
        StructuredSerializer<GTestDriveOrdersData_testDriveOrders_order_user> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_order_user,
    _$GTestDriveOrdersData_testDriveOrders_order_user
  ];
  @override
  final String wireName = 'GTestDriveOrdersData_testDriveOrders_order_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_order_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addresses;
    if (value != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GTestDriveOrdersData_testDriveOrders_order_user_addresses)
            ])));
    }
    return result;
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveOrdersData_testDriveOrders_order_userBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GTestDriveOrdersData_testDriveOrders_order_user_addresses)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersData_testDriveOrders_order_user_addressesSerializer
    implements
        StructuredSerializer<
            GTestDriveOrdersData_testDriveOrders_order_user_addresses> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersData_testDriveOrders_order_user_addresses,
    _$GTestDriveOrdersData_testDriveOrders_order_user_addresses
  ];
  @override
  final String wireName =
      'GTestDriveOrdersData_testDriveOrders_order_user_addresses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GTestDriveOrdersData_testDriveOrders_order_user_addresses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinCode;
    if (value != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.town;
    if (value != null) {
      result
        ..add('town')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GTestDriveOrdersData_testDriveOrders_order_user_addresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder();

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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GVehicleOrdersData extends GVehicleOrdersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GVehicleOrdersData_vehicleOrders>? vehicleOrders;

  factory _$GVehicleOrdersData(
          [void Function(GVehicleOrdersDataBuilder)? updates]) =>
      (new GVehicleOrdersDataBuilder()..update(updates))._build();

  _$GVehicleOrdersData._({required this.G__typename, this.vehicleOrders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleOrdersData', 'G__typename');
  }

  @override
  GVehicleOrdersData rebuild(
          void Function(GVehicleOrdersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersDataBuilder toBuilder() =>
      new GVehicleOrdersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData &&
        G__typename == other.G__typename &&
        vehicleOrders == other.vehicleOrders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleOrders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleOrdersData')
          ..add('G__typename', G__typename)
          ..add('vehicleOrders', vehicleOrders))
        .toString();
  }
}

class GVehicleOrdersDataBuilder
    implements Builder<GVehicleOrdersData, GVehicleOrdersDataBuilder> {
  _$GVehicleOrdersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GVehicleOrdersData_vehicleOrders>? _vehicleOrders;
  ListBuilder<GVehicleOrdersData_vehicleOrders> get vehicleOrders =>
      _$this._vehicleOrders ??=
          new ListBuilder<GVehicleOrdersData_vehicleOrders>();
  set vehicleOrders(
          ListBuilder<GVehicleOrdersData_vehicleOrders>? vehicleOrders) =>
      _$this._vehicleOrders = vehicleOrders;

  GVehicleOrdersDataBuilder() {
    GVehicleOrdersData._initializeBuilder(this);
  }

  GVehicleOrdersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleOrders = $v.vehicleOrders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData;
  }

  @override
  void update(void Function(GVehicleOrdersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData build() => _build();

  _$GVehicleOrdersData _build() {
    _$GVehicleOrdersData _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVehicleOrdersData', 'G__typename'),
              vehicleOrders: _vehicleOrders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleOrders';
        _vehicleOrders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders
    extends GVehicleOrdersData_vehicleOrders {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int? price;
  @override
  final GVehicleOrdersData_vehicleOrders_dealer? dealer;
  @override
  final String? status;
  @override
  final GVehicleOrdersData_vehicleOrders_order? order;
  @override
  final _i2.GDateTime? createdAt;

  factory _$GVehicleOrdersData_vehicleOrders(
          [void Function(GVehicleOrdersData_vehicleOrdersBuilder)? updates]) =>
      (new GVehicleOrdersData_vehicleOrdersBuilder()..update(updates))._build();

  _$GVehicleOrdersData_vehicleOrders._(
      {required this.G__typename,
      required this.id,
      this.price,
      this.dealer,
      this.status,
      this.order,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleOrdersData_vehicleOrders', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleOrdersData_vehicleOrders', 'id');
  }

  @override
  GVehicleOrdersData_vehicleOrders rebuild(
          void Function(GVehicleOrdersData_vehicleOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrdersBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders &&
        G__typename == other.G__typename &&
        id == other.id &&
        price == other.price &&
        dealer == other.dealer &&
        status == other.status &&
        order == other.order &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, dealer.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleOrdersData_vehicleOrders')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('price', price)
          ..add('dealer', dealer)
          ..add('status', status)
          ..add('order', order)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrdersBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders,
            GVehicleOrdersData_vehicleOrdersBuilder> {
  _$GVehicleOrdersData_vehicleOrders? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  GVehicleOrdersData_vehicleOrders_dealerBuilder? _dealer;
  GVehicleOrdersData_vehicleOrders_dealerBuilder get dealer =>
      _$this._dealer ??= new GVehicleOrdersData_vehicleOrders_dealerBuilder();
  set dealer(GVehicleOrdersData_vehicleOrders_dealerBuilder? dealer) =>
      _$this._dealer = dealer;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GVehicleOrdersData_vehicleOrders_orderBuilder? _order;
  GVehicleOrdersData_vehicleOrders_orderBuilder get order =>
      _$this._order ??= new GVehicleOrdersData_vehicleOrders_orderBuilder();
  set order(GVehicleOrdersData_vehicleOrders_orderBuilder? order) =>
      _$this._order = order;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GVehicleOrdersData_vehicleOrdersBuilder() {
    GVehicleOrdersData_vehicleOrders._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrdersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _price = $v.price;
      _dealer = $v.dealer?.toBuilder();
      _status = $v.status;
      _order = $v.order?.toBuilder();
      _createdAt = $v.createdAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders;
  }

  @override
  void update(void Function(GVehicleOrdersData_vehicleOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders build() => _build();

  _$GVehicleOrdersData_vehicleOrders _build() {
    _$GVehicleOrdersData_vehicleOrders _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehicleOrdersData_vehicleOrders', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehicleOrdersData_vehicleOrders', 'id'),
              price: price,
              dealer: _dealer?.build(),
              status: status,
              order: _order?.build(),
              createdAt: _createdAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dealer';
        _dealer?.build();

        _$failedField = 'order';
        _order?.build();
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData_vehicleOrders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer
    extends GVehicleOrdersData_vehicleOrders_dealer {
  @override
  final String G__typename;
  @override
  final GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant? vehicleVariant;
  @override
  final GVehicleOrdersData_vehicleOrders_dealer_vehicleColor? vehicleColor;

  factory _$GVehicleOrdersData_vehicleOrders_dealer(
          [void Function(GVehicleOrdersData_vehicleOrders_dealerBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_dealerBuilder()..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_dealer._(
      {required this.G__typename, this.vehicleVariant, this.vehicleColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleOrdersData_vehicleOrders_dealer', 'G__typename');
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer rebuild(
          void Function(GVehicleOrdersData_vehicleOrders_dealerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_dealerBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrders_dealerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders_dealer &&
        G__typename == other.G__typename &&
        vehicleVariant == other.vehicleVariant &&
        vehicleColor == other.vehicleColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleVariant.hashCode);
    _$hash = $jc(_$hash, vehicleColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_dealer')
          ..add('G__typename', G__typename)
          ..add('vehicleVariant', vehicleVariant)
          ..add('vehicleColor', vehicleColor))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_dealerBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_dealer,
            GVehicleOrdersData_vehicleOrders_dealerBuilder> {
  _$GVehicleOrdersData_vehicleOrders_dealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder?
      _vehicleVariant;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder
      get vehicleVariant => _$this._vehicleVariant ??=
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder();
  set vehicleVariant(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder?
              vehicleVariant) =>
      _$this._vehicleVariant = vehicleVariant;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder? _vehicleColor;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder
      get vehicleColor => _$this._vehicleColor ??=
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder();
  set vehicleColor(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder?
              vehicleColor) =>
      _$this._vehicleColor = vehicleColor;

  GVehicleOrdersData_vehicleOrders_dealerBuilder() {
    GVehicleOrdersData_vehicleOrders_dealer._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrders_dealerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleVariant = $v.vehicleVariant?.toBuilder();
      _vehicleColor = $v.vehicleColor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders_dealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders_dealer;
  }

  @override
  void update(
      void Function(GVehicleOrdersData_vehicleOrders_dealerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer build() => _build();

  _$GVehicleOrdersData_vehicleOrders_dealer _build() {
    _$GVehicleOrdersData_vehicleOrders_dealer _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders_dealer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehicleOrdersData_vehicleOrders_dealer', 'G__typename'),
              vehicleVariant: _vehicleVariant?.build(),
              vehicleColor: _vehicleColor?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleVariant';
        _vehicleVariant?.build();
        _$failedField = 'vehicleColor';
        _vehicleColor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData_vehicleOrders_dealer',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant
    extends GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant {
  @override
  final String G__typename;
  @override
  final GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle? vehicle;
  @override
  final String? name;

  factory _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant(
          [void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant._(
      {required this.G__typename, this.vehicle, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant',
        'G__typename');
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant rebuild(
          void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant &&
        G__typename == other.G__typename &&
        vehicle == other.vehicle &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicle.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant')
          ..add('G__typename', G__typename)
          ..add('vehicle', vehicle)
          ..add('name', name))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder> {
  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder?
      _vehicle;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder
      get vehicle => _$this._vehicle ??=
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder();
  set vehicle(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder?
              vehicle) =>
      _$this._vehicle = vehicle;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder() {
    GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant._initializeBuilder(
        this);
  }

  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicle = $v.vehicle?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant;
  }

  @override
  void update(
      void Function(
              GVehicleOrdersData_vehicleOrders_dealer_vehicleVariantBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant build() => _build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant _build() {
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant',
                  'G__typename'),
              vehicle: _vehicle?.build(),
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicle';
        _vehicle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
    extends GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle {
  @override
  final String G__typename;
  @override
  final String? name;

  factory _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle(
          [void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle._(
      {required this.G__typename, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle',
        'G__typename');
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle rebuild(
          void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder
      toBuilder() =>
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder> {
  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder() {
    GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle
        ._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle;
  }

  @override
  void update(
      void Function(
              GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle build() =>
      _build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle _build() {
    final _$result = _$v ??
        new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleOrdersData_vehicleOrders_dealer_vehicleVariant_vehicle',
                'G__typename'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor
    extends GVehicleOrdersData_vehicleOrders_dealer_vehicleColor {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final BuiltList<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>?
      images;

  factory _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor(
          [void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor._(
      {required this.G__typename, this.name, this.code, this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor', 'G__typename');
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor rebuild(
          void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders_dealer_vehicleColor &&
        G__typename == other.G__typename &&
        name == other.name &&
        code == other.code &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('code', code)
          ..add('images', images))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder> {
  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>?
      _images;
  ListBuilder<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>
      get images => _$this._images ??= new ListBuilder<
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>();
  set images(
          ListBuilder<
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images>?
              images) =>
      _$this._images = images;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder() {
    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor._initializeBuilder(
        this);
  }

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _code = $v.code;
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders_dealer_vehicleColor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor;
  }

  @override
  void update(
      void Function(
              GVehicleOrdersData_vehicleOrders_dealer_vehicleColorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor build() => _build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor _build() {
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor',
                  'G__typename'),
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
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images
    extends GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image?
      image;

  factory _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images(
          [void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images._(
      {required this.G__typename, required this.id, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images', 'id');
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images rebuild(
          void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder
      toBuilder() =>
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images &&
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
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder> {
  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder?
      _image;
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder
      get image => _$this._image ??=
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder();
  set image(
          GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder?
              image) =>
      _$this._image = image;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder() {
    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images
        ._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder
      get _$this {
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
  void replace(
      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images;
  }

  @override
  void update(
      void Function(
              GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images build() =>
      _build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images _build() {
    _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images',
                  'id'),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
    extends GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image(
          [void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image',
        'id');
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image rebuild(
          void Function(
                  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder
      toBuilder() =>
          new GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image &&
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
            r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder
    implements
        Builder<
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image,
            GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder> {
  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder() {
    GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
        ._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image;
  }

  @override
  void update(
      void Function(
              GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image build() =>
      _build();

  _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image _build() {
    final _$result = _$v ??
        new _$GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GVehicleOrdersData_vehicleOrders_dealer_vehicleColor_images_image',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_order
    extends GVehicleOrdersData_vehicleOrders_order {
  @override
  final String G__typename;
  @override
  final GVehicleOrdersData_vehicleOrders_order_user? user;

  factory _$GVehicleOrdersData_vehicleOrders_order(
          [void Function(GVehicleOrdersData_vehicleOrders_orderBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_orderBuilder()..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_order._(
      {required this.G__typename, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVehicleOrdersData_vehicleOrders_order', 'G__typename');
  }

  @override
  GVehicleOrdersData_vehicleOrders_order rebuild(
          void Function(GVehicleOrdersData_vehicleOrders_orderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_orderBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrders_orderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders_order &&
        G__typename == other.G__typename &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_order')
          ..add('G__typename', G__typename)
          ..add('user', user))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_orderBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_order,
            GVehicleOrdersData_vehicleOrders_orderBuilder> {
  _$GVehicleOrdersData_vehicleOrders_order? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVehicleOrdersData_vehicleOrders_order_userBuilder? _user;
  GVehicleOrdersData_vehicleOrders_order_userBuilder get user =>
      _$this._user ??= new GVehicleOrdersData_vehicleOrders_order_userBuilder();
  set user(GVehicleOrdersData_vehicleOrders_order_userBuilder? user) =>
      _$this._user = user;

  GVehicleOrdersData_vehicleOrders_orderBuilder() {
    GVehicleOrdersData_vehicleOrders_order._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrders_orderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders_order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders_order;
  }

  @override
  void update(
      void Function(GVehicleOrdersData_vehicleOrders_orderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_order build() => _build();

  _$GVehicleOrdersData_vehicleOrders_order _build() {
    _$GVehicleOrdersData_vehicleOrders_order _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders_order._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GVehicleOrdersData_vehicleOrders_order', 'G__typename'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData_vehicleOrders_order',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_order_user
    extends GVehicleOrdersData_vehicleOrders_order_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final BuiltList<GVehicleOrdersData_vehicleOrders_order_user_addresses>?
      addresses;

  factory _$GVehicleOrdersData_vehicleOrders_order_user(
          [void Function(GVehicleOrdersData_vehicleOrders_order_userBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_order_userBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_order_user._(
      {required this.G__typename,
      required this.id,
      this.email,
      this.name,
      this.phoneNumber,
      this.addresses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVehicleOrdersData_vehicleOrders_order_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleOrdersData_vehicleOrders_order_user', 'id');
  }

  @override
  GVehicleOrdersData_vehicleOrders_order_user rebuild(
          void Function(GVehicleOrdersData_vehicleOrders_order_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_order_userBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrders_order_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders_order_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        addresses == other.addresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_order_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('addresses', addresses))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_order_userBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_order_user,
            GVehicleOrdersData_vehicleOrders_order_userBuilder> {
  _$GVehicleOrdersData_vehicleOrders_order_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<GVehicleOrdersData_vehicleOrders_order_user_addresses>?
      _addresses;
  ListBuilder<GVehicleOrdersData_vehicleOrders_order_user_addresses>
      get addresses => _$this._addresses ??= new ListBuilder<
          GVehicleOrdersData_vehicleOrders_order_user_addresses>();
  set addresses(
          ListBuilder<GVehicleOrdersData_vehicleOrders_order_user_addresses>?
              addresses) =>
      _$this._addresses = addresses;

  GVehicleOrdersData_vehicleOrders_order_userBuilder() {
    GVehicleOrdersData_vehicleOrders_order_user._initializeBuilder(this);
  }

  GVehicleOrdersData_vehicleOrders_order_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _addresses = $v.addresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders_order_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders_order_user;
  }

  @override
  void update(
      void Function(GVehicleOrdersData_vehicleOrders_order_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_order_user build() => _build();

  _$GVehicleOrdersData_vehicleOrders_order_user _build() {
    _$GVehicleOrdersData_vehicleOrders_order_user _$result;
    try {
      _$result = _$v ??
          new _$GVehicleOrdersData_vehicleOrders_order_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GVehicleOrdersData_vehicleOrders_order_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GVehicleOrdersData_vehicleOrders_order_user', 'id'),
              email: email,
              name: name,
              phoneNumber: phoneNumber,
              addresses: _addresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersData_vehicleOrders_order_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersData_vehicleOrders_order_user_addresses
    extends GVehicleOrdersData_vehicleOrders_order_user_addresses {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? phoneNumber;
  @override
  final String? pinCode;
  @override
  final String? state;
  @override
  final String? town;
  @override
  final String? address;
  @override
  final String? district;
  @override
  final String? name;

  factory _$GVehicleOrdersData_vehicleOrders_order_user_addresses(
          [void Function(
                  GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder)?
              updates]) =>
      (new GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder()
            ..update(updates))
          ._build();

  _$GVehicleOrdersData_vehicleOrders_order_user_addresses._(
      {required this.G__typename,
      required this.id,
      this.phoneNumber,
      this.pinCode,
      this.state,
      this.town,
      this.address,
      this.district,
      this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleOrdersData_vehicleOrders_order_user_addresses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GVehicleOrdersData_vehicleOrders_order_user_addresses', 'id');
  }

  @override
  GVehicleOrdersData_vehicleOrders_order_user_addresses rebuild(
          void Function(
                  GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder toBuilder() =>
      new GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersData_vehicleOrders_order_user_addresses &&
        G__typename == other.G__typename &&
        id == other.id &&
        phoneNumber == other.phoneNumber &&
        pinCode == other.pinCode &&
        state == other.state &&
        town == other.town &&
        address == other.address &&
        district == other.district &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, pinCode.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, town.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, district.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVehicleOrdersData_vehicleOrders_order_user_addresses')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('phoneNumber', phoneNumber)
          ..add('pinCode', pinCode)
          ..add('state', state)
          ..add('town', town)
          ..add('address', address)
          ..add('district', district)
          ..add('name', name))
        .toString();
  }
}

class GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder
    implements
        Builder<GVehicleOrdersData_vehicleOrders_order_user_addresses,
            GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder> {
  _$GVehicleOrdersData_vehicleOrders_order_user_addresses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _town;
  String? get town => _$this._town;
  set town(String? town) => _$this._town = town;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder() {
    GVehicleOrdersData_vehicleOrders_order_user_addresses._initializeBuilder(
        this);
  }

  GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _phoneNumber = $v.phoneNumber;
      _pinCode = $v.pinCode;
      _state = $v.state;
      _town = $v.town;
      _address = $v.address;
      _district = $v.district;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersData_vehicleOrders_order_user_addresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleOrdersData_vehicleOrders_order_user_addresses;
  }

  @override
  void update(
      void Function(
              GVehicleOrdersData_vehicleOrders_order_user_addressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersData_vehicleOrders_order_user_addresses build() => _build();

  _$GVehicleOrdersData_vehicleOrders_order_user_addresses _build() {
    final _$result = _$v ??
        new _$GVehicleOrdersData_vehicleOrders_order_user_addresses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleOrdersData_vehicleOrders_order_user_addresses',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GVehicleOrdersData_vehicleOrders_order_user_addresses', 'id'),
            phoneNumber: phoneNumber,
            pinCode: pinCode,
            state: state,
            town: town,
            address: address,
            district: district,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData extends GTestDriveOrdersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GTestDriveOrdersData_testDriveOrders>? testDriveOrders;

  factory _$GTestDriveOrdersData(
          [void Function(GTestDriveOrdersDataBuilder)? updates]) =>
      (new GTestDriveOrdersDataBuilder()..update(updates))._build();

  _$GTestDriveOrdersData._({required this.G__typename, this.testDriveOrders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTestDriveOrdersData', 'G__typename');
  }

  @override
  GTestDriveOrdersData rebuild(
          void Function(GTestDriveOrdersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersDataBuilder toBuilder() =>
      new GTestDriveOrdersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData &&
        G__typename == other.G__typename &&
        testDriveOrders == other.testDriveOrders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, testDriveOrders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTestDriveOrdersData')
          ..add('G__typename', G__typename)
          ..add('testDriveOrders', testDriveOrders))
        .toString();
  }
}

class GTestDriveOrdersDataBuilder
    implements Builder<GTestDriveOrdersData, GTestDriveOrdersDataBuilder> {
  _$GTestDriveOrdersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GTestDriveOrdersData_testDriveOrders>? _testDriveOrders;
  ListBuilder<GTestDriveOrdersData_testDriveOrders> get testDriveOrders =>
      _$this._testDriveOrders ??=
          new ListBuilder<GTestDriveOrdersData_testDriveOrders>();
  set testDriveOrders(
          ListBuilder<GTestDriveOrdersData_testDriveOrders>? testDriveOrders) =>
      _$this._testDriveOrders = testDriveOrders;

  GTestDriveOrdersDataBuilder() {
    GTestDriveOrdersData._initializeBuilder(this);
  }

  GTestDriveOrdersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _testDriveOrders = $v.testDriveOrders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData;
  }

  @override
  void update(void Function(GTestDriveOrdersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData build() => _build();

  _$GTestDriveOrdersData _build() {
    _$GTestDriveOrdersData _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GTestDriveOrdersData', 'G__typename'),
              testDriveOrders: _testDriveOrders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'testDriveOrders';
        _testDriveOrders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders
    extends GTestDriveOrdersData_testDriveOrders {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int? price;
  @override
  final GTestDriveOrdersData_testDriveOrders_dealer? dealer;
  @override
  final String? status;
  @override
  final GTestDriveOrdersData_testDriveOrders_order? order;
  @override
  final _i2.GDateTime? createdAt;

  factory _$GTestDriveOrdersData_testDriveOrders(
          [void Function(GTestDriveOrdersData_testDriveOrdersBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrdersBuilder()..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders._(
      {required this.G__typename,
      required this.id,
      this.price,
      this.dealer,
      this.status,
      this.order,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTestDriveOrdersData_testDriveOrders', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GTestDriveOrdersData_testDriveOrders', 'id');
  }

  @override
  GTestDriveOrdersData_testDriveOrders rebuild(
          void Function(GTestDriveOrdersData_testDriveOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrdersBuilder toBuilder() =>
      new GTestDriveOrdersData_testDriveOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData_testDriveOrders &&
        G__typename == other.G__typename &&
        id == other.id &&
        price == other.price &&
        dealer == other.dealer &&
        status == other.status &&
        order == other.order &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, dealer.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTestDriveOrdersData_testDriveOrders')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('price', price)
          ..add('dealer', dealer)
          ..add('status', status)
          ..add('order', order)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrdersBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders,
            GTestDriveOrdersData_testDriveOrdersBuilder> {
  _$GTestDriveOrdersData_testDriveOrders? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  GTestDriveOrdersData_testDriveOrders_dealerBuilder? _dealer;
  GTestDriveOrdersData_testDriveOrders_dealerBuilder get dealer =>
      _$this._dealer ??=
          new GTestDriveOrdersData_testDriveOrders_dealerBuilder();
  set dealer(GTestDriveOrdersData_testDriveOrders_dealerBuilder? dealer) =>
      _$this._dealer = dealer;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GTestDriveOrdersData_testDriveOrders_orderBuilder? _order;
  GTestDriveOrdersData_testDriveOrders_orderBuilder get order =>
      _$this._order ??= new GTestDriveOrdersData_testDriveOrders_orderBuilder();
  set order(GTestDriveOrdersData_testDriveOrders_orderBuilder? order) =>
      _$this._order = order;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GTestDriveOrdersData_testDriveOrdersBuilder() {
    GTestDriveOrdersData_testDriveOrders._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrdersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _price = $v.price;
      _dealer = $v.dealer?.toBuilder();
      _status = $v.status;
      _order = $v.order?.toBuilder();
      _createdAt = $v.createdAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersData_testDriveOrders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders;
  }

  @override
  void update(
      void Function(GTestDriveOrdersData_testDriveOrdersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders build() => _build();

  _$GTestDriveOrdersData_testDriveOrders _build() {
    _$GTestDriveOrdersData_testDriveOrders _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GTestDriveOrdersData_testDriveOrders', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GTestDriveOrdersData_testDriveOrders', 'id'),
              price: price,
              dealer: _dealer?.build(),
              status: status,
              order: _order?.build(),
              createdAt: _createdAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dealer';
        _dealer?.build();

        _$failedField = 'order';
        _order?.build();
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData_testDriveOrders',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer
    extends GTestDriveOrdersData_testDriveOrders_dealer {
  @override
  final String G__typename;
  @override
  final GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant?
      vehicleVariant;
  @override
  final GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor? vehicleColor;

  factory _$GTestDriveOrdersData_testDriveOrders_dealer(
          [void Function(GTestDriveOrdersData_testDriveOrders_dealerBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_dealerBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_dealer._(
      {required this.G__typename, this.vehicleVariant, this.vehicleColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GTestDriveOrdersData_testDriveOrders_dealer', 'G__typename');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer rebuild(
          void Function(GTestDriveOrdersData_testDriveOrders_dealerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_dealerBuilder toBuilder() =>
      new GTestDriveOrdersData_testDriveOrders_dealerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData_testDriveOrders_dealer &&
        G__typename == other.G__typename &&
        vehicleVariant == other.vehicleVariant &&
        vehicleColor == other.vehicleColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleVariant.hashCode);
    _$hash = $jc(_$hash, vehicleColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_dealer')
          ..add('G__typename', G__typename)
          ..add('vehicleVariant', vehicleVariant)
          ..add('vehicleColor', vehicleColor))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_dealerBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_dealer,
            GTestDriveOrdersData_testDriveOrders_dealerBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_dealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder?
      _vehicleVariant;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder
      get vehicleVariant => _$this._vehicleVariant ??=
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder();
  set vehicleVariant(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder?
              vehicleVariant) =>
      _$this._vehicleVariant = vehicleVariant;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder?
      _vehicleColor;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder
      get vehicleColor => _$this._vehicleColor ??=
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder();
  set vehicleColor(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder?
              vehicleColor) =>
      _$this._vehicleColor = vehicleColor;

  GTestDriveOrdersData_testDriveOrders_dealerBuilder() {
    GTestDriveOrdersData_testDriveOrders_dealer._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_dealerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleVariant = $v.vehicleVariant?.toBuilder();
      _vehicleColor = $v.vehicleColor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersData_testDriveOrders_dealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders_dealer;
  }

  @override
  void update(
      void Function(GTestDriveOrdersData_testDriveOrders_dealerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer build() => _build();

  _$GTestDriveOrdersData_testDriveOrders_dealer _build() {
    _$GTestDriveOrdersData_testDriveOrders_dealer _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders_dealer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GTestDriveOrdersData_testDriveOrders_dealer',
                  'G__typename'),
              vehicleVariant: _vehicleVariant?.build(),
              vehicleColor: _vehicleColor?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleVariant';
        _vehicleVariant?.build();
        _$failedField = 'vehicleColor';
        _vehicleColor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData_testDriveOrders_dealer',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant
    extends GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant {
  @override
  final String G__typename;
  @override
  final GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle?
      vehicle;
  @override
  final String? name;

  factory _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant._(
      {required this.G__typename, this.vehicle, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant',
        'G__typename');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant rebuild(
          void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder
      toBuilder() =>
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant &&
        G__typename == other.G__typename &&
        vehicle == other.vehicle &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicle.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant')
          ..add('G__typename', G__typename)
          ..add('vehicle', vehicle)
          ..add('name', name))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder?
      _vehicle;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder
      get vehicle => _$this._vehicle ??=
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder();
  set vehicle(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder?
              vehicle) =>
      _$this._vehicle = vehicle;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder() {
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant
        ._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicle = $v.vehicle?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant;
  }

  @override
  void update(
      void Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariantBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant build() =>
      _build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant _build() {
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant',
                  'G__typename'),
              vehicle: _vehicle?.build(),
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicle';
        _vehicle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
    extends GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle {
  @override
  final String G__typename;
  @override
  final String? name;

  factory _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle._(
      {required this.G__typename, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle',
        'G__typename');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle rebuild(
          void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder
      toBuilder() =>
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder
    implements
        Builder<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder() {
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
        ._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle;
  }

  @override
  void update(
      void Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle build() =>
      _build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
      _build() {
    final _$result = _$v ??
        new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleVariant_vehicle',
                'G__typename'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor
    extends GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final BuiltList<
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>? images;

  factory _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor._(
      {required this.G__typename, this.name, this.code, this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor',
        'G__typename');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor rebuild(
          void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder toBuilder() =>
      new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor &&
        G__typename == other.G__typename &&
        name == other.name &&
        code == other.code &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('code', code)
          ..add('images', images))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>?
      _images;
  ListBuilder<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>
      get images => _$this._images ??= new ListBuilder<
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>();
  set images(
          ListBuilder<
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images>?
              images) =>
      _$this._images = images;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder() {
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor._initializeBuilder(
        this);
  }

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _code = $v.code;
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor;
  }

  @override
  void update(
      void Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleColorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor build() => _build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor _build() {
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor',
                  'G__typename'),
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
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
    extends GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image?
      image;

  factory _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images._(
      {required this.G__typename, required this.id, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images',
        'id');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images rebuild(
          void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder
      toBuilder() =>
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images &&
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
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder?
      _image;
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder
      get image => _$this._image ??=
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder();
  set image(
          GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder?
              image) =>
      _$this._image = image;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder() {
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
        ._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder
      get _$this {
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
  void replace(
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images;
  }

  @override
  void update(
      void Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images build() =>
      _build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images _build() {
    _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images',
                  'id'),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
    extends GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image',
        'id');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image rebuild(
          void Function(
                  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder
      toBuilder() =>
          new GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image &&
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
            r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder
    implements
        Builder<
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image,
            GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder() {
    GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
        ._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image;
  }

  @override
  void update(
      void Function(
              GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
      build() => _build();

  _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
      _build() {
    final _$result = _$v ??
        new _$GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GTestDriveOrdersData_testDriveOrders_dealer_vehicleColor_images_image',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_order
    extends GTestDriveOrdersData_testDriveOrders_order {
  @override
  final String G__typename;
  @override
  final GTestDriveOrdersData_testDriveOrders_order_user? user;

  factory _$GTestDriveOrdersData_testDriveOrders_order(
          [void Function(GTestDriveOrdersData_testDriveOrders_orderBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_orderBuilder()..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_order._(
      {required this.G__typename, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GTestDriveOrdersData_testDriveOrders_order', 'G__typename');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order rebuild(
          void Function(GTestDriveOrdersData_testDriveOrders_orderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_orderBuilder toBuilder() =>
      new GTestDriveOrdersData_testDriveOrders_orderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData_testDriveOrders_order &&
        G__typename == other.G__typename &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_order')
          ..add('G__typename', G__typename)
          ..add('user', user))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_orderBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_order,
            GTestDriveOrdersData_testDriveOrders_orderBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_order? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GTestDriveOrdersData_testDriveOrders_order_userBuilder? _user;
  GTestDriveOrdersData_testDriveOrders_order_userBuilder get user =>
      _$this._user ??=
          new GTestDriveOrdersData_testDriveOrders_order_userBuilder();
  set user(GTestDriveOrdersData_testDriveOrders_order_userBuilder? user) =>
      _$this._user = user;

  GTestDriveOrdersData_testDriveOrders_orderBuilder() {
    GTestDriveOrdersData_testDriveOrders_order._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_orderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersData_testDriveOrders_order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders_order;
  }

  @override
  void update(
      void Function(GTestDriveOrdersData_testDriveOrders_orderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order build() => _build();

  _$GTestDriveOrdersData_testDriveOrders_order _build() {
    _$GTestDriveOrdersData_testDriveOrders_order _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders_order._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GTestDriveOrdersData_testDriveOrders_order', 'G__typename'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData_testDriveOrders_order',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_order_user
    extends GTestDriveOrdersData_testDriveOrders_order_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final BuiltList<GTestDriveOrdersData_testDriveOrders_order_user_addresses>?
      addresses;

  factory _$GTestDriveOrdersData_testDriveOrders_order_user(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_order_userBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_order_userBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_order_user._(
      {required this.G__typename,
      required this.id,
      this.email,
      this.name,
      this.phoneNumber,
      this.addresses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GTestDriveOrdersData_testDriveOrders_order_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GTestDriveOrdersData_testDriveOrders_order_user', 'id');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order_user rebuild(
          void Function(GTestDriveOrdersData_testDriveOrders_order_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_order_userBuilder toBuilder() =>
      new GTestDriveOrdersData_testDriveOrders_order_userBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData_testDriveOrders_order_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        addresses == other.addresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_order_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('addresses', addresses))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_order_userBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_order_user,
            GTestDriveOrdersData_testDriveOrders_order_userBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_order_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<GTestDriveOrdersData_testDriveOrders_order_user_addresses>?
      _addresses;
  ListBuilder<GTestDriveOrdersData_testDriveOrders_order_user_addresses>
      get addresses => _$this._addresses ??= new ListBuilder<
          GTestDriveOrdersData_testDriveOrders_order_user_addresses>();
  set addresses(
          ListBuilder<
                  GTestDriveOrdersData_testDriveOrders_order_user_addresses>?
              addresses) =>
      _$this._addresses = addresses;

  GTestDriveOrdersData_testDriveOrders_order_userBuilder() {
    GTestDriveOrdersData_testDriveOrders_order_user._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_order_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _addresses = $v.addresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersData_testDriveOrders_order_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders_order_user;
  }

  @override
  void update(
      void Function(GTestDriveOrdersData_testDriveOrders_order_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order_user build() => _build();

  _$GTestDriveOrdersData_testDriveOrders_order_user _build() {
    _$GTestDriveOrdersData_testDriveOrders_order_user _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveOrdersData_testDriveOrders_order_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GTestDriveOrdersData_testDriveOrders_order_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GTestDriveOrdersData_testDriveOrders_order_user', 'id'),
              email: email,
              name: name,
              phoneNumber: phoneNumber,
              addresses: _addresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersData_testDriveOrders_order_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersData_testDriveOrders_order_user_addresses
    extends GTestDriveOrdersData_testDriveOrders_order_user_addresses {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? phoneNumber;
  @override
  final String? pinCode;
  @override
  final String? state;
  @override
  final String? town;
  @override
  final String? address;
  @override
  final String? district;
  @override
  final String? name;

  factory _$GTestDriveOrdersData_testDriveOrders_order_user_addresses(
          [void Function(
                  GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder)?
              updates]) =>
      (new GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder()
            ..update(updates))
          ._build();

  _$GTestDriveOrdersData_testDriveOrders_order_user_addresses._(
      {required this.G__typename,
      required this.id,
      this.phoneNumber,
      this.pinCode,
      this.state,
      this.town,
      this.address,
      this.district,
      this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GTestDriveOrdersData_testDriveOrders_order_user_addresses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GTestDriveOrdersData_testDriveOrders_order_user_addresses', 'id');
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order_user_addresses rebuild(
          void Function(
                  GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder
      toBuilder() =>
          new GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersData_testDriveOrders_order_user_addresses &&
        G__typename == other.G__typename &&
        id == other.id &&
        phoneNumber == other.phoneNumber &&
        pinCode == other.pinCode &&
        state == other.state &&
        town == other.town &&
        address == other.address &&
        district == other.district &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, pinCode.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, town.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, district.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GTestDriveOrdersData_testDriveOrders_order_user_addresses')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('phoneNumber', phoneNumber)
          ..add('pinCode', pinCode)
          ..add('state', state)
          ..add('town', town)
          ..add('address', address)
          ..add('district', district)
          ..add('name', name))
        .toString();
  }
}

class GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder
    implements
        Builder<GTestDriveOrdersData_testDriveOrders_order_user_addresses,
            GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder> {
  _$GTestDriveOrdersData_testDriveOrders_order_user_addresses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _town;
  String? get town => _$this._town;
  set town(String? town) => _$this._town = town;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder() {
    GTestDriveOrdersData_testDriveOrders_order_user_addresses
        ._initializeBuilder(this);
  }

  GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _phoneNumber = $v.phoneNumber;
      _pinCode = $v.pinCode;
      _state = $v.state;
      _town = $v.town;
      _address = $v.address;
      _district = $v.district;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GTestDriveOrdersData_testDriveOrders_order_user_addresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveOrdersData_testDriveOrders_order_user_addresses;
  }

  @override
  void update(
      void Function(
              GTestDriveOrdersData_testDriveOrders_order_user_addressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersData_testDriveOrders_order_user_addresses build() => _build();

  _$GTestDriveOrdersData_testDriveOrders_order_user_addresses _build() {
    final _$result = _$v ??
        new _$GTestDriveOrdersData_testDriveOrders_order_user_addresses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GTestDriveOrdersData_testDriveOrders_order_user_addresses',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GTestDriveOrdersData_testDriveOrders_order_user_addresses',
                'id'),
            phoneNumber: phoneNumber,
            pinCode: pinCode,
            state: state,
            town: town,
            address: address,
            district: district,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
