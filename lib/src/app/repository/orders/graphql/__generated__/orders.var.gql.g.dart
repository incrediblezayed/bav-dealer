// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductOrdersVars> _$gProductOrdersVarsSerializer =
    _$GProductOrdersVarsSerializer();
Serializer<GVehicleOrdersVars> _$gVehicleOrdersVarsSerializer =
    _$GVehicleOrdersVarsSerializer();
Serializer<GVehicleOrdersCountVars> _$gVehicleOrdersCountVarsSerializer =
    _$GVehicleOrdersCountVarsSerializer();
Serializer<GTestDriveOrdersVars> _$gTestDriveOrdersVarsSerializer =
    _$GTestDriveOrdersVarsSerializer();
Serializer<GTestDriveOrdersCountVars> _$gTestDriveOrdersCountVarsSerializer =
    _$GTestDriveOrdersCountVarsSerializer();
Serializer<GUpdateProductOrderVars> _$gUpdateProductOrderVarsSerializer =
    _$GUpdateProductOrderVarsSerializer();
Serializer<GUpdateVehicleOrderVars> _$gUpdateVehicleOrderVarsSerializer =
    _$GUpdateVehicleOrderVarsSerializer();
Serializer<GUpdateTestDriveOrderVars> _$gUpdateTestDriveOrderVarsSerializer =
    _$GUpdateTestDriveOrderVarsSerializer();
Serializer<GCreateOrderRejectionByDealerVars>
    _$gCreateOrderRejectionByDealerVarsSerializer =
    _$GCreateOrderRejectionByDealerVarsSerializer();

