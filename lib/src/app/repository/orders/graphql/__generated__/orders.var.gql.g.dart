// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehicleOrdersVars> _$gVehicleOrdersVarsSerializer =
    new _$GVehicleOrdersVarsSerializer();
Serializer<GTestDriveOrdersVars> _$gTestDriveOrdersVarsSerializer =
    new _$GTestDriveOrdersVarsSerializer();
Serializer<GUpdateVehicleOrderVars> _$gUpdateVehicleOrderVarsSerializer =
    new _$GUpdateVehicleOrderVarsSerializer();
Serializer<GCreateOrderRejectionByDealerVars>
    _$gCreateOrderRejectionByDealerVarsSerializer =
    new _$GCreateOrderRejectionByDealerVarsSerializer();

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
    final result = new GUpdateVehicleOrderVarsBuilder();

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
    final result = new GCreateOrderRejectionByDealerVarsBuilder();

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

class _$GVehicleOrdersVars extends GVehicleOrdersVars {
  @override
  final BuiltList<_i1.GVehicleOrderOrderByInput> orderBy;
  @override
  final _i1.GVehicleOrderWhereInput where;

  factory _$GVehicleOrdersVars(
          [void Function(GVehicleOrdersVarsBuilder)? updates]) =>
      (new GVehicleOrdersVarsBuilder()..update(updates))._build();

  _$GVehicleOrdersVars._({required this.orderBy, required this.where})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        orderBy, r'GVehicleOrdersVars', 'orderBy');
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
    return other is GVehicleOrdersVars &&
        orderBy == other.orderBy &&
        where == other.where;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderBy.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleOrdersVars')
          ..add('orderBy', orderBy)
          ..add('where', where))
        .toString();
  }
}

class GVehicleOrdersVarsBuilder
    implements Builder<GVehicleOrdersVars, GVehicleOrdersVarsBuilder> {
  _$GVehicleOrdersVars? _$v;

  ListBuilder<_i1.GVehicleOrderOrderByInput>? _orderBy;
  ListBuilder<_i1.GVehicleOrderOrderByInput> get orderBy =>
      _$this._orderBy ??= new ListBuilder<_i1.GVehicleOrderOrderByInput>();
  set orderBy(ListBuilder<_i1.GVehicleOrderOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  _i1.GVehicleOrderWhereInputBuilder? _where;
  _i1.GVehicleOrderWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleOrderWhereInputBuilder();
  set where(_i1.GVehicleOrderWhereInputBuilder? where) => _$this._where = where;

  GVehicleOrdersVarsBuilder();

  GVehicleOrdersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderBy = $v.orderBy.toBuilder();
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
      _$result = _$v ??
          new _$GVehicleOrdersVars._(
              orderBy: orderBy.build(), where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderBy';
        orderBy.build();
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

class _$GUpdateVehicleOrderVars extends GUpdateVehicleOrderVars {
  @override
  final _i1.GVehicleOrderWhereUniqueInput where;
  @override
  final _i1.GVehicleOrderUpdateInput data;

  factory _$GUpdateVehicleOrderVars(
          [void Function(GUpdateVehicleOrderVarsBuilder)? updates]) =>
      (new GUpdateVehicleOrderVarsBuilder()..update(updates))._build();

  _$GUpdateVehicleOrderVars._({required this.where, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GUpdateVehicleOrderVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GUpdateVehicleOrderVars', 'data');
  }

  @override
  GUpdateVehicleOrderVars rebuild(
          void Function(GUpdateVehicleOrderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateVehicleOrderVarsBuilder toBuilder() =>
      new GUpdateVehicleOrderVarsBuilder()..replace(this);

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
      _$this._where ??= new _i1.GVehicleOrderWhereUniqueInputBuilder();
  set where(_i1.GVehicleOrderWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  _i1.GVehicleOrderUpdateInputBuilder? _data;
  _i1.GVehicleOrderUpdateInputBuilder get data =>
      _$this._data ??= new _i1.GVehicleOrderUpdateInputBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
          new _$GUpdateVehicleOrderVars._(
              where: where.build(), data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateVehicleOrderVars', _$failedField, e.toString());
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
      (new GCreateOrderRejectionByDealerVarsBuilder()..update(updates))
          ._build();

  _$GCreateOrderRejectionByDealerVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateOrderRejectionByDealerVars', 'data');
  }

  @override
  GCreateOrderRejectionByDealerVars rebuild(
          void Function(GCreateOrderRejectionByDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateOrderRejectionByDealerVarsBuilder toBuilder() =>
      new GCreateOrderRejectionByDealerVarsBuilder()..replace(this);

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
      _$this._data ??= new _i1.GOrderRejectionByDealerCreateInputBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
      _$result =
          _$v ?? new _$GCreateOrderRejectionByDealerVars._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateOrderRejectionByDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
