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
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType:
              const FullType(_i1.GProductDealerStockRequestWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList, const [
            const FullType(_i1.GProductDealerStockRequestOrderByInput)
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
  GProductDealerStockRequestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductDealerStockRequestsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GProductDealerStockRequestWhereInput))!
              as _i1.GProductDealerStockRequestWhereInput);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GProductDealerStockRequestOrderByInput)
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
              const FullType(_i1.GVehicleDealerStockRequestWhereInput)),
      'orderBy',
      serializers.serialize(object.orderBy,
          specifiedType: const FullType(BuiltList, const [
            const FullType(_i1.GVehicleDealerStockRequestOrderByInput)
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
                      const FullType(_i1.GVehicleDealerStockRequestWhereInput))!
              as _i1.GVehicleDealerStockRequestWhereInput);
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GVehicleDealerStockRequestOrderByInput)
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

class _$GProductDealerStockRequestsVars
    extends GProductDealerStockRequestsVars {
  @override
  final _i1.GProductDealerStockRequestWhereInput where;
  @override
  final BuiltList<_i1.GProductDealerStockRequestOrderByInput> orderBy;
  @override
  final int? take;
  @override
  final int skip;

  factory _$GProductDealerStockRequestsVars(
          [void Function(GProductDealerStockRequestsVarsBuilder)? updates]) =>
      (new GProductDealerStockRequestsVarsBuilder()..update(updates))._build();

  _$GProductDealerStockRequestsVars._(
      {required this.where,
      required this.orderBy,
      this.take,
      required this.skip})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        where, r'GProductDealerStockRequestsVars', 'where');
    BuiltValueNullFieldError.checkNotNull(
        orderBy, r'GProductDealerStockRequestsVars', 'orderBy');
    BuiltValueNullFieldError.checkNotNull(
        skip, r'GProductDealerStockRequestsVars', 'skip');
  }

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
    return other is GProductDealerStockRequestsVars &&
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
    return (newBuiltValueToStringHelper(r'GProductDealerStockRequestsVars')
          ..add('where', where)
          ..add('orderBy', orderBy)
          ..add('take', take)
          ..add('skip', skip))
        .toString();
  }
}

class GProductDealerStockRequestsVarsBuilder
    implements
        Builder<GProductDealerStockRequestsVars,
            GProductDealerStockRequestsVarsBuilder> {
  _$GProductDealerStockRequestsVars? _$v;

  _i1.GProductDealerStockRequestWhereInputBuilder? _where;
  _i1.GProductDealerStockRequestWhereInputBuilder get where =>
      _$this._where ??= new _i1.GProductDealerStockRequestWhereInputBuilder();
  set where(_i1.GProductDealerStockRequestWhereInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<_i1.GProductDealerStockRequestOrderByInput>? _orderBy;
  ListBuilder<_i1.GProductDealerStockRequestOrderByInput> get orderBy =>
      _$this._orderBy ??=
          new ListBuilder<_i1.GProductDealerStockRequestOrderByInput>();
  set orderBy(
          ListBuilder<_i1.GProductDealerStockRequestOrderByInput>? orderBy) =>
      _$this._orderBy = orderBy;

  int? _take;
  int? get take => _$this._take;
  set take(int? take) => _$this._take = take;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  GProductDealerStockRequestsVarsBuilder();

  GProductDealerStockRequestsVarsBuilder get _$this {
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
    _$GProductDealerStockRequestsVars _$result;
    try {
      _$result = _$v ??
          new _$GProductDealerStockRequestsVars._(
            where: where.build(),
            orderBy: orderBy.build(),
            take: take,
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GProductDealerStockRequestsVars', 'skip'),
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
            r'GProductDealerStockRequestsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsVars
    extends GVehicleDealerStockRequestsVars {
  @override
  final _i1.GVehicleDealerStockRequestWhereInput where;
  @override
  final BuiltList<_i1.GVehicleDealerStockRequestOrderByInput> orderBy;
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

  _i1.GVehicleDealerStockRequestWhereInputBuilder? _where;
  _i1.GVehicleDealerStockRequestWhereInputBuilder get where =>
      _$this._where ??= new _i1.GVehicleDealerStockRequestWhereInputBuilder();
  set where(_i1.GVehicleDealerStockRequestWhereInputBuilder? where) =>
      _$this._where = where;

  ListBuilder<_i1.GVehicleDealerStockRequestOrderByInput>? _orderBy;
  ListBuilder<_i1.GVehicleDealerStockRequestOrderByInput> get orderBy =>
      _$this._orderBy ??=
          new ListBuilder<_i1.GVehicleDealerStockRequestOrderByInput>();
  set orderBy(
          ListBuilder<_i1.GVehicleDealerStockRequestOrderByInput>? orderBy) =>
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
                skip, r'GVehicleDealerStockRequestsVars', 'skip'),
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
            r'GVehicleDealerStockRequestsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
