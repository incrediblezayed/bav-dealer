// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehicleOrdersVars> _$gVehicleOrdersVarsSerializer =
    new _$GVehicleOrdersVarsSerializer();
Serializer<GTestDriveOrdersVars> _$gTestDriveOrdersVarsSerializer =
    new _$GTestDriveOrdersVarsSerializer();

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
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GVehicleOrderWhereInput)),
    ];

    return result;
  }

  @override
  GVehicleOrdersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleOrdersVarsBuilder();

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
    ];

    return result;
  }

  @override
  GTestDriveOrdersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTestDriveOrdersVarsBuilder();

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

class _$GVehicleOrdersVars extends GVehicleOrdersVars {
  @override
  final _i1.GVehicleOrderWhereInput where;

  factory _$GVehicleOrdersVars(
          [void Function(GVehicleOrdersVarsBuilder)? updates]) =>
      (new GVehicleOrdersVarsBuilder()..update(updates))._build();

  _$GVehicleOrdersVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleOrdersVars', 'where');
  }

  @override
  GVehicleOrdersVars rebuild(
          void Function(GVehicleOrdersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleOrdersVarsBuilder toBuilder() =>
      new GVehicleOrdersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleOrdersVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GVehicleOrdersVars')
          ..add('where', where))
        .toString();
  }
}

class GVehicleOrdersVarsBuilder
    implements Builder<GVehicleOrdersVars, GVehicleOrdersVarsBuilder> {
  _$GVehicleOrdersVars? _$v;

  _i1.GVehicleOrderWhereInputBuilder? _where;
  _i1.GVehicleOrderWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleOrderWhereInputBuilder();
  set where(_i1.GVehicleOrderWhereInputBuilder? where) => _$this._where = where;

  GVehicleOrdersVarsBuilder();

  GVehicleOrdersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleOrdersVars other) {
    ArgumentError.checkNotNull(other, 'other');
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
      _$result = _$v ?? new _$GVehicleOrdersVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleOrdersVars', _$failedField, e.toString());
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

  factory _$GTestDriveOrdersVars(
          [void Function(GTestDriveOrdersVarsBuilder)? updates]) =>
      (new GTestDriveOrdersVarsBuilder()..update(updates))._build();

  _$GTestDriveOrdersVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GTestDriveOrdersVars', 'where');
  }

  @override
  GTestDriveOrdersVars rebuild(
          void Function(GTestDriveOrdersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTestDriveOrdersVarsBuilder toBuilder() =>
      new GTestDriveOrdersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTestDriveOrdersVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GTestDriveOrdersVars')
          ..add('where', where))
        .toString();
  }
}

class GTestDriveOrdersVarsBuilder
    implements Builder<GTestDriveOrdersVars, GTestDriveOrdersVarsBuilder> {
  _$GTestDriveOrdersVars? _$v;

  _i1.GTestDriveOrderWhereInputBuilder? _where;
  _i1.GTestDriveOrderWhereInputBuilder get where =>
      _$this._where ??= new _i1.GTestDriveOrderWhereInputBuilder();
  set where(_i1.GTestDriveOrderWhereInputBuilder? where) =>
      _$this._where = where;

  GTestDriveOrdersVarsBuilder();

  GTestDriveOrdersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTestDriveOrdersVars other) {
    ArgumentError.checkNotNull(other, 'other');
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
      _$result = _$v ?? new _$GTestDriveOrdersVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTestDriveOrdersVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
