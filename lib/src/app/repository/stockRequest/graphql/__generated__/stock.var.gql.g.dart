// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductDealerStockRequestsVars>
    _$gProductDealerStockRequestsVarsSerializer =
    new _$GProductDealerStockRequestsVarsSerializer();
Serializer<GVehicleDealerStockRequestsVars>
    _$gVehicleDealerStockRequestsVarsSerializer =
    new _$GVehicleDealerStockRequestsVarsSerializer();
Serializer<GQueryVars> _$gQueryVarsSerializer = new _$GQueryVarsSerializer();

class _$GProductDealerStockRequestsVarsSerializer
    implements StructuredSerializer<GProductDealerStockRequestsVars> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsVars,
    _$GProductDealerStockRequestsVars
  ];
  @override
  final String wireName = 'GProductDealerStockRequestsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductDealerStockRequestsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProductDealerStockRequestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProductDealerStockRequestsVarsBuilder().build();
  }
}

class _$GVehicleDealerStockRequestsVarsSerializer
    implements StructuredSerializer<GVehicleDealerStockRequestsVars> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsVars,
    _$GVehicleDealerStockRequestsVars
  ];
  @override
  final String wireName = 'GVehicleDealerStockRequestsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealerStockRequestsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType:
              const FullType(_i2.GVehicleDealerStockRequestWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList, const [
            const FullType(_i2.GVehicleDealerStockRequestOrderByInput)
          ])),
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
  GVehicleDealerStockRequestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealerStockRequestsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GVehicleDealerStockRequestWhereInput))!
              as _i2.GVehicleDealerStockRequestWhereInput);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i2.GVehicleDealerStockRequestOrderByInput)
              ]))! as BuiltList<Object?>);
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

