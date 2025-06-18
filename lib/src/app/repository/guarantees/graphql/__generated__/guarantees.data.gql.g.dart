// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantees.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGuaranteesData> _$gGuaranteesDataSerializer =
    _$GGuaranteesDataSerializer();
Serializer<GGuaranteesData_guarantees> _$gGuaranteesDataGuaranteesSerializer =
    _$GGuaranteesData_guaranteesSerializer();

class _$GGuaranteesDataSerializer
    implements StructuredSerializer<GGuaranteesData> {
  @override
  final Iterable<Type> types = const [GGuaranteesData, _$GGuaranteesData];
  @override
  final String wireName = 'GGuaranteesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGuaranteesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.guarantees;
    if (value != null) {
      result
        ..add('guarantees')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGuaranteesData_guarantees)])));
    }
    return result;
  }

  @override
  GGuaranteesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GGuaranteesDataBuilder();

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
        case 'guarantees':
          result.guarantees.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGuaranteesData_guarantees)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGuaranteesData_guaranteesSerializer
    implements StructuredSerializer<GGuaranteesData_guarantees> {
  @override
  final Iterable<Type> types = const [
    GGuaranteesData_guarantees,
    _$GGuaranteesData_guarantees
  ];
  @override
  final String wireName = 'GGuaranteesData_guarantees';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGuaranteesData_guarantees object,
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
  GGuaranteesData_guarantees deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GGuaranteesData_guaranteesBuilder();

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

class _$GGuaranteesData extends GGuaranteesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGuaranteesData_guarantees>? guarantees;

  factory _$GGuaranteesData([void Function(GGuaranteesDataBuilder)? updates]) =>
      (GGuaranteesDataBuilder()..update(updates))._build();

  _$GGuaranteesData._({required this.G__typename, this.guarantees}) : super._();
  @override
  GGuaranteesData rebuild(void Function(GGuaranteesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGuaranteesDataBuilder toBuilder() => GGuaranteesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGuaranteesData &&
        G__typename == other.G__typename &&
        guarantees == other.guarantees;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, guarantees.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGuaranteesData')
          ..add('G__typename', G__typename)
          ..add('guarantees', guarantees))
        .toString();
  }
}

class GGuaranteesDataBuilder
    implements Builder<GGuaranteesData, GGuaranteesDataBuilder> {
  _$GGuaranteesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGuaranteesData_guarantees>? _guarantees;
  ListBuilder<GGuaranteesData_guarantees> get guarantees =>
      _$this._guarantees ??= ListBuilder<GGuaranteesData_guarantees>();
  set guarantees(ListBuilder<GGuaranteesData_guarantees>? guarantees) =>
      _$this._guarantees = guarantees;

  GGuaranteesDataBuilder() {
    GGuaranteesData._initializeBuilder(this);
  }

  GGuaranteesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _guarantees = $v.guarantees?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGuaranteesData other) {
    _$v = other as _$GGuaranteesData;
  }

  @override
  void update(void Function(GGuaranteesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGuaranteesData build() => _build();

  _$GGuaranteesData _build() {
    _$GGuaranteesData _$result;
    try {
      _$result = _$v ??
          _$GGuaranteesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGuaranteesData', 'G__typename'),
            guarantees: _guarantees?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'guarantees';
        _guarantees?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GGuaranteesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGuaranteesData_guarantees extends GGuaranteesData_guarantees {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;

  factory _$GGuaranteesData_guarantees(
          [void Function(GGuaranteesData_guaranteesBuilder)? updates]) =>
      (GGuaranteesData_guaranteesBuilder()..update(updates))._build();

  _$GGuaranteesData_guarantees._(
      {required this.G__typename, required this.id, this.name})
      : super._();
  @override
  GGuaranteesData_guarantees rebuild(
          void Function(GGuaranteesData_guaranteesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGuaranteesData_guaranteesBuilder toBuilder() =>
      GGuaranteesData_guaranteesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGuaranteesData_guarantees &&
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
    return (newBuiltValueToStringHelper(r'GGuaranteesData_guarantees')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGuaranteesData_guaranteesBuilder
    implements
        Builder<GGuaranteesData_guarantees, GGuaranteesData_guaranteesBuilder> {
  _$GGuaranteesData_guarantees? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGuaranteesData_guaranteesBuilder() {
    GGuaranteesData_guarantees._initializeBuilder(this);
  }

  GGuaranteesData_guaranteesBuilder get _$this {
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
  void replace(GGuaranteesData_guarantees other) {
    _$v = other as _$GGuaranteesData_guarantees;
  }

  @override
  void update(void Function(GGuaranteesData_guaranteesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGuaranteesData_guarantees build() => _build();

  _$GGuaranteesData_guarantees _build() {
    final _$result = _$v ??
        _$GGuaranteesData_guarantees._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GGuaranteesData_guarantees', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GGuaranteesData_guarantees', 'id'),
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
