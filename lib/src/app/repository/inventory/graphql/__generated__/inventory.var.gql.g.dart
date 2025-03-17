// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductVariantsVars> _$gProductVariantsVarsSerializer =
    new _$GProductVariantsVarsSerializer();
Serializer<GProductVariantsCountVars> _$gProductVariantsCountVarsSerializer =
    new _$GProductVariantsCountVarsSerializer();
Serializer<GProductVariantVars> _$gProductVariantVarsSerializer =
    new _$GProductVariantVarsSerializer();
Serializer<GProductTypesVars> _$gProductTypesVarsSerializer =
    new _$GProductTypesVarsSerializer();
Serializer<GVehicleVariantsVars> _$gVehicleVariantsVarsSerializer =
    new _$GVehicleVariantsVarsSerializer();
Serializer<GVehicleVariantsCountVars> _$gVehicleVariantsCountVarsSerializer =
    new _$GVehicleVariantsCountVarsSerializer();
Serializer<GCreateVehicleDealerStockRequestVars>
    _$gCreateVehicleDealerStockRequestVarsSerializer =
    new _$GCreateVehicleDealerStockRequestVarsSerializer();
Serializer<GVehicleDealersCountVars> _$gVehicleDealersCountVarsSerializer =
    new _$GVehicleDealersCountVarsSerializer();
Serializer<GVehicleDealersVars> _$gVehicleDealersVarsSerializer =
    new _$GVehicleDealersVarsSerializer();
Serializer<GCreateVehicleDealerVars> _$gCreateVehicleDealerVarsSerializer =
    new _$GCreateVehicleDealerVarsSerializer();
Serializer<GPriceCategoriesVars> _$gPriceCategoriesVarsSerializer =
    new _$GPriceCategoriesVarsSerializer();
Serializer<GUpdateVehicleDealerVars> _$gUpdateVehicleDealerVarsSerializer =
    new _$GUpdateVehicleDealerVarsSerializer();
Serializer<GUpdatePricesVars> _$gUpdatePricesVarsSerializer =
    new _$GUpdatePricesVarsSerializer();
Serializer<GTestDriveDealersVars> _$gTestDriveDealersVarsSerializer =
    new _$GTestDriveDealersVarsSerializer();
Serializer<GUpdateTestDriveDealerVars> _$gUpdateTestDriveDealerVarsSerializer =
    new _$GUpdateTestDriveDealerVarsSerializer();
Serializer<GCreateTestDriveDealerVars> _$gCreateTestDriveDealerVarsSerializer =
    new _$GCreateTestDriveDealerVarsSerializer();
Serializer<GProductDealersVars> _$gProductDealersVarsSerializer =
    new _$GProductDealersVarsSerializer();
Serializer<GCreateProductDealerVars> _$gCreateProductDealerVarsSerializer =
    new _$GCreateProductDealerVarsSerializer();
Serializer<GUpdateProductDealerVars> _$gUpdateProductDealerVarsSerializer =
    new _$GUpdateProductDealerVarsSerializer();
Serializer<GCreateProductDealerStockRequestVars>
    _$gCreateProductDealerStockRequestVarsSerializer =
    new _$GCreateProductDealerStockRequestVarsSerializer();
Serializer<GVehicleFilterDataVars> _$gVehicleFilterDataVarsSerializer =
    new _$GVehicleFilterDataVarsSerializer();
Serializer<GProductFilterDataVars> _$gProductFilterDataVarsSerializer =
    new _$GProductFilterDataVarsSerializer();

class _$GProductVariantsVarsSerializer
    implements StructuredSerializer<GProductVariantsVars> {
  @override
  final Iterable<Type> types = const [
    GProductVariantsVars,
    _$GProductVariantsVars
  ];
  @override
  final String wireName = 'GProductVariantsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductVariantsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductVariantWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList,
              const [const FullType(_i1.GProductVariantOrderByInput)])),
    ];
    Object? value;
    value = object.take;
    if (value != null) {
      result
        ..add('take')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    return result;
  }

  @override
  GProductVariantsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductVariantsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductVariantWhereInput))!
              as _i1.GProductVariantWhereInput);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GProductVariantOrderByInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductVariantsCountVarsSerializer
    implements StructuredSerializer<GProductVariantsCountVars> {
  @override
  final Iterable<Type> types = const [
    GProductVariantsCountVars,
    _$GProductVariantsCountVars
  ];
  @override
  final String wireName = 'GProductVariantsCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductVariantsCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductVariantWhereInput)),
    ];

    return result;
  }

  @override
  GProductVariantsCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductVariantsCountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductVariantWhereInput))!
              as _i1.GProductVariantWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductVariantVarsSerializer
    implements StructuredSerializer<GProductVariantVars> {
  @override
  final Iterable<Type> types = const [
    GProductVariantVars,
    _$GProductVariantVars
  ];
  @override
  final String wireName = 'GProductVariantVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductVariantVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductVariantWhereUniqueInput)),
    ];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    return result;
  }

  @override
  GProductVariantVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductVariantVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GProductVariantWhereUniqueInput))!
              as _i1.GProductVariantWhereUniqueInput);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductTypesVarsSerializer
    implements StructuredSerializer<GProductTypesVars> {
  @override
  final Iterable<Type> types = const [GProductTypesVars, _$GProductTypesVars];
  @override
  final String wireName = 'GProductTypesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProductTypesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProductTypesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProductTypesVarsBuilder().build();
  }
}