class _$GQueryVarsSerializer implements StructuredSerializer<GQueryVars> {
  @override
  final Iterable<Type> types = const [GQueryVars, _$GQueryVars];
  @override
  final String wireName = 'GQueryVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType:
              const FullType(_i2.GVehicleDealerStockRequestWhereInput)),
    ];

    return result;
  }

  @override
  GQueryVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GVehicleDealerStockRequestWhereInput))!
              as _i2.GVehicleDealerStockRequestWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductDealerStockRequestsVars
    extends GProductDealerStockRequestsVars {
  factory _$GProductDealerStockRequestsVars(
          [void Function(GProductDealerStockRequestsVarsBuilder)? updates]) =>
      (new GProductDealerStockRequestsVarsBuilder()..update(updates))._build();

  _$GProductDealerStockRequestsVars._() : super._();

  @override
  GProductDealerStockRequestsVars rebuild(
          void Function(GProductDealerStockRequestsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsVarsBuilder toBuilder() =>
      new GProductDealerStockRequestsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductDealerStockRequestsVars;
  }

  @override
  int get hashCode {
    return 785093458;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GProductDealerStockRequestsVars')
        .toString();
  }
}

class GProductDealerStockRequestsVarsBuilder
    implements
        Builder<GProductDealerStockRequestsVars,
            GProductDealerStockRequestsVarsBuilder> {
  _$GProductDealerStockRequestsVars? _$v;

  GProductDealerStockRequestsVarsBuilder();

  @override
  void replace(GProductDealerStockRequestsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductDealerStockRequestsVars;
  }

  @override
  void update(void Function(GProductDealerStockRequestsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsVars build() => _build();

  _$GProductDealerStockRequestsVars _build() {
    final _$result = _$v ?? new _$GProductDealerStockRequestsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsVars
    extends GVehicleDealerStockRequestsVars {
  @override
  final _i2.GVehicleDealerStockRequestWhereInput where;
  @override
  final BuiltList<_i2.GVehicleDealerStockRequestOrderByInput> orderBy;
  @override
  final int? take;
  @override
  final int skip;

  factory _$GVehicleDealerStockRequestsVars(
          [void Function(GVehicleDealerStockRequestsVarsBuilder)? updates]) =>
      (new GVehicleDealerStockRequestsVarsBuilder()..update(updates))._build();

  _$GVehicleDealerStockRequestsVars._(
      {required this.where,
      required this.orderBy,
      this.take,
      required this.skip})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GVehicleDealerStockRequestsVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        orderBy, r'GVehicleDealerStockRequestsVars', 'orderBy');
    BuiltValueNullFieldError.checkNotNull(
        skip, r'GVehicleDealerStockRequestsVars', 'skip');
  }

  @override
  GVehicleDealerStockRequestsVars rebuild(
          void Function(GVehicleDealerStockRequestsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsVarsBuilder toBuilder() =>
      new GVehicleDealerStockRequestsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVehicleDealerStockRequestsVars &&
        where == other.where &&
        orderBy == other.orderBy &&
        take == other.take &&
        skip == other.skip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, orderBy.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealerStockRequestsVars')
          ..add('where', where)
          ..add('orderBy', orderBy)
          ..add('take', take)
          ..add('skip', skip))
        .toString();
  }
}

class GVehicleDealerStockRequestsVarsBuilder
    implements
        Builder<GVehicleDealerStockRequestsVars,
            GVehicleDealerStockRequestsVarsBuilder> {
  _$GVehicleDealerStockRequestsVars? _$v;

  _i2.GVehicleDealerStockRequestWhereInputBuilder? _where;
  _i2.GVehicleDealerStockRequestWhereInputBuilder get where =>
      _$this._where ??= new _i2.GVehicleDealerStockRequestWhereInputBuilder();
  set where(_i2.GVehicleDealerStockRequestWhereInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<_i2.GVehicleDealerStockRequestOrderByInput>? _orderBy;
  ListBuilder<_i2.GVehicleDealerStockRequestOrderByInput> get orderBy =>
      _$this._orderBy ??=
          new ListBuilder<_i2.GVehicleDealerStockRequestOrderByInput>();
  set orderBy(
          ListBuilder<_i2.GVehicleDealerStockRequestOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  GVehicleDealerStockRequestsVarsBuilder();

  GVehicleDealerStockRequestsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _orderBy = $v.orderBy.toBuilder();
      _take = $v.take;
      _skip = $v.skip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealerStockRequestsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealerStockRequestsVars;
  }

  @override
  void update(void Function(GVehicleDealerStockRequestsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsVars build() => _build();

  _$GVehicleDealerStockRequestsVars _build() {
    _$GVehicleDealerStockRequestsVars _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealerStockRequestsVars._(
              where: where.build(),
              orderBy: orderBy.build(),
              take: take,
              skip: BuiltValueNullFieldError.checkNotNull(
                  skip, r'GVehicleDealerStockRequestsVars', 'skip'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'orderBy';
        orderBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealerStockRequestsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GQueryVars extends GQueryVars {
  @override
  final _i2.GVehicleDealerStockRequestWhereInput where;

  factory _$GQueryVars([void Function(GQueryVarsBuilder)? updates]) =>
      (new GQueryVarsBuilder()..update(updates))._build();

  _$GQueryVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(where, r'GQueryVars', 'where');
  }

  @override
  GQueryVars rebuild(void Function(GQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GQueryVarsBuilder toBuilder() => new GQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GQueryVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GQueryVars')..add('where', where))
        .toString();
  }
}

class GQueryVarsBuilder implements Builder<GQueryVars, GQueryVarsBuilder> {
  _$GQueryVars? _$v;

  _i2.GVehicleDealerStockRequestWhereInputBuilder? _where;
  _i2.GVehicleDealerStockRequestWhereInputBuilder get where =>
      _$this._where ??= new _i2.GVehicleDealerStockRequestWhereInputBuilder();
  set where(_i2.GVehicleDealerStockRequestWhereInputBuilder? where) =>
      _$this._where = where;

  GQueryVarsBuilder();

  GQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GQueryVars;
  }

  @override
  void update(void Function(GQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GQueryVars build() => _build();

  _$GQueryVars _build() {
    _$GQueryVars _$result;
    try {
      _$result = _$v ?? new _$GQueryVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GQueryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
