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
Serializer<GProductDealerStockRequestsData_productDealerStockRequests_dealer>
    _$gProductDealerStockRequestsDataProductDealerStockRequestsDealerSerializer =
    new _$GProductDealerStockRequestsData_productDealerStockRequests_dealerSerializer();
Serializer<
        GProductDealerStockRequestsData_productDealerStockRequests_dealer_user>
    _$gProductDealerStockRequestsDataProductDealerStockRequestsDealerUserSerializer =
    new _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_userSerializer();
Serializer<GVehicleDealerStockRequestsData>
    _$gVehicleDealerStockRequestsDataSerializer =
    new _$GVehicleDealerStockRequestsDataSerializer();
Serializer<GVehicleDealerStockRequestsData_vehicleDealerStockRequests>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequestsSerializer();
Serializer<GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsDealerSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerSerializer();
Serializer<
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleColorSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorSerializer();
Serializer<
        GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariant>
    _$gVehicleDealerStockRequestsDataVehicleDealerStockRequestsVehicleVariantSerializer =
    new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleVariantSerializer();

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
    value = object.productVariant;
    if (value != null) {
      result
        ..add('productVariant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProductDealerStockRequestsData_productDealerStockRequests_productVariant)));
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dealer;
    if (value != null) {
      result
        ..add('dealer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProductDealerStockRequestsData_productDealerStockRequests_dealer)));
    }
    value = object.accepted;
    if (value != null) {
      result
        ..add('accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
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
        case 'productVariant':
          result.productVariant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProductDealerStockRequestsData_productDealerStockRequests_productVariant))!
              as GProductDealerStockRequestsData_productDealerStockRequests_productVariant);
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dealer':
          result.dealer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProductDealerStockRequestsData_productDealerStockRequests_dealer))!
              as GProductDealerStockRequestsData_productDealerStockRequests_dealer);
          break;
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
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
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_dealerSerializer
    implements
        StructuredSerializer<
            GProductDealerStockRequestsData_productDealerStockRequests_dealer> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsData_productDealerStockRequests_dealer,
    _$GProductDealerStockRequestsData_productDealerStockRequests_dealer
  ];
  @override
  final String wireName =
      'GProductDealerStockRequestsData_productDealerStockRequests_dealer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProductDealerStockRequestsData_productDealerStockRequests_dealer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GProductDealerStockRequestsData_productDealerStockRequests_dealer_user)));
    }
    return result;
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProductDealerStockRequestsData_productDealerStockRequests_dealer_user))!
              as GProductDealerStockRequestsData_productDealerStockRequests_dealer_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_userSerializer
    implements
        StructuredSerializer<
            GProductDealerStockRequestsData_productDealerStockRequests_dealer_user> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsData_productDealerStockRequests_dealer_user,
    _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
  ];
  @override
  final String wireName =
      'GProductDealerStockRequestsData_productDealerStockRequests_dealer_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
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
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder();

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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.dealer;
    if (value != null) {
      result
        ..add('dealer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'dealer':
          result.dealer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer))!
              as GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalPrice':
          result.totalPrice = serializers.deserialize(value,
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

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerSerializer
    implements
        StructuredSerializer<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer,
    _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
  ];
  @override
  final String wireName =
      'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer object,
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
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder();

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
  final GProductDealerStockRequestsData_productDealerStockRequests_productVariant?
      productVariant;
  @override
  final int? stock;
  @override
  final int? totalPrice;
  @override
  final String? type;
  @override
  final GProductDealerStockRequestsData_productDealerStockRequests_dealer?
      dealer;
  @override
  final bool? accepted;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final _i2.GDateTime? modifiedAt;

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
      this.productVariant,
      this.stock,
      this.totalPrice,
      this.type,
      this.dealer,
      this.accepted,
      this.createdAt,
      this.modifiedAt})
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
        productVariant == other.productVariant &&
        stock == other.stock &&
        totalPrice == other.totalPrice &&
        type == other.type &&
        dealer == other.dealer &&
        accepted == other.accepted &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productVariant.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, dealer.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProductDealerStockRequestsData_productDealerStockRequests')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('productVariant', productVariant)
          ..add('stock', stock)
          ..add('totalPrice', totalPrice)
          ..add('type', type)
          ..add('dealer', dealer)
          ..add('accepted', accepted)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt))
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

  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder?
      _productVariant;
  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder
      get productVariant => _$this._productVariant ??=
          new GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder();
  set productVariant(
          GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder?
              productVariant) =>
      _$this._productVariant = productVariant;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder?
      _dealer;
  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder
      get dealer => _$this._dealer ??=
          new GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder();
  set dealer(
          GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder?
              dealer) =>
      _$this._dealer = dealer;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GProductDealerStockRequestsData_productDealerStockRequestsBuilder() {
    GProductDealerStockRequestsData_productDealerStockRequests
        ._initializeBuilder(this);
  }

  GProductDealerStockRequestsData_productDealerStockRequestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _productVariant = $v.productVariant?.toBuilder();
      _stock = $v.stock;
      _totalPrice = $v.totalPrice;
      _type = $v.type;
      _dealer = $v.dealer?.toBuilder();
      _accepted = $v.accepted;
      _createdAt = $v.createdAt?.toBuilder();
      _modifiedAt = $v.modifiedAt?.toBuilder();
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
              productVariant: _productVariant?.build(),
              stock: stock,
              totalPrice: totalPrice,
              type: type,
              dealer: _dealer?.build(),
              accepted: accepted,
              createdAt: _createdAt?.build(),
              modifiedAt: _modifiedAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productVariant';
        _productVariant?.build();

        _$failedField = 'dealer';
        _dealer?.build();

        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
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

  factory _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant(
          [void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder)?
              updates]) =>
      (new GProductDealerStockRequestsData_productDealerStockRequests_productVariantBuilder()
            ..update(updates))
          ._build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_productVariant._(
      {required this.G__typename, this.name, required this.id})
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
            r'GProductDealerStockRequestsData_productDealerStockRequests_productVariant')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id))
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
    final _$result = _$v ??
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
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_dealer
    extends GProductDealerStockRequestsData_productDealerStockRequests_dealer {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GProductDealerStockRequestsData_productDealerStockRequests_dealer_user?
      user;

  factory _$GProductDealerStockRequestsData_productDealerStockRequests_dealer(
          [void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder)?
              updates]) =>
      (new GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder()
            ..update(updates))
          ._build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_dealer._(
      {required this.G__typename, required this.id, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProductDealerStockRequestsData_productDealerStockRequests_dealer',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GProductDealerStockRequestsData_productDealerStockRequests_dealer',
        'id');
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealer rebuild(
          void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder
      toBuilder() =>
          new GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GProductDealerStockRequestsData_productDealerStockRequests_dealer &&
        G__typename == other.G__typename &&
        id == other.id &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GProductDealerStockRequestsData_productDealerStockRequests_dealer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('user', user))
        .toString();
  }
}

class GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder
    implements
        Builder<
            GProductDealerStockRequestsData_productDealerStockRequests_dealer,
            GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder> {
  _$GProductDealerStockRequestsData_productDealerStockRequests_dealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder?
      _user;
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder
      get user => _$this._user ??=
          new GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder();
  set user(
          GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder?
              user) =>
      _$this._user = user;

  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder() {
    GProductDealerStockRequestsData_productDealerStockRequests_dealer
        ._initializeBuilder(this);
  }

  GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GProductDealerStockRequestsData_productDealerStockRequests_dealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GProductDealerStockRequestsData_productDealerStockRequests_dealer;
  }

  @override
  void update(
      void Function(
              GProductDealerStockRequestsData_productDealerStockRequests_dealerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealer build() =>
      _build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_dealer _build() {
    _$GProductDealerStockRequestsData_productDealerStockRequests_dealer
        _$result;
    try {
      _$result = _$v ??
          new _$GProductDealerStockRequestsData_productDealerStockRequests_dealer
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GProductDealerStockRequestsData_productDealerStockRequests_dealer',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GProductDealerStockRequestsData_productDealerStockRequests_dealer',
                  'id'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductDealerStockRequestsData_productDealerStockRequests_dealer',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
    extends GProductDealerStockRequestsData_productDealerStockRequests_dealer_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user(
          [void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder)?
              updates]) =>
      (new GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder()
            ..update(updates))
          ._build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user._(
      {required this.G__typename, required this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GProductDealerStockRequestsData_productDealerStockRequests_dealer_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GProductDealerStockRequestsData_productDealerStockRequests_dealer_user',
        'id');
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_user rebuild(
          void Function(
                  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder
      toBuilder() =>
          new GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GProductDealerStockRequestsData_productDealerStockRequests_dealer_user &&
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
            r'GProductDealerStockRequestsData_productDealerStockRequests_dealer_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder
    implements
        Builder<
            GProductDealerStockRequestsData_productDealerStockRequests_dealer_user,
            GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder> {
  _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder() {
    GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
        ._initializeBuilder(this);
  }

  GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder
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
      GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user;
  }

  @override
  void update(
      void Function(
              GProductDealerStockRequestsData_productDealerStockRequests_dealer_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
      build() => _build();

  _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
      _build() {
    final _$result = _$v ??
        new _$GProductDealerStockRequestsData_productDealerStockRequests_dealer_user
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GProductDealerStockRequestsData_productDealerStockRequests_dealer_user',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GProductDealerStockRequestsData_productDealerStockRequests_dealer_user',
                'id'),
            name: name);
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
  final bool? accepted;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer?
      dealer;
  @override
  final String id;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final int? stock;
  @override
  final String? type;
  @override
  final int? totalPrice;
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
      this.accepted,
      this.createdAt,
      this.dealer,
      required this.id,
      this.modifiedAt,
      this.stock,
      this.type,
      this.totalPrice,
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
        accepted == other.accepted &&
        createdAt == other.createdAt &&
        dealer == other.dealer &&
        id == other.id &&
        modifiedAt == other.modifiedAt &&
        stock == other.stock &&
        type == other.type &&
        totalPrice == other.totalPrice &&
        vehicleColor == other.vehicleColor &&
        vehicleVariant == other.vehicleVariant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, dealer.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
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
          ..add('accepted', accepted)
          ..add('createdAt', createdAt)
          ..add('dealer', dealer)
          ..add('id', id)
          ..add('modifiedAt', modifiedAt)
          ..add('stock', stock)
          ..add('type', type)
          ..add('totalPrice', totalPrice)
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

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder?
      _dealer;
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder
      get dealer => _$this._dealer ??=
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder();
  set dealer(
          GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder?
              dealer) =>
      _$this._dealer = dealer;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _totalPrice;
  int? get totalPrice => _$this._totalPrice;
  set totalPrice(int? totalPrice) => _$this._totalPrice = totalPrice;

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
      _accepted = $v.accepted;
      _createdAt = $v.createdAt?.toBuilder();
      _dealer = $v.dealer?.toBuilder();
      _id = $v.id;
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _stock = $v.stock;
      _type = $v.type;
      _totalPrice = $v.totalPrice;
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
              accepted: accepted,
              createdAt: _createdAt?.build(),
              dealer: _dealer?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests',
                  'id'),
              modifiedAt: _modifiedAt?.build(),
              stock: stock,
              type: type,
              totalPrice: totalPrice,
              vehicleColor: _vehicleColor?.build(),
              vehicleVariant: _vehicleVariant?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'dealer';
        _dealer?.build();

        _$failedField = 'modifiedAt';
        _modifiedAt?.build();

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

class _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
    extends GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String id;

  factory _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer(
          [void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder)?
              updates]) =>
      (new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer._(
      {required this.G__typename, this.name, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer',
        'id');
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer rebuild(
          void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder
      toBuilder() =>
          new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer &&
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
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder
    implements
        Builder<
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer,
            GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder> {
  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder() {
    GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
        ._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder
      get _$this {
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
  void replace(
      GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer;
  }

  @override
  void update(
      void Function(
              GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer build() =>
      _build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer _build() {
    final _$result = _$v ??
        new _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer',
                'G__typename'),
            name: name,
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_dealer',
                'id'));
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

  factory _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor(
          [void Function(
                  GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder)?
              updates]) =>
      (new GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColorBuilder()
            ..update(updates))
          ._build();

  _$GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor._(
      {required this.G__typename, required this.id, this.name})
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
            r'GVehicleDealerStockRequestsData_vehicleDealerStockRequests_vehicleColor')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
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
    final _$result = _$v ??
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
            name: name);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