class _$GVehicleVariantsVarsSerializer
    implements StructuredSerializer<GVehicleVariantsVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleVariantsVars,
    _$GVehicleVariantsVars
  ];
  @override
  final String wireName = 'GVehicleVariantsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleVariantsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleVariantWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList,
              const [const FullType(_i1.GVehicleVariantOrderByInput)])),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.take;
    if (value != null) {
      result
        ..add('take')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GVehicleVariantsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleVariantsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleVariantWhereInput))!
              as _i1.GVehicleVariantWhereInput);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GVehicleVariantOrderByInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleVariantsCountVarsSerializer
    implements StructuredSerializer<GVehicleVariantsCountVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleVariantsCountVars,
    _$GVehicleVariantsCountVars
  ];
  @override
  final String wireName = 'GVehicleVariantsCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleVariantsCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleVariantWhereInput)),
    ];

    return result;
  }

  @override
  GVehicleVariantsCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleVariantsCountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleVariantWhereInput))!
              as _i1.GVehicleVariantWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerStockRequestVarsSerializer
    implements StructuredSerializer<GCreateVehicleDealerStockRequestVars> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerStockRequestVars,
    _$GCreateVehicleDealerStockRequestVars
  ];
  @override
  final String wireName = 'GCreateVehicleDealerStockRequestVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVehicleDealerStockRequestVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(_i1.GVehicleDealerStockRequestCreateInput)),
    ];

    return result;
  }

  @override
  GCreateVehicleDealerStockRequestVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleDealerStockRequestVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i1.GVehicleDealerStockRequestCreateInput))!
              as _i1.GVehicleDealerStockRequestCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersCountVarsSerializer
    implements StructuredSerializer<GVehicleDealersCountVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersCountVars,
    _$GVehicleDealersCountVars
  ];
  @override
  final String wireName = 'GVehicleDealersCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealersCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleDealerWhereInput)),
    ];

    return result;
  }

  @override
  GVehicleDealersCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealersCountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleDealerWhereInput))!
              as _i1.GVehicleDealerWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleDealersVarsSerializer
    implements StructuredSerializer<GVehicleDealersVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealersVars,
    _$GVehicleDealersVars
  ];
  @override
  final String wireName = 'GVehicleDealersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleDealerWhereInput)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.take;
    if (value != null) {
      result
        ..add('take')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GVehicleDealersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleDealerWhereInput))!
              as _i1.GVehicleDealerWhereInput);
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerVarsSerializer
    implements StructuredSerializer<GCreateVehicleDealerVars> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerVars,
    _$GCreateVehicleDealerVars
  ];
  @override
  final String wireName = 'GCreateVehicleDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVehicleDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GVehicleDealerCreateInput)),
    ];

    return result;
  }

  @override
  GCreateVehicleDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleDealerCreateInput))!
              as _i1.GVehicleDealerCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GPriceCategoriesVarsSerializer
    implements StructuredSerializer<GPriceCategoriesVars> {
  @override
  final Iterable<Type> types = const [
    GPriceCategoriesVars,
    _$GPriceCategoriesVars
  ];
  @override
  final String wireName = 'GPriceCategoriesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPriceCategoriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPriceCategoriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPriceCategoriesVarsBuilder().build();
  }
}

class _$GUpdateVehicleDealerVarsSerializer
    implements StructuredSerializer<GUpdateVehicleDealerVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateVehicleDealerVars,
    _$GUpdateVehicleDealerVars
  ];
  @override
  final String wireName = 'GUpdateVehicleDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateVehicleDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleDealerWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GVehicleDealerUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateVehicleDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateVehicleDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GVehicleDealerWhereUniqueInput))!
              as _i1.GVehicleDealerWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleDealerUpdateInput))!
              as _i1.GVehicleDealerUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePricesVarsSerializer
    implements StructuredSerializer<GUpdatePricesVars> {
  @override
  final Iterable<Type> types = const [GUpdatePricesVars, _$GUpdatePricesVars];
  @override
  final String wireName = 'GUpdatePricesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePricesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GPriceUpdateArgs)])),
    ];

    return result;
  }

  @override
  GUpdatePricesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePricesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GPriceUpdateArgs)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveDealersVarsSerializer
    implements StructuredSerializer<GTestDriveDealersVars> {
  @override
  final Iterable<Type> types = const [
    GTestDriveDealersVars,
    _$GTestDriveDealersVars
  ];
  @override
  final String wireName = 'GTestDriveDealersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTestDriveDealersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GTestDriveDealerWhereInput)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.take;
    if (value != null) {
      result
        ..add('take')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GTestDriveDealersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveDealersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GTestDriveDealerWhereInput))!
              as _i1.GTestDriveDealerWhereInput);
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateTestDriveDealerVarsSerializer
    implements StructuredSerializer<GUpdateTestDriveDealerVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateTestDriveDealerVars,
    _$GUpdateTestDriveDealerVars
  ];
  @override
  final String wireName = 'GUpdateTestDriveDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateTestDriveDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GTestDriveDealerWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GTestDriveDealerUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateTestDriveDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateTestDriveDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GTestDriveDealerWhereUniqueInput))!
              as _i1.GTestDriveDealerWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GTestDriveDealerUpdateInput))!
              as _i1.GTestDriveDealerUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateTestDriveDealerVarsSerializer
    implements StructuredSerializer<GCreateTestDriveDealerVars> {
  @override
  final Iterable<Type> types = const [
    GCreateTestDriveDealerVars,
    _$GCreateTestDriveDealerVars
  ];
  @override
  final String wireName = 'GCreateTestDriveDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateTestDriveDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GTestDriveDealerCreateInput)),
    ];

    return result;
  }

  @override
  GCreateTestDriveDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateTestDriveDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GTestDriveDealerCreateInput))!
              as _i1.GTestDriveDealerCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealersVarsSerializer
    implements StructuredSerializer<GProductDealersVars> {
  @override
  final Iterable<Type> types = const [
    GProductDealersVars,
    _$GProductDealersVars
  ];
  @override
  final String wireName = 'GProductDealersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductDealersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductDealerWhereInput)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.take;
    if (value != null) {
      result
        ..add('take')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GProductDealersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductDealersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductDealerWhereInput))!
              as _i1.GProductDealerWhereInput);
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateProductDealerVarsSerializer
    implements StructuredSerializer<GCreateProductDealerVars> {
  @override
  final Iterable<Type> types = const [
    GCreateProductDealerVars,
    _$GCreateProductDealerVars
  ];
  @override
  final String wireName = 'GCreateProductDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateProductDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GProductDealerCreateInput)),
    ];

    return result;
  }

  @override
  GCreateProductDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateProductDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductDealerCreateInput))!
              as _i1.GProductDealerCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProductDealerVarsSerializer
    implements StructuredSerializer<GUpdateProductDealerVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateProductDealerVars,
    _$GUpdateProductDealerVars
  ];
  @override
  final String wireName = 'GUpdateProductDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProductDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductDealerWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GProductDealerUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateProductDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateProductDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GProductDealerWhereUniqueInput))!
              as _i1.GProductDealerWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductDealerUpdateInput))!
              as _i1.GProductDealerUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateProductDealerStockRequestVarsSerializer
    implements StructuredSerializer<GCreateProductDealerStockRequestVars> {
  @override
  final Iterable<Type> types = const [
    GCreateProductDealerStockRequestVars,
    _$GCreateProductDealerStockRequestVars
  ];
  @override
  final String wireName = 'GCreateProductDealerStockRequestVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateProductDealerStockRequestVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(_i1.GProductDealerStockRequestCreateInput)),
    ];

    return result;
  }

  @override
  GCreateProductDealerStockRequestVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateProductDealerStockRequestVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i1.GProductDealerStockRequestCreateInput))!
              as _i1.GProductDealerStockRequestCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleFilterDataVarsSerializer
    implements StructuredSerializer<GVehicleFilterDataVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleFilterDataVars,
    _$GVehicleFilterDataVars
  ];
  @override
  final String wireName = 'GVehicleFilterDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleFilterDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GVehicleFilterDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GVehicleFilterDataVarsBuilder().build();
  }
}

