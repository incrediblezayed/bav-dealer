// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehiclesVars> _$gVehiclesVarsSerializer =
    new _$GVehiclesVarsSerializer();
Serializer<GCreateVehicleDealerStockRequestVars>
    _$gCreateVehicleDealerStockRequestVarsSerializer =
    new _$GCreateVehicleDealerStockRequestVarsSerializer();
Serializer<GVehicleDealersVars> _$gVehicleDealersVarsSerializer =
    new _$GVehicleDealersVarsSerializer();
Serializer<GCreateVehicleDealerVars> _$gCreateVehicleDealerVarsSerializer =
    new _$GCreateVehicleDealerVarsSerializer();

class _$GVehiclesVarsSerializer implements StructuredSerializer<GVehiclesVars> {
  @override
  final Iterable<Type> types = const [GVehiclesVars, _$GVehiclesVars];
  @override
  final String wireName = 'GVehiclesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVehiclesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GVehiclesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GVehiclesVarsBuilder().build();
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
              const FullType(_i2.GVehicleDealerStockRequestCreateInput)),
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
                      _i2.GVehicleDealerStockRequestCreateInput))!
              as _i2.GVehicleDealerStockRequestCreateInput);
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
          specifiedType: const FullType(_i2.GVehicleDealerWhereInput)),
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
                  specifiedType: const FullType(_i2.GVehicleDealerWhereInput))!
              as _i2.GVehicleDealerWhereInput);
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
          specifiedType: const FullType(_i2.GVehicleDealerCreateInput)),
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
                  specifiedType: const FullType(_i2.GVehicleDealerCreateInput))!
              as _i2.GVehicleDealerCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesVars extends GVehiclesVars {
  factory _$GVehiclesVars([void Function(GVehiclesVarsBuilder)? updates]) =>
      (new GVehiclesVarsBuilder()..update(updates))._build();

  _$GVehiclesVars._() : super._();

  @override
  GVehiclesVars rebuild(void Function(GVehiclesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesVarsBuilder toBuilder() => new GVehiclesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehiclesVars;
  }

  @override
  int get hashCode {
    return 50947694;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GVehiclesVars').toString();
  }
}

class GVehiclesVarsBuilder
    implements Builder<GVehiclesVars, GVehiclesVarsBuilder> {
  _$GVehiclesVars? _$v;

  GVehiclesVarsBuilder();

  @override
  void replace(GVehiclesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesVars;
  }

  @override
  void update(void Function(GVehiclesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesVars build() => _build();

  _$GVehiclesVars _build() {
    final _$result = _$v ?? new _$GVehiclesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerStockRequestVars
    extends GCreateVehicleDealerStockRequestVars {
  @override
  final _i2.GVehicleDealerStockRequestCreateInput data;

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

  _i2.GVehicleDealerStockRequestCreateInputBuilder? _data;
  _i2.GVehicleDealerStockRequestCreateInputBuilder get data =>
      _$this._data ??= new _i2.GVehicleDealerStockRequestCreateInputBuilder();
  set data(_i2.GVehicleDealerStockRequestCreateInputBuilder? data) =>
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
  final _i2.GVehicleDealerWhereInput where;

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

  _i2.GVehicleDealerWhereInputBuilder? _where;
  _i2.GVehicleDealerWhereInputBuilder get where =>
      _$this._where ??= new _i2.GVehicleDealerWhereInputBuilder();
  set where(_i2.GVehicleDealerWhereInputBuilder? where) =>
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
  final _i2.GVehicleDealerCreateInput data;

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

  _i2.GVehicleDealerCreateInputBuilder? _data;
  _i2.GVehicleDealerCreateInputBuilder get data =>
      _$this._data ??= new _i2.GVehicleDealerCreateInputBuilder();
  set data(_i2.GVehicleDealerCreateInputBuilder? data) => _$this._data = data;

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
