// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehicleVariantsVars> _$gVehicleVariantsVarsSerializer =
    new _$GVehicleVariantsVarsSerializer();
Serializer<GVehicleVariantsCountVars> _$gVehicleVariantsCountVarsSerializer =
    new _$GVehicleVariantsCountVarsSerializer();
Serializer<GCreateVehicleDealerStockRequestVars>
    _$gCreateVehicleDealerStockRequestVarsSerializer =
    new _$GCreateVehicleDealerStockRequestVarsSerializer();
Serializer<GVehicleDealersVars> _$gVehicleDealersVarsSerializer =
    new _$GVehicleDealersVarsSerializer();
Serializer<GCreateVehicleDealerVars> _$gCreateVehicleDealerVarsSerializer =
    new _$GCreateVehicleDealerVarsSerializer();
Serializer<GPriceCategoriesVars> _$gPriceCategoriesVarsSerializer =
    new _$GPriceCategoriesVarsSerializer();

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
    ];

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
              take: take);
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
      _$result = _$v ?? new _$GVehicleVariantsCountVars._(where: where.build());
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
          new _$GCreateVehicleDealerStockRequestVars._(data: data.build());
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

class _$GVehicleDealersVars extends GVehicleDealersVars {
  @override
  final _i1.GVehicleDealerWhereInput where;

  factory _$GVehicleDealersVars(
          [void Function(GVehicleDealersVarsBuilder)? updates]) =>
      (new GVehicleDealersVarsBuilder()..update(updates))._build();

  _$GVehicleDealersVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleDealersVars', 'where');
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
    return other is GVehicleDealersVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GVehicleDealersVars')
          ..add('where', where))
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

  GVehicleDealersVarsBuilder();

  GVehicleDealersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
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
      _$result = _$v ?? new _$GVehicleDealersVars._(where: where.build());
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
      _$result = _$v ?? new _$GCreateVehicleDealerVars._(data: data.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