class _$GProductFilterDataVarsSerializer
    implements StructuredSerializer<GProductFilterDataVars> {
  @override
  final Iterable<Type> types = const [
    GProductFilterDataVars,
    _$GProductFilterDataVars
  ];
  @override
  final String wireName = 'GProductFilterDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductFilterDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProductFilterDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProductFilterDataVarsBuilder().build();
  }
}

class _$GProductVariantsVars extends GProductVariantsVars {
  @override
  final int skip;
  @override
  final int? take;
  @override
  final _i1.GProductVariantWhereInput where;
  @override
  final BuiltList<double>? location;
  @override
  final BuiltList<_i1.GProductVariantOrderByInput> orderBy;

  factory _$GProductVariantsVars(
          [void Function(GProductVariantsVarsBuilder)? updates]) =>
      (new GProductVariantsVarsBuilder()..update(updates))._build();

  _$GProductVariantsVars._(
      {required this.skip,
      this.take,
      required this.where,
      this.location,
      required this.orderBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skip, r'GProductVariantsVars', 'skip');
    BuiltValueNullFieldError.checkNotNull(
        where, r'GProductVariantsVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        orderBy, r'GProductVariantsVars', 'orderBy');
  }

  @override
  GProductVariantsVars rebuild(
          void Function(GProductVariantsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductVariantsVarsBuilder toBuilder() =>
      new GProductVariantsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductVariantsVars &&
        skip == other.skip &&
        take == other.take &&
        where == other.where &&
        location == other.location &&
        orderBy == other.orderBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, orderBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductVariantsVars')
          ..add('skip', skip)
          ..add('take', take)
          ..add('where', where)
          ..add('location', location)
          ..add('orderBy', orderBy))
        .toString();
  }
}

class GProductVariantsVarsBuilder
    implements Builder<GProductVariantsVars, GProductVariantsVarsBuilder> {
  _$GProductVariantsVars? _$v;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  _i1.GProductVariantWhereInputBuilder? _where;
  _i1.GProductVariantWhereInputBuilder get where =>
      _$this._where ??= new _i1.GProductVariantWhereInputBuilder();
  set where(_i1.GProductVariantWhereInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<double>? _location;
  ListBuilder<double> get location =>
      _$this._location ??= new ListBuilder<double>();
  set location(ListBuilder<double>? location) => _$this._location = location;

  ListBuilder<_i1.GProductVariantOrderByInput>? _orderBy;
  ListBuilder<_i1.GProductVariantOrderByInput> get orderBy =>
      _$this._orderBy ??= new ListBuilder<_i1.GProductVariantOrderByInput>();
  set orderBy(ListBuilder<_i1.GProductVariantOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  GProductVariantsVarsBuilder();

  GProductVariantsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skip = $v.skip;
      _take = $v.take;
      _where = $v.where.toBuilder();
      _location = $v.location?.toBuilder();
      _orderBy = $v.orderBy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductVariantsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductVariantsVars;
  }

  @override
  void update(void Function(GProductVariantsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductVariantsVars build() => _build();

  _$GProductVariantsVars _build() {
    _$GProductVariantsVars _$result;
    try {
      _$result = _$v ??
          new _$GProductVariantsVars._(
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GProductVariantsVars', 'skip'),
            take: take,
            where: where.build(),
            location: _location?.build(),
            orderBy: orderBy.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'orderBy';
        orderBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductVariantsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductVariantsCountVars extends GProductVariantsCountVars {
  @override
  final _i1.GProductVariantWhereInput where;

  factory _$GProductVariantsCountVars(
          [void Function(GProductVariantsCountVarsBuilder)? updates]) =>
      (new GProductVariantsCountVarsBuilder()..update(updates))._build();

  _$GProductVariantsCountVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GProductVariantsCountVars', 'where');
  }

  @override
  GProductVariantsCountVars rebuild(
          void Function(GProductVariantsCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductVariantsCountVarsBuilder toBuilder() =>
      new GProductVariantsCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductVariantsCountVars && where == other.where;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductVariantsCountVars')
          ..add('where', where))
        .toString();
  }
}

class GProductVariantsCountVarsBuilder
    implements
        Builder<GProductVariantsCountVars, GProductVariantsCountVarsBuilder> {
  _$GProductVariantsCountVars? _$v;

  _i1.GProductVariantWhereInputBuilder? _where;
  _i1.GProductVariantWhereInputBuilder get where =>
      _$this._where ??= new _i1.GProductVariantWhereInputBuilder();
  set where(_i1.GProductVariantWhereInputBuilder? where) =>
      _$this._where = where;

  GProductVariantsCountVarsBuilder();

  GProductVariantsCountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductVariantsCountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductVariantsCountVars;
  }

  @override
  void update(void Function(GProductVariantsCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductVariantsCountVars build() => _build();

  _$GProductVariantsCountVars _build() {
    _$GProductVariantsCountVars _$result;
    try {
      _$result = _$v ??
          new _$GProductVariantsCountVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductVariantsCountVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductVariantVars extends GProductVariantVars {
  @override
  final _i1.GProductVariantWhereUniqueInput where;
  @override
  final BuiltList<double>? location;

  factory _$GProductVariantVars(
          [void Function(GProductVariantVarsBuilder)? updates]) =>
      (new GProductVariantVarsBuilder()..update(updates))._build();

  _$GProductVariantVars._({required this.where, this.location}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GProductVariantVars', 'where');
  }

  @override
  GProductVariantVars rebuild(
          void Function(GProductVariantVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductVariantVarsBuilder toBuilder() =>
      new GProductVariantVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductVariantVars &&
        where == other.where &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductVariantVars')
          ..add('where', where)
          ..add('location', location))
        .toString();
  }
}

class GProductVariantVarsBuilder
    implements Builder<GProductVariantVars, GProductVariantVarsBuilder> {
  _$GProductVariantVars? _$v;

  _i1.GProductVariantWhereUniqueInputBuilder? _where;
  _i1.GProductVariantWhereUniqueInputBuilder get where =>
      _$this._where ??= new _i1.GProductVariantWhereUniqueInputBuilder();
  set where(_i1.GProductVariantWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<double>? _location;
  ListBuilder<double> get location =>
      _$this._location ??= new ListBuilder<double>();
  set location(ListBuilder<double>? location) => _$this._location = location;

  GProductVariantVarsBuilder();

  GProductVariantVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductVariantVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductVariantVars;
  }

  @override
  void update(void Function(GProductVariantVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductVariantVars build() => _build();

  _$GProductVariantVars _build() {
    _$GProductVariantVars _$result;
    try {
      _$result = _$v ??
          new _$GProductVariantVars._(
            where: where.build(),
            location: _location?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductVariantVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductTypesVars extends GProductTypesVars {
  factory _$GProductTypesVars(
          [void Function(GProductTypesVarsBuilder)? updates]) =>
      (new GProductTypesVarsBuilder()..update(updates))._build();

  _$GProductTypesVars._() : super._();

  @override
  GProductTypesVars rebuild(void Function(GProductTypesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductTypesVarsBuilder toBuilder() =>
      new GProductTypesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductTypesVars;
  }

  @override
  int get hashCode {
    return 549862809;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GProductTypesVars').toString();
  }
}

class GProductTypesVarsBuilder
    implements Builder<GProductTypesVars, GProductTypesVarsBuilder> {
  _$GProductTypesVars? _$v;

  GProductTypesVarsBuilder();

  @override
  void replace(GProductTypesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductTypesVars;
  }

  @override
  void update(void Function(GProductTypesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductTypesVars build() => _build();

  _$GProductTypesVars _build() {
    final _$result = _$v ?? new _$GProductTypesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleVariantsVars extends GVehicleVariantsVars {
  @override
  final _i1.GVehicleVariantWhereInput where;
  @override
  final BuiltList<_i1.GVehicleVariantOrderByInput> orderBy;
  @override
  final int skip;
  @override
  final int? take;

  factory _$GVehicleVariantsVars(
          [void Function(GVehicleVariantsVarsBuilder)? updates]) =>
      (new GVehicleVariantsVarsBuilder()..update(updates))._build();

  _$GVehicleVariantsVars._(
      {required this.where,
      required this.orderBy,
      required this.skip,
      this.take})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleVariantsVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        orderBy, r'GVehicleVariantsVars', 'orderBy');
    BuiltValueNullFieldError.checkNotNull(
        skip, r'GVehicleVariantsVars', 'skip');
  }

  @override
  GVehicleVariantsVars rebuild(
          void Function(GVehicleVariantsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleVariantsVarsBuilder toBuilder() =>
      new GVehicleVariantsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleVariantsVars &&
        where == other.where &&
        orderBy == other.orderBy &&
        skip == other.skip &&
        take == other.take;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, orderBy.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleVariantsVars')
          ..add('where', where)
          ..add('orderBy', orderBy)
          ..add('skip', skip)
          ..add('take', take))
        .toString();
  }
}

class GVehicleVariantsVarsBuilder
    implements Builder<GVehicleVariantsVars, GVehicleVariantsVarsBuilder> {
  _$GVehicleVariantsVars? _$v;

  _i1.GVehicleVariantWhereInputBuilder? _where;
  _i1.GVehicleVariantWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleVariantWhereInputBuilder();
  set where(_i1.GVehicleVariantWhereInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<_i1.GVehicleVariantOrderByInput>? _orderBy;
  ListBuilder<_i1.GVehicleVariantOrderByInput> get orderBy =>
      _$this._orderBy ??= new ListBuilder<_i1.GVehicleVariantOrderByInput>();
  set orderBy(ListBuilder<_i1.GVehicleVariantOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  GVehicleVariantsVarsBuilder();

  GVehicleVariantsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _orderBy = $v.orderBy.toBuilder();
      _skip = $v.skip;
      _take = $v.take;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleVariantsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleVariantsVars;
  }

  @override
  void update(void Function(GVehicleVariantsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleVariantsVars build() => _build();

  _$GVehicleVariantsVars _build() {
    _$GVehicleVariantsVars _$result;
    try {
      _$result = _$v ??
          new _$GVehicleVariantsVars._(
            where: where.build(),
            orderBy: orderBy.build(),
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GVehicleVariantsVars', 'skip'),
            take: take,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'orderBy';
        orderBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleVariantsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleVariantsCountVars extends GVehicleVariantsCountVars {
  @override
  final _i1.GVehicleVariantWhereInput where;

  factory _$GVehicleVariantsCountVars(
          [void Function(GVehicleVariantsCountVarsBuilder)? updates]) =>
      (new GVehicleVariantsCountVarsBuilder()..update(updates))._build();

  _$GVehicleVariantsCountVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleVariantsCountVars', 'where');
  }

  @override
  GVehicleVariantsCountVars rebuild(
          void Function(GVehicleVariantsCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleVariantsCountVarsBuilder toBuilder() =>
      new GVehicleVariantsCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleVariantsCountVars && where == other.where;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleVariantsCountVars')
          ..add('where', where))
        .toString();
  }
}

class GVehicleVariantsCountVarsBuilder
    implements
        Builder<GVehicleVariantsCountVars, GVehicleVariantsCountVarsBuilder> {
  _$GVehicleVariantsCountVars? _$v;

  _i1.GVehicleVariantWhereInputBuilder? _where;
  _i1.GVehicleVariantWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleVariantWhereInputBuilder();
  set where(_i1.GVehicleVariantWhereInputBuilder? where) =>
      _$this._where = where;

  GVehicleVariantsCountVarsBuilder();

  GVehicleVariantsCountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleVariantsCountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleVariantsCountVars;
  }

  @override
  void update(void Function(GVehicleVariantsCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleVariantsCountVars build() => _build();

  _$GVehicleVariantsCountVars _build() {
    _$GVehicleVariantsCountVars _$result;
    try {
      _$result = _$v ??
          new _$GVehicleVariantsCountVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleVariantsCountVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerStockRequestVars
    extends GCreateVehicleDealerStockRequestVars {
  @override
  final _i1.GVehicleDealerStockRequestCreateInput data;

  factory _$GCreateVehicleDealerStockRequestVars(
          [void Function(GCreateVehicleDealerStockRequestVarsBuilder)?
              updates]) =>
      (new GCreateVehicleDealerStockRequestVarsBuilder()..update(updates))
          ._build();

  _$GCreateVehicleDealerStockRequestVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateVehicleDealerStockRequestVars', 'data');
  }

  @override
  GCreateVehicleDealerStockRequestVars rebuild(
          void Function(GCreateVehicleDealerStockRequestVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerStockRequestVarsBuilder toBuilder() =>
      new GCreateVehicleDealerStockRequestVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVehicleDealerStockRequestVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVehicleDealerStockRequestVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateVehicleDealerStockRequestVarsBuilder
    implements
        Builder<GCreateVehicleDealerStockRequestVars,
            GCreateVehicleDealerStockRequestVarsBuilder> {
  _$GCreateVehicleDealerStockRequestVars? _$v;

  _i1.GVehicleDealerStockRequestCreateInputBuilder? _data;
  _i1.GVehicleDealerStockRequestCreateInputBuilder get data =>
      _$this._data ??= new _i1.GVehicleDealerStockRequestCreateInputBuilder();
  set data(_i1.GVehicleDealerStockRequestCreateInputBuilder? data) =>
      _$this._data = data;

  GCreateVehicleDealerStockRequestVarsBuilder();

  GCreateVehicleDealerStockRequestVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleDealerStockRequestVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleDealerStockRequestVars;
  }

  @override
  void update(
      void Function(GCreateVehicleDealerStockRequestVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerStockRequestVars build() => _build();

  _$GCreateVehicleDealerStockRequestVars _build() {
    _$GCreateVehicleDealerStockRequestVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleDealerStockRequestVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleDealerStockRequestVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersCountVars extends GVehicleDealersCountVars {
  @override
  final _i1.GVehicleDealerWhereInput where;

  factory _$GVehicleDealersCountVars(
          [void Function(GVehicleDealersCountVarsBuilder)? updates]) =>
      (new GVehicleDealersCountVarsBuilder()..update(updates))._build();

  _$GVehicleDealersCountVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleDealersCountVars', 'where');
  }

  @override
  GVehicleDealersCountVars rebuild(
          void Function(GVehicleDealersCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersCountVarsBuilder toBuilder() =>
      new GVehicleDealersCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersCountVars && where == other.where;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealersCountVars')
          ..add('where', where))
        .toString();
  }
}

class GVehicleDealersCountVarsBuilder
    implements
        Builder<GVehicleDealersCountVars, GVehicleDealersCountVarsBuilder> {
  _$GVehicleDealersCountVars? _$v;

  _i1.GVehicleDealerWhereInputBuilder? _where;
  _i1.GVehicleDealerWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleDealerWhereInputBuilder();
  set where(_i1.GVehicleDealerWhereInputBuilder? where) =>
      _$this._where = where;

  GVehicleDealersCountVarsBuilder();

  GVehicleDealersCountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersCountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersCountVars;
  }

  @override
  void update(void Function(GVehicleDealersCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersCountVars build() => _build();

  _$GVehicleDealersCountVars _build() {
    _$GVehicleDealersCountVars _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersCountVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersCountVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealersVars extends GVehicleDealersVars {
  @override
  final _i1.GVehicleDealerWhereInput where;
  @override
  final int? take;
  @override
  final int skip;

  factory _$GVehicleDealersVars(
          [void Function(GVehicleDealersVarsBuilder)? updates]) =>
      (new GVehicleDealersVarsBuilder()..update(updates))._build();

  _$GVehicleDealersVars._({required this.where, this.take, required this.skip})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleDealersVars', 'where');
    BuiltValueNullFieldError.checkNotNull(skip, r'GVehicleDealersVars', 'skip');
  }

  @override
  GVehicleDealersVars rebuild(
          void Function(GVehicleDealersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealersVarsBuilder toBuilder() =>
      new GVehicleDealersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealersVars &&
        where == other.where &&
        take == other.take &&
        skip == other.skip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealersVars')
          ..add('where', where)
          ..add('take', take)
          ..add('skip', skip))
        .toString();
  }
}

class GVehicleDealersVarsBuilder
    implements Builder<GVehicleDealersVars, GVehicleDealersVarsBuilder> {
  _$GVehicleDealersVars? _$v;

  _i1.GVehicleDealerWhereInputBuilder? _where;
  _i1.GVehicleDealerWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleDealerWhereInputBuilder();
  set where(_i1.GVehicleDealerWhereInputBuilder? where) =>
      _$this._where = where;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  GVehicleDealersVarsBuilder();

  GVehicleDealersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _take = $v.take;
      _skip = $v.skip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealersVars;
  }

  @override
  void update(void Function(GVehicleDealersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealersVars build() => _build();

  _$GVehicleDealersVars _build() {
    _$GVehicleDealersVars _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealersVars._(
            where: where.build(),
            take: take,
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GVehicleDealersVars', 'skip'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerVars extends GCreateVehicleDealerVars {
  @override
  final _i1.GVehicleDealerCreateInput data;

  factory _$GCreateVehicleDealerVars(
          [void Function(GCreateVehicleDealerVarsBuilder)? updates]) =>
      (new GCreateVehicleDealerVarsBuilder()..update(updates))._build();

  _$GCreateVehicleDealerVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateVehicleDealerVars', 'data');
  }

  @override
  GCreateVehicleDealerVars rebuild(
          void Function(GCreateVehicleDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerVarsBuilder toBuilder() =>
      new GCreateVehicleDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateVehicleDealerVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVehicleDealerVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateVehicleDealerVarsBuilder
    implements
        Builder<GCreateVehicleDealerVars, GCreateVehicleDealerVarsBuilder> {
  _$GCreateVehicleDealerVars? _$v;

  _i1.GVehicleDealerCreateInputBuilder? _data;
  _i1.GVehicleDealerCreateInputBuilder get data =>
      _$this._data ??= new _i1.GVehicleDealerCreateInputBuilder();
  set data(_i1.GVehicleDealerCreateInputBuilder? data) => _$this._data = data;

  GCreateVehicleDealerVarsBuilder();

  GCreateVehicleDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleDealerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleDealerVars;
  }

  @override
  void update(void Function(GCreateVehicleDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerVars build() => _build();

  _$GCreateVehicleDealerVars _build() {
    _$GCreateVehicleDealerVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleDealerVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPriceCategoriesVars extends GPriceCategoriesVars {
  factory _$GPriceCategoriesVars(
          [void Function(GPriceCategoriesVarsBuilder)? updates]) =>
      (new GPriceCategoriesVarsBuilder()..update(updates))._build();

  _$GPriceCategoriesVars._() : super._();

  @override
  GPriceCategoriesVars rebuild(
          void Function(GPriceCategoriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPriceCategoriesVarsBuilder toBuilder() =>
      new GPriceCategoriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPriceCategoriesVars;
  }

  @override
  int get hashCode {
    return 759125472;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPriceCategoriesVars').toString();
  }
}

class GPriceCategoriesVarsBuilder
    implements Builder<GPriceCategoriesVars, GPriceCategoriesVarsBuilder> {
  _$GPriceCategoriesVars? _$v;

  GPriceCategoriesVarsBuilder();

  @override
  void replace(GPriceCategoriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPriceCategoriesVars;
  }

  @override
  void update(void Function(GPriceCategoriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPriceCategoriesVars build() => _build();

  _$GPriceCategoriesVars _build() {
    final _$result = _$v ?? new _$GPriceCategoriesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateVehicleDealerVars extends GUpdateVehicleDealerVars {
  @override
  final _i1.GVehicleDealerWhereUniqueInput where;
  @override
  final _i1.GVehicleDealerUpdateInput data;

  factory _$GUpdateVehicleDealerVars(
          [void Function(GUpdateVehicleDealerVarsBuilder)? updates]) =>
      (new GUpdateVehicleDealerVarsBuilder()..update(updates))._build();

  _$GUpdateVehicleDealerVars._({required this.where, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GUpdateVehicleDealerVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GUpdateVehicleDealerVars', 'data');
  }

  @override
  GUpdateVehicleDealerVars rebuild(
          void Function(GUpdateVehicleDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateVehicleDealerVarsBuilder toBuilder() =>
      new GUpdateVehicleDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateVehicleDealerVars &&
        where == other.where &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateVehicleDealerVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateVehicleDealerVarsBuilder
    implements
        Builder<GUpdateVehicleDealerVars, GUpdateVehicleDealerVarsBuilder> {
  _$GUpdateVehicleDealerVars? _$v;

  _i1.GVehicleDealerWhereUniqueInputBuilder? _where;
  _i1.GVehicleDealerWhereUniqueInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleDealerWhereUniqueInputBuilder();
  set where(_i1.GVehicleDealerWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GVehicleDealerUpdateInputBuilder? _data;
  _i1.GVehicleDealerUpdateInputBuilder get data =>
      _$this._data ??= new _i1.GVehicleDealerUpdateInputBuilder();
  set data(_i1.GVehicleDealerUpdateInputBuilder? data) => _$this._data = data;

  GUpdateVehicleDealerVarsBuilder();

  GUpdateVehicleDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateVehicleDealerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateVehicleDealerVars;
  }

  @override
  void update(void Function(GUpdateVehicleDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateVehicleDealerVars build() => _build();

  _$GUpdateVehicleDealerVars _build() {
    _$GUpdateVehicleDealerVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateVehicleDealerVars._(
            where: where.build(),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateVehicleDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePricesVars extends GUpdatePricesVars {
  @override
  final BuiltList<_i1.GPriceUpdateArgs> data;

  factory _$GUpdatePricesVars(
          [void Function(GUpdatePricesVarsBuilder)? updates]) =>
      (new GUpdatePricesVarsBuilder()..update(updates))._build();

  _$GUpdatePricesVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GUpdatePricesVars', 'data');
  }

  @override
  GUpdatePricesVars rebuild(void Function(GUpdatePricesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePricesVarsBuilder toBuilder() =>
      new GUpdatePricesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePricesVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePricesVars')
          ..add('data', data))
        .toString();
  }
}

class GUpdatePricesVarsBuilder
    implements Builder<GUpdatePricesVars, GUpdatePricesVarsBuilder> {
  _$GUpdatePricesVars? _$v;

  ListBuilder<_i1.GPriceUpdateArgs>? _data;
  ListBuilder<_i1.GPriceUpdateArgs> get data =>
      _$this._data ??= new ListBuilder<_i1.GPriceUpdateArgs>();
  set data(ListBuilder<_i1.GPriceUpdateArgs>? data) => _$this._data = data;

  GUpdatePricesVarsBuilder();

  GUpdatePricesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePricesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePricesVars;
  }

  @override
  void update(void Function(GUpdatePricesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePricesVars build() => _build();

  _$GUpdatePricesVars _build() {
    _$GUpdatePricesVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePricesVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePricesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveDealersVars extends GTestDriveDealersVars {
  @override
  final _i1.GTestDriveDealerWhereInput where;
  @override
  final int? take;
  @override
  final int skip;

  factory _$GTestDriveDealersVars(
          [void Function(GTestDriveDealersVarsBuilder)? updates]) =>
      (new GTestDriveDealersVarsBuilder()..update(updates))._build();

  _$GTestDriveDealersVars._(
      {required this.where, this.take, required this.skip})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GTestDriveDealersVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        skip, r'GTestDriveDealersVars', 'skip');
  }

  @override
  GTestDriveDealersVars rebuild(
          void Function(GTestDriveDealersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveDealersVarsBuilder toBuilder() =>
      new GTestDriveDealersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveDealersVars &&
        where == other.where &&
        take == other.take &&
        skip == other.skip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTestDriveDealersVars')
          ..add('where', where)
          ..add('take', take)
          ..add('skip', skip))
        .toString();
  }
}

class GTestDriveDealersVarsBuilder
    implements Builder<GTestDriveDealersVars, GTestDriveDealersVarsBuilder> {
  _$GTestDriveDealersVars? _$v;

  _i1.GTestDriveDealerWhereInputBuilder? _where;
  _i1.GTestDriveDealerWhereInputBuilder get where =>
      _$this._where ??= new _i1.GTestDriveDealerWhereInputBuilder();
  set where(_i1.GTestDriveDealerWhereInputBuilder? where) =>
      _$this._where = where;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  GTestDriveDealersVarsBuilder();

  GTestDriveDealersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _take = $v.take;
      _skip = $v.skip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveDealersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTestDriveDealersVars;
  }

  @override
  void update(void Function(GTestDriveDealersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveDealersVars build() => _build();

  _$GTestDriveDealersVars _build() {
    _$GTestDriveDealersVars _$result;
    try {
      _$result = _$v ??
          new _$GTestDriveDealersVars._(
            where: where.build(),
            take: take,
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GTestDriveDealersVars', 'skip'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveDealersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateTestDriveDealerVars extends GUpdateTestDriveDealerVars {
  @override
  final _i1.GTestDriveDealerWhereUniqueInput where;
  @override
  final _i1.GTestDriveDealerUpdateInput data;

  factory _$GUpdateTestDriveDealerVars(
          [void Function(GUpdateTestDriveDealerVarsBuilder)? updates]) =>
      (new GUpdateTestDriveDealerVarsBuilder()..update(updates))._build();

  _$GUpdateTestDriveDealerVars._({required this.where, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GUpdateTestDriveDealerVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GUpdateTestDriveDealerVars', 'data');
  }

  @override
  GUpdateTestDriveDealerVars rebuild(
          void Function(GUpdateTestDriveDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateTestDriveDealerVarsBuilder toBuilder() =>
      new GUpdateTestDriveDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateTestDriveDealerVars &&
        where == other.where &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateTestDriveDealerVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateTestDriveDealerVarsBuilder
    implements
        Builder<GUpdateTestDriveDealerVars, GUpdateTestDriveDealerVarsBuilder> {
  _$GUpdateTestDriveDealerVars? _$v;

  _i1.GTestDriveDealerWhereUniqueInputBuilder? _where;
  _i1.GTestDriveDealerWhereUniqueInputBuilder get where =>
      _$this._where ??= new _i1.GTestDriveDealerWhereUniqueInputBuilder();
  set where(_i1.GTestDriveDealerWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GTestDriveDealerUpdateInputBuilder? _data;
  _i1.GTestDriveDealerUpdateInputBuilder get data =>
      _$this._data ??= new _i1.GTestDriveDealerUpdateInputBuilder();
  set data(_i1.GTestDriveDealerUpdateInputBuilder? data) => _$this._data = data;

  GUpdateTestDriveDealerVarsBuilder();

  GUpdateTestDriveDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateTestDriveDealerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateTestDriveDealerVars;
  }

  @override
  void update(void Function(GUpdateTestDriveDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateTestDriveDealerVars build() => _build();

  _$GUpdateTestDriveDealerVars _build() {
    _$GUpdateTestDriveDealerVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateTestDriveDealerVars._(
            where: where.build(),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateTestDriveDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateTestDriveDealerVars extends GCreateTestDriveDealerVars {
  @override
  final _i1.GTestDriveDealerCreateInput data;

  factory _$GCreateTestDriveDealerVars(
          [void Function(GCreateTestDriveDealerVarsBuilder)? updates]) =>
      (new GCreateTestDriveDealerVarsBuilder()..update(updates))._build();

  _$GCreateTestDriveDealerVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateTestDriveDealerVars', 'data');
  }

  @override
  GCreateTestDriveDealerVars rebuild(
          void Function(GCreateTestDriveDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateTestDriveDealerVarsBuilder toBuilder() =>
      new GCreateTestDriveDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateTestDriveDealerVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateTestDriveDealerVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateTestDriveDealerVarsBuilder
    implements
        Builder<GCreateTestDriveDealerVars, GCreateTestDriveDealerVarsBuilder> {
  _$GCreateTestDriveDealerVars? _$v;

  _i1.GTestDriveDealerCreateInputBuilder? _data;
  _i1.GTestDriveDealerCreateInputBuilder get data =>
      _$this._data ??= new _i1.GTestDriveDealerCreateInputBuilder();
  set data(_i1.GTestDriveDealerCreateInputBuilder? data) => _$this._data = data;

  GCreateTestDriveDealerVarsBuilder();

  GCreateTestDriveDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateTestDriveDealerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateTestDriveDealerVars;
  }

  @override
  void update(void Function(GCreateTestDriveDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateTestDriveDealerVars build() => _build();

  _$GCreateTestDriveDealerVars _build() {
    _$GCreateTestDriveDealerVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateTestDriveDealerVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateTestDriveDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductDealersVars extends GProductDealersVars {
  @override
  final _i1.GProductDealerWhereInput where;
  @override
  final int? take;
  @override
  final int skip;

  factory _$GProductDealersVars(
          [void Function(GProductDealersVarsBuilder)? updates]) =>
      (new GProductDealersVarsBuilder()..update(updates))._build();

  _$GProductDealersVars._({required this.where, this.take, required this.skip})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GProductDealersVars', 'where');
    BuiltValueNullFieldError.checkNotNull(skip, r'GProductDealersVars', 'skip');
  }

  @override
  GProductDealersVars rebuild(
          void Function(GProductDealersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealersVarsBuilder toBuilder() =>
      new GProductDealersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductDealersVars &&
        where == other.where &&
        take == other.take &&
        skip == other.skip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductDealersVars')
          ..add('where', where)
          ..add('take', take)
          ..add('skip', skip))
        .toString();
  }
}

class GProductDealersVarsBuilder
    implements Builder<GProductDealersVars, GProductDealersVarsBuilder> {
  _$GProductDealersVars? _$v;

  _i1.GProductDealerWhereInputBuilder? _where;
  _i1.GProductDealerWhereInputBuilder get where =>
      _$this._where ??= new _i1.GProductDealerWhereInputBuilder();
  set where(_i1.GProductDealerWhereInputBuilder? where) =>
      _$this._where = where;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  GProductDealersVarsBuilder();

  GProductDealersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _take = $v.take;
      _skip = $v.skip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductDealersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductDealersVars;
  }

  @override
  void update(void Function(GProductDealersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealersVars build() => _build();

  _$GProductDealersVars _build() {
    _$GProductDealersVars _$result;
    try {
      _$result = _$v ??
          new _$GProductDealersVars._(
            where: where.build(),
            take: take,
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GProductDealersVars', 'skip'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductDealersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateProductDealerVars extends GCreateProductDealerVars {
  @override
  final _i1.GProductDealerCreateInput data;

  factory _$GCreateProductDealerVars(
          [void Function(GCreateProductDealerVarsBuilder)? updates]) =>
      (new GCreateProductDealerVarsBuilder()..update(updates))._build();

  _$GCreateProductDealerVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateProductDealerVars', 'data');
  }

  @override
  GCreateProductDealerVars rebuild(
          void Function(GCreateProductDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateProductDealerVarsBuilder toBuilder() =>
      new GCreateProductDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateProductDealerVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateProductDealerVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateProductDealerVarsBuilder
    implements
        Builder<GCreateProductDealerVars, GCreateProductDealerVarsBuilder> {
  _$GCreateProductDealerVars? _$v;

  _i1.GProductDealerCreateInputBuilder? _data;
  _i1.GProductDealerCreateInputBuilder get data =>
      _$this._data ??= new _i1.GProductDealerCreateInputBuilder();
  set data(_i1.GProductDealerCreateInputBuilder? data) => _$this._data = data;

  GCreateProductDealerVarsBuilder();

  GCreateProductDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateProductDealerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateProductDealerVars;
  }

  @override
  void update(void Function(GCreateProductDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateProductDealerVars build() => _build();

  _$GCreateProductDealerVars _build() {
    _$GCreateProductDealerVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateProductDealerVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateProductDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProductDealerVars extends GUpdateProductDealerVars {
  @override
  final _i1.GProductDealerWhereUniqueInput where;
  @override
  final _i1.GProductDealerUpdateInput data;

  factory _$GUpdateProductDealerVars(
          [void Function(GUpdateProductDealerVarsBuilder)? updates]) =>
      (new GUpdateProductDealerVarsBuilder()..update(updates))._build();

  _$GUpdateProductDealerVars._({required this.where, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GUpdateProductDealerVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GUpdateProductDealerVars', 'data');
  }

  @override
  GUpdateProductDealerVars rebuild(
          void Function(GUpdateProductDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProductDealerVarsBuilder toBuilder() =>
      new GUpdateProductDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProductDealerVars &&
        where == other.where &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateProductDealerVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateProductDealerVarsBuilder
    implements
        Builder<GUpdateProductDealerVars, GUpdateProductDealerVarsBuilder> {
  _$GUpdateProductDealerVars? _$v;

  _i1.GProductDealerWhereUniqueInputBuilder? _where;
  _i1.GProductDealerWhereUniqueInputBuilder get where =>
      _$this._where ??= new _i1.GProductDealerWhereUniqueInputBuilder();
  set where(_i1.GProductDealerWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GProductDealerUpdateInputBuilder? _data;
  _i1.GProductDealerUpdateInputBuilder get data =>
      _$this._data ??= new _i1.GProductDealerUpdateInputBuilder();
  set data(_i1.GProductDealerUpdateInputBuilder? data) => _$this._data = data;

  GUpdateProductDealerVarsBuilder();

  GUpdateProductDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProductDealerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateProductDealerVars;
  }

  @override
  void update(void Function(GUpdateProductDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateProductDealerVars build() => _build();

  _$GUpdateProductDealerVars _build() {
    _$GUpdateProductDealerVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateProductDealerVars._(
            where: where.build(),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateProductDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateProductDealerStockRequestVars
    extends GCreateProductDealerStockRequestVars {
  @override
  final _i1.GProductDealerStockRequestCreateInput data;

  factory _$GCreateProductDealerStockRequestVars(
          [void Function(GCreateProductDealerStockRequestVarsBuilder)?
              updates]) =>
      (new GCreateProductDealerStockRequestVarsBuilder()..update(updates))
          ._build();

  _$GCreateProductDealerStockRequestVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateProductDealerStockRequestVars', 'data');
  }

  @override
  GCreateProductDealerStockRequestVars rebuild(
          void Function(GCreateProductDealerStockRequestVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateProductDealerStockRequestVarsBuilder toBuilder() =>
      new GCreateProductDealerStockRequestVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateProductDealerStockRequestVars && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateProductDealerStockRequestVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateProductDealerStockRequestVarsBuilder
    implements
        Builder<GCreateProductDealerStockRequestVars,
            GCreateProductDealerStockRequestVarsBuilder> {
  _$GCreateProductDealerStockRequestVars? _$v;

  _i1.GProductDealerStockRequestCreateInputBuilder? _data;
  _i1.GProductDealerStockRequestCreateInputBuilder get data =>
      _$this._data ??= new _i1.GProductDealerStockRequestCreateInputBuilder();
  set data(_i1.GProductDealerStockRequestCreateInputBuilder? data) =>
      _$this._data = data;

  GCreateProductDealerStockRequestVarsBuilder();

  GCreateProductDealerStockRequestVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateProductDealerStockRequestVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateProductDealerStockRequestVars;
  }

  @override
  void update(
      void Function(GCreateProductDealerStockRequestVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateProductDealerStockRequestVars build() => _build();

  _$GCreateProductDealerStockRequestVars _build() {
    _$GCreateProductDealerStockRequestVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateProductDealerStockRequestVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateProductDealerStockRequestVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleFilterDataVars extends GVehicleFilterDataVars {
  factory _$GVehicleFilterDataVars(
          [void Function(GVehicleFilterDataVarsBuilder)? updates]) =>
      (new GVehicleFilterDataVarsBuilder()..update(updates))._build();

  _$GVehicleFilterDataVars._() : super._();

  @override
  GVehicleFilterDataVars rebuild(
          void Function(GVehicleFilterDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleFilterDataVarsBuilder toBuilder() =>
      new GVehicleFilterDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleFilterDataVars;
  }

  @override
  int get hashCode {
    return 945814059;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GVehicleFilterDataVars').toString();
  }
}

class GVehicleFilterDataVarsBuilder
    implements Builder<GVehicleFilterDataVars, GVehicleFilterDataVarsBuilder> {
  _$GVehicleFilterDataVars? _$v;

  GVehicleFilterDataVarsBuilder();

  @override
  void replace(GVehicleFilterDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleFilterDataVars;
  }

  @override
  void update(void Function(GVehicleFilterDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleFilterDataVars build() => _build();

  _$GVehicleFilterDataVars _build() {
    final _$result = _$v ?? new _$GVehicleFilterDataVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GProductFilterDataVars extends GProductFilterDataVars {
  factory _$GProductFilterDataVars(
          [void Function(GProductFilterDataVarsBuilder)? updates]) =>
      (new GProductFilterDataVarsBuilder()..update(updates))._build();

  _$GProductFilterDataVars._() : super._();

  @override
  GProductFilterDataVars rebuild(
          void Function(GProductFilterDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductFilterDataVarsBuilder toBuilder() =>
      new GProductFilterDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductFilterDataVars;
  }

  @override
  int get hashCode {
    return 952152778;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GProductFilterDataVars').toString();
  }
}

class GProductFilterDataVarsBuilder
    implements Builder<GProductFilterDataVars, GProductFilterDataVarsBuilder> {
  _$GProductFilterDataVars? _$v;

  GProductFilterDataVarsBuilder();

  @override
  void replace(GProductFilterDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductFilterDataVars;
  }

  @override
  void update(void Function(GProductFilterDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductFilterDataVars build() => _build();

  _$GProductFilterDataVars _build() {
    final _$result = _$v ?? new _$GProductFilterDataVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
