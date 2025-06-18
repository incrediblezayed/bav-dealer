// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantees.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGuaranteesVars> _$gGuaranteesVarsSerializer =
    _$GGuaranteesVarsSerializer();

class _$GGuaranteesVarsSerializer
    implements StructuredSerializer<GGuaranteesVars> {
  @override
  final Iterable<Type> types = const [GGuaranteesVars, _$GGuaranteesVars];
  @override
  final String wireName = 'GGuaranteesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGuaranteesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGuaranteesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GGuaranteesVarsBuilder().build();
  }
}

class _$GGuaranteesVars extends GGuaranteesVars {
  factory _$GGuaranteesVars([void Function(GGuaranteesVarsBuilder)? updates]) =>
      (GGuaranteesVarsBuilder()..update(updates))._build();

  _$GGuaranteesVars._() : super._();
  @override
  GGuaranteesVars rebuild(void Function(GGuaranteesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGuaranteesVarsBuilder toBuilder() => GGuaranteesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGuaranteesVars;
  }

  @override
  int get hashCode {
    return 972763400;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGuaranteesVars').toString();
  }
}

class GGuaranteesVarsBuilder
    implements Builder<GGuaranteesVars, GGuaranteesVarsBuilder> {
  _$GGuaranteesVars? _$v;

  GGuaranteesVarsBuilder();

  @override
  void replace(GGuaranteesVars other) {
    _$v = other as _$GGuaranteesVars;
  }

  @override
  void update(void Function(GGuaranteesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGuaranteesVars build() => _build();

  _$GGuaranteesVars _build() {
    final _$result = _$v ?? _$GGuaranteesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