class _$GProductOrdersVarsSerializer
    implements StructuredSerializer<GProductOrdersVars> {
  @override
  final Iterable<Type> types = const [GProductOrdersVars, _$GProductOrdersVars];
  @override
  final String wireName = 'GProductOrdersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductOrdersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductOrderWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList,
              const [const FullType(_i1.GProductOrderOrderByInput)])),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'take',
      serializers.serialize(object.take, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GProductOrdersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GProductOrdersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductOrderWhereInput))!
              as _i1.GProductOrderWhereInput);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GProductOrderOrderByInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersVarsSerializer
    implements StructuredSerializer<GVehicleOrdersVars> {
  @override
  final Iterable<Type> types = const [GVehicleOrdersVars, _$GVehicleOrdersVars];
  @override
  final String wireName = 'GVehicleOrdersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleOrdersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList,
              const [const FullType(_i1.GVehicleOrderOrderByInput)])),
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleOrderWhereInput)),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'take',
      serializers.serialize(object.take, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GVehicleOrdersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GVehicleOrdersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GVehicleOrderOrderByInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleOrderWhereInput))!
              as _i1.GVehicleOrderWhereInput);
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehicleOrdersCountVarsSerializer
    implements StructuredSerializer<GVehicleOrdersCountVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleOrdersCountVars,
    _$GVehicleOrdersCountVars
  ];
  @override
  final String wireName = 'GVehicleOrdersCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleOrdersCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleOrderWhereInput)),
    ];

    return result;
  }

  @override
  GVehicleOrdersCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GVehicleOrdersCountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleOrderWhereInput))!
              as _i1.GVehicleOrderWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersVarsSerializer
    implements StructuredSerializer<GTestDriveOrdersVars> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersVars,
    _$GTestDriveOrdersVars
  ];
  @override
  final String wireName = 'GTestDriveOrdersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTestDriveOrdersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GTestDriveOrderWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList,
              const [const FullType(_i1.GTestDriveOrderOrderByInput)])),
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'take',
      serializers.serialize(object.take, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GTestDriveOrdersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GTestDriveOrdersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTestDriveOrderWhereInput))!
              as _i1.GTestDriveOrderWhereInput);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GTestDriveOrderOrderByInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'take':
          result.take = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GTestDriveOrdersCountVarsSerializer
    implements StructuredSerializer<GTestDriveOrdersCountVars> {
  @override
  final Iterable<Type> types = const [
    GTestDriveOrdersCountVars,
    _$GTestDriveOrdersCountVars
  ];
  @override
  final String wireName = 'GTestDriveOrdersCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTestDriveOrdersCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GTestDriveOrderWhereInput)),
    ];

    return result;
  }

  @override
  GTestDriveOrdersCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GTestDriveOrdersCountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTestDriveOrderWhereInput))!
              as _i1.GTestDriveOrderWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateProductOrderVarsSerializer
    implements StructuredSerializer<GUpdateProductOrderVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateProductOrderVars,
    _$GUpdateProductOrderVars
  ];
  @override
  final String wireName = 'GUpdateProductOrderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateProductOrderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GProductOrderWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GProductOrderUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateProductOrderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUpdateProductOrderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GProductOrderWhereUniqueInput))!
              as _i1.GProductOrderWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductOrderUpdateInput))!
              as _i1.GProductOrderUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateVehicleOrderVarsSerializer
    implements StructuredSerializer<GUpdateVehicleOrderVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateVehicleOrderVars,
    _$GUpdateVehicleOrderVars
  ];
  @override
  final String wireName = 'GUpdateVehicleOrderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateVehicleOrderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleOrderWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GVehicleOrderUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateVehicleOrderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUpdateVehicleOrderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GVehicleOrderWhereUniqueInput))!
              as _i1.GVehicleOrderWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVehicleOrderUpdateInput))!
              as _i1.GVehicleOrderUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateTestDriveOrderVarsSerializer
    implements StructuredSerializer<GUpdateTestDriveOrderVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateTestDriveOrderVars,
    _$GUpdateTestDriveOrderVars
  ];
  @override
  final String wireName = 'GUpdateTestDriveOrderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateTestDriveOrderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GTestDriveOrderWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GTestDriveOrderUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateTestDriveOrderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUpdateTestDriveOrderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GTestDriveOrderWhereUniqueInput))!
              as _i1.GTestDriveOrderWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GTestDriveOrderUpdateInput))!
              as _i1.GTestDriveOrderUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateOrderRejectionByDealerVarsSerializer
    implements StructuredSerializer<GCreateOrderRejectionByDealerVars> {
  @override
  final Iterable<Type> types = const [
    GCreateOrderRejectionByDealerVars,
    _$GCreateOrderRejectionByDealerVars
  ];
  @override
  final String wireName = 'GCreateOrderRejectionByDealerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateOrderRejectionByDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(_i1.GOrderRejectionByDealerCreateInput)),
    ];

    return result;
  }

  @override
  GCreateOrderRejectionByDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GCreateOrderRejectionByDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GOrderRejectionByDealerCreateInput))!
              as _i1.GOrderRejectionByDealerCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductOrdersVars extends GProductOrdersVars {
  @override
  final _i1.GProductOrderWhereInput where;
  @override
  final BuiltList<_i1.GProductOrderOrderByInput> orderBy;
  @override
  final int skip;
  @override
  final int take;

  factory _$GProductOrdersVars(
          [void Function(GProductOrdersVarsBuilder)? updates]) =>
      (GProductOrdersVarsBuilder()..update(updates))._build();

  _$GProductOrdersVars._(
      {required this.where,
      required this.orderBy,
      required this.skip,
      required this.take})
      : super._();
  @override
  GProductOrdersVars rebuild(
          void Function(GProductOrdersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductOrdersVarsBuilder toBuilder() =>
      GProductOrdersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductOrdersVars &&
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
    return (newBuiltValueToStringHelper(r'GProductOrdersVars')
          ..add('where', where)
          ..add('orderBy', orderBy)
          ..add('skip', skip)
          ..add('take', take))
        .toString();
  }
}

class GProductOrdersVarsBuilder
    implements Builder<GProductOrdersVars, GProductOrdersVarsBuilder> {
  _$GProductOrdersVars? _$v;

  _i1.GProductOrderWhereInputBuilder? _where;
  _i1.GProductOrderWhereInputBuilder get where =>
      _$this._where ??= _i1.GProductOrderWhereInputBuilder();
  set where(_i1.GProductOrderWhereInputBuilder? where) => _$this._where = where;

  ListBuilder<_i1.GProductOrderOrderByInput>? _orderBy;
  ListBuilder<_i1.GProductOrderOrderByInput> get orderBy =>
      _$this._orderBy ??= ListBuilder<_i1.GProductOrderOrderByInput>();
  set orderBy(ListBuilder<_i1.GProductOrderOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  GProductOrdersVarsBuilder();

  GProductOrdersVarsBuilder get _$this {
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
  void replace(GProductOrdersVars other) {
    _$v = other as _$GProductOrdersVars;
  }

  @override
  void update(void Function(GProductOrdersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductOrdersVars build() => _build();

  _$GProductOrdersVars _build() {
    _$GProductOrdersVars _$result;
    try {
      _$result = _$v ??
          _$GProductOrdersVars._(
            where: where.build(),
            orderBy: orderBy.build(),
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GProductOrdersVars', 'skip'),
            take: BuiltValueNullFieldError.checkNotNull(
                take, r'GProductOrdersVars', 'take'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'orderBy';
        orderBy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GProductOrdersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersVars extends GVehicleOrdersVars {
  @override
  final BuiltList<_i1.GVehicleOrderOrderByInput> orderBy;
  @override
  final _i1.GVehicleOrderWhereInput where;
  @override
  final int skip;
  @override
  final int take;

  factory _$GVehicleOrdersVars(
          [void Function(GVehicleOrdersVarsBuilder)? updates]) =>
      (GVehicleOrdersVarsBuilder()..update(updates))._build();

  _$GVehicleOrdersVars._(
      {required this.orderBy,
      required this.where,
      required this.skip,
      required this.take})
      : super._();
  @override
  GVehicleOrdersVars rebuild(
          void Function(GVehicleOrdersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersVarsBuilder toBuilder() =>
      GVehicleOrdersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersVars &&
        orderBy == other.orderBy &&
        where == other.where &&
        skip == other.skip &&
        take == other.take;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderBy.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleOrdersVars')
          ..add('orderBy', orderBy)
          ..add('where', where)
          ..add('skip', skip)
          ..add('take', take))
        .toString();
  }
}

class GVehicleOrdersVarsBuilder
    implements Builder<GVehicleOrdersVars, GVehicleOrdersVarsBuilder> {
  _$GVehicleOrdersVars? _$v;

  ListBuilder<_i1.GVehicleOrderOrderByInput>? _orderBy;
  ListBuilder<_i1.GVehicleOrderOrderByInput> get orderBy =>
      _$this._orderBy ??= ListBuilder<_i1.GVehicleOrderOrderByInput>();
  set orderBy(ListBuilder<_i1.GVehicleOrderOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  _i1.GVehicleOrderWhereInputBuilder? _where;
  _i1.GVehicleOrderWhereInputBuilder get where =>
      _$this._where ??= _i1.GVehicleOrderWhereInputBuilder();
  set where(_i1.GVehicleOrderWhereInputBuilder? where) => _$this._where = where;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  GVehicleOrdersVarsBuilder();

  GVehicleOrdersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderBy = $v.orderBy.toBuilder();
      _where = $v.where.toBuilder();
      _skip = $v.skip;
      _take = $v.take;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersVars other) {
    _$v = other as _$GVehicleOrdersVars;
  }

  @override
  void update(void Function(GVehicleOrdersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersVars build() => _build();

  _$GVehicleOrdersVars _build() {
    _$GVehicleOrdersVars _$result;
    try {
      _$result = _$v ??
          _$GVehicleOrdersVars._(
            orderBy: orderBy.build(),
            where: where.build(),
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GVehicleOrdersVars', 'skip'),
            take: BuiltValueNullFieldError.checkNotNull(
                take, r'GVehicleOrdersVars', 'take'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderBy';
        orderBy.build();
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GVehicleOrdersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleOrdersCountVars extends GVehicleOrdersCountVars {
  @override
  final _i1.GVehicleOrderWhereInput where;

  factory _$GVehicleOrdersCountVars(
          [void Function(GVehicleOrdersCountVarsBuilder)? updates]) =>
      (GVehicleOrdersCountVarsBuilder()..update(updates))._build();

  _$GVehicleOrdersCountVars._({required this.where}) : super._();
  @override
  GVehicleOrdersCountVars rebuild(
          void Function(GVehicleOrdersCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersCountVarsBuilder toBuilder() =>
      GVehicleOrdersCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersCountVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GVehicleOrdersCountVars')
          ..add('where', where))
        .toString();
  }
}

class GVehicleOrdersCountVarsBuilder
    implements
        Builder<GVehicleOrdersCountVars, GVehicleOrdersCountVarsBuilder> {
  _$GVehicleOrdersCountVars? _$v;

  _i1.GVehicleOrderWhereInputBuilder? _where;
  _i1.GVehicleOrderWhereInputBuilder get where =>
      _$this._where ??= _i1.GVehicleOrderWhereInputBuilder();
  set where(_i1.GVehicleOrderWhereInputBuilder? where) => _$this._where = where;

  GVehicleOrdersCountVarsBuilder();

  GVehicleOrdersCountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersCountVars other) {
    _$v = other as _$GVehicleOrdersCountVars;
  }

  @override
  void update(void Function(GVehicleOrdersCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleOrdersCountVars build() => _build();

  _$GVehicleOrdersCountVars _build() {
    _$GVehicleOrdersCountVars _$result;
    try {
      _$result = _$v ??
          _$GVehicleOrdersCountVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GVehicleOrdersCountVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersVars extends GTestDriveOrdersVars {
  @override
  final _i1.GTestDriveOrderWhereInput where;
  @override
  final BuiltList<_i1.GTestDriveOrderOrderByInput> orderBy;
  @override
  final int skip;
  @override
  final int take;

  factory _$GTestDriveOrdersVars(
          [void Function(GTestDriveOrdersVarsBuilder)? updates]) =>
      (GTestDriveOrdersVarsBuilder()..update(updates))._build();

  _$GTestDriveOrdersVars._(
      {required this.where,
      required this.orderBy,
      required this.skip,
      required this.take})
      : super._();
  @override
  GTestDriveOrdersVars rebuild(
          void Function(GTestDriveOrdersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersVarsBuilder toBuilder() =>
      GTestDriveOrdersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersVars &&
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
    return (newBuiltValueToStringHelper(r'GTestDriveOrdersVars')
          ..add('where', where)
          ..add('orderBy', orderBy)
          ..add('skip', skip)
          ..add('take', take))
        .toString();
  }
}

class GTestDriveOrdersVarsBuilder
    implements Builder<GTestDriveOrdersVars, GTestDriveOrdersVarsBuilder> {
  _$GTestDriveOrdersVars? _$v;

  _i1.GTestDriveOrderWhereInputBuilder? _where;
  _i1.GTestDriveOrderWhereInputBuilder get where =>
      _$this._where ??= _i1.GTestDriveOrderWhereInputBuilder();
  set where(_i1.GTestDriveOrderWhereInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<_i1.GTestDriveOrderOrderByInput>? _orderBy;
  ListBuilder<_i1.GTestDriveOrderOrderByInput> get orderBy =>
      _$this._orderBy ??= ListBuilder<_i1.GTestDriveOrderOrderByInput>();
  set orderBy(ListBuilder<_i1.GTestDriveOrderOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  GTestDriveOrdersVarsBuilder();

  GTestDriveOrdersVarsBuilder get _$this {
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
  void replace(GTestDriveOrdersVars other) {
    _$v = other as _$GTestDriveOrdersVars;
  }

  @override
  void update(void Function(GTestDriveOrdersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersVars build() => _build();

  _$GTestDriveOrdersVars _build() {
    _$GTestDriveOrdersVars _$result;
    try {
      _$result = _$v ??
          _$GTestDriveOrdersVars._(
            where: where.build(),
            orderBy: orderBy.build(),
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GTestDriveOrdersVars', 'skip'),
            take: BuiltValueNullFieldError.checkNotNull(
                take, r'GTestDriveOrdersVars', 'take'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'orderBy';
        orderBy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GTestDriveOrdersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTestDriveOrdersCountVars extends GTestDriveOrdersCountVars {
  @override
  final _i1.GTestDriveOrderWhereInput where;

  factory _$GTestDriveOrdersCountVars(
          [void Function(GTestDriveOrdersCountVarsBuilder)? updates]) =>
      (GTestDriveOrdersCountVarsBuilder()..update(updates))._build();

  _$GTestDriveOrdersCountVars._({required this.where}) : super._();
  @override
  GTestDriveOrdersCountVars rebuild(
          void Function(GTestDriveOrdersCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersCountVarsBuilder toBuilder() =>
      GTestDriveOrdersCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersCountVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GTestDriveOrdersCountVars')
          ..add('where', where))
        .toString();
  }
}

class GTestDriveOrdersCountVarsBuilder
    implements
        Builder<GTestDriveOrdersCountVars, GTestDriveOrdersCountVarsBuilder> {
  _$GTestDriveOrdersCountVars? _$v;

  _i1.GTestDriveOrderWhereInputBuilder? _where;
  _i1.GTestDriveOrderWhereInputBuilder get where =>
      _$this._where ??= _i1.GTestDriveOrderWhereInputBuilder();
  set where(_i1.GTestDriveOrderWhereInputBuilder? where) =>
      _$this._where = where;

  GTestDriveOrdersCountVarsBuilder();

  GTestDriveOrdersCountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersCountVars other) {
    _$v = other as _$GTestDriveOrdersCountVars;
  }

  @override
  void update(void Function(GTestDriveOrdersCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTestDriveOrdersCountVars build() => _build();

  _$GTestDriveOrdersCountVars _build() {
    _$GTestDriveOrdersCountVars _$result;
    try {
      _$result = _$v ??
          _$GTestDriveOrdersCountVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GTestDriveOrdersCountVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateProductOrderVars extends GUpdateProductOrderVars {
  @override
  final _i1.GProductOrderWhereUniqueInput where;
  @override
  final _i1.GProductOrderUpdateInput data;

  factory _$GUpdateProductOrderVars(
          [void Function(GUpdateProductOrderVarsBuilder)? updates]) =>
      (GUpdateProductOrderVarsBuilder()..update(updates))._build();

  _$GUpdateProductOrderVars._({required this.where, required this.data})
      : super._();
  @override
  GUpdateProductOrderVars rebuild(
          void Function(GUpdateProductOrderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateProductOrderVarsBuilder toBuilder() =>
      GUpdateProductOrderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateProductOrderVars &&
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
    return (newBuiltValueToStringHelper(r'GUpdateProductOrderVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateProductOrderVarsBuilder
    implements
        Builder<GUpdateProductOrderVars, GUpdateProductOrderVarsBuilder> {
  _$GUpdateProductOrderVars? _$v;

  _i1.GProductOrderWhereUniqueInputBuilder? _where;
  _i1.GProductOrderWhereUniqueInputBuilder get where =>
      _$this._where ??= _i1.GProductOrderWhereUniqueInputBuilder();
  set where(_i1.GProductOrderWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GProductOrderUpdateInputBuilder? _data;
  _i1.GProductOrderUpdateInputBuilder get data =>
      _$this._data ??= _i1.GProductOrderUpdateInputBuilder();
  set data(_i1.GProductOrderUpdateInputBuilder? data) => _$this._data = data;

  GUpdateProductOrderVarsBuilder();

  GUpdateProductOrderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateProductOrderVars other) {
    _$v = other as _$GUpdateProductOrderVars;
  }

  @override
  void update(void Function(GUpdateProductOrderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateProductOrderVars build() => _build();

  _$GUpdateProductOrderVars _build() {
    _$GUpdateProductOrderVars _$result;
    try {
      _$result = _$v ??
          _$GUpdateProductOrderVars._(
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
        throw BuiltValueNestedFieldError(
            r'GUpdateProductOrderVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateVehicleOrderVars extends GUpdateVehicleOrderVars {
  @override
  final _i1.GVehicleOrderWhereUniqueInput where;
  @override
  final _i1.GVehicleOrderUpdateInput data;

  factory _$GUpdateVehicleOrderVars(
          [void Function(GUpdateVehicleOrderVarsBuilder)? updates]) =>
      (GUpdateVehicleOrderVarsBuilder()..update(updates))._build();

  _$GUpdateVehicleOrderVars._({required this.where, required this.data})
      : super._();
  @override
  GUpdateVehicleOrderVars rebuild(
          void Function(GUpdateVehicleOrderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateVehicleOrderVarsBuilder toBuilder() =>
      GUpdateVehicleOrderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateVehicleOrderVars &&
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
    return (newBuiltValueToStringHelper(r'GUpdateVehicleOrderVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateVehicleOrderVarsBuilder
    implements
        Builder<GUpdateVehicleOrderVars, GUpdateVehicleOrderVarsBuilder> {
  _$GUpdateVehicleOrderVars? _$v;

  _i1.GVehicleOrderWhereUniqueInputBuilder? _where;
  _i1.GVehicleOrderWhereUniqueInputBuilder get where =>
      _$this._where ??= _i1.GVehicleOrderWhereUniqueInputBuilder();
  set where(_i1.GVehicleOrderWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GVehicleOrderUpdateInputBuilder? _data;
  _i1.GVehicleOrderUpdateInputBuilder get data =>
      _$this._data ??= _i1.GVehicleOrderUpdateInputBuilder();
  set data(_i1.GVehicleOrderUpdateInputBuilder? data) => _$this._data = data;

  GUpdateVehicleOrderVarsBuilder();

  GUpdateVehicleOrderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateVehicleOrderVars other) {
    _$v = other as _$GUpdateVehicleOrderVars;
  }

  @override
  void update(void Function(GUpdateVehicleOrderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateVehicleOrderVars build() => _build();

  _$GUpdateVehicleOrderVars _build() {
    _$GUpdateVehicleOrderVars _$result;
    try {
      _$result = _$v ??
          _$GUpdateVehicleOrderVars._(
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
        throw BuiltValueNestedFieldError(
            r'GUpdateVehicleOrderVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateTestDriveOrderVars extends GUpdateTestDriveOrderVars {
  @override
  final _i1.GTestDriveOrderWhereUniqueInput where;
  @override
  final _i1.GTestDriveOrderUpdateInput data;

  factory _$GUpdateTestDriveOrderVars(
          [void Function(GUpdateTestDriveOrderVarsBuilder)? updates]) =>
      (GUpdateTestDriveOrderVarsBuilder()..update(updates))._build();

  _$GUpdateTestDriveOrderVars._({required this.where, required this.data})
      : super._();
  @override
  GUpdateTestDriveOrderVars rebuild(
          void Function(GUpdateTestDriveOrderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateTestDriveOrderVarsBuilder toBuilder() =>
      GUpdateTestDriveOrderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateTestDriveOrderVars &&
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
    return (newBuiltValueToStringHelper(r'GUpdateTestDriveOrderVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateTestDriveOrderVarsBuilder
    implements
        Builder<GUpdateTestDriveOrderVars, GUpdateTestDriveOrderVarsBuilder> {
  _$GUpdateTestDriveOrderVars? _$v;

  _i1.GTestDriveOrderWhereUniqueInputBuilder? _where;
  _i1.GTestDriveOrderWhereUniqueInputBuilder get where =>
      _$this._where ??= _i1.GTestDriveOrderWhereUniqueInputBuilder();
  set where(_i1.GTestDriveOrderWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GTestDriveOrderUpdateInputBuilder? _data;
  _i1.GTestDriveOrderUpdateInputBuilder get data =>
      _$this._data ??= _i1.GTestDriveOrderUpdateInputBuilder();
  set data(_i1.GTestDriveOrderUpdateInputBuilder? data) => _$this._data = data;

  GUpdateTestDriveOrderVarsBuilder();

  GUpdateTestDriveOrderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateTestDriveOrderVars other) {
    _$v = other as _$GUpdateTestDriveOrderVars;
  }

  @override
  void update(void Function(GUpdateTestDriveOrderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateTestDriveOrderVars build() => _build();

  _$GUpdateTestDriveOrderVars _build() {
    _$GUpdateTestDriveOrderVars _$result;
    try {
      _$result = _$v ??
          _$GUpdateTestDriveOrderVars._(
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
        throw BuiltValueNestedFieldError(
            r'GUpdateTestDriveOrderVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateOrderRejectionByDealerVars
    extends GCreateOrderRejectionByDealerVars {
  @override
  final _i1.GOrderRejectionByDealerCreateInput data;

  factory _$GCreateOrderRejectionByDealerVars(
          [void Function(GCreateOrderRejectionByDealerVarsBuilder)? updates]) =>
      (GCreateOrderRejectionByDealerVarsBuilder()..update(updates))._build();

  _$GCreateOrderRejectionByDealerVars._({required this.data}) : super._();
  @override
  GCreateOrderRejectionByDealerVars rebuild(
          void Function(GCreateOrderRejectionByDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateOrderRejectionByDealerVarsBuilder toBuilder() =>
      GCreateOrderRejectionByDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateOrderRejectionByDealerVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GCreateOrderRejectionByDealerVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateOrderRejectionByDealerVarsBuilder
    implements
        Builder<GCreateOrderRejectionByDealerVars,
            GCreateOrderRejectionByDealerVarsBuilder> {
  _$GCreateOrderRejectionByDealerVars? _$v;

  _i1.GOrderRejectionByDealerCreateInputBuilder? _data;
  _i1.GOrderRejectionByDealerCreateInputBuilder get data =>
      _$this._data ??= _i1.GOrderRejectionByDealerCreateInputBuilder();
  set data(_i1.GOrderRejectionByDealerCreateInputBuilder? data) =>
      _$this._data = data;

  GCreateOrderRejectionByDealerVarsBuilder();

  GCreateOrderRejectionByDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateOrderRejectionByDealerVars other) {
    _$v = other as _$GCreateOrderRejectionByDealerVars;
  }

  @override
  void update(
      void Function(GCreateOrderRejectionByDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateOrderRejectionByDealerVars build() => _build();

  _$GCreateOrderRejectionByDealerVars _build() {
    _$GCreateOrderRejectionByDealerVars _$result;
    try {
      _$result = _$v ??
          _$GCreateOrderRejectionByDealerVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GCreateOrderRejectionByDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
