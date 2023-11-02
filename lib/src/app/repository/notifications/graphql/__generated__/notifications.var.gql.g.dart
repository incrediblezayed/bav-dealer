// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAppNotificationsVars> _$gAppNotificationsVarsSerializer =
    new _$GAppNotificationsVarsSerializer();

class _$GAppNotificationsVarsSerializer
    implements StructuredSerializer<GAppNotificationsVars> {
  @override
  final Iterable<Type> types = const [
    GAppNotificationsVars,
    _$GAppNotificationsVars
  ];
  @override
  final String wireName = 'GAppNotificationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppNotificationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAppNotificationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAppNotificationsVarsBuilder().build();
  }
}

class _$GAppNotificationsVars extends GAppNotificationsVars {
  factory _$GAppNotificationsVars(
          [void Function(GAppNotificationsVarsBuilder)? updates]) =>
      (new GAppNotificationsVarsBuilder()..update(updates))._build();

  _$GAppNotificationsVars._() : super._();

  @override
  GAppNotificationsVars rebuild(
          void Function(GAppNotificationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppNotificationsVarsBuilder toBuilder() =>
      new GAppNotificationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppNotificationsVars;
  }

  @override
  int get hashCode {
    return 324811552;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAppNotificationsVars').toString();
  }
}

class GAppNotificationsVarsBuilder
    implements Builder<GAppNotificationsVars, GAppNotificationsVarsBuilder> {
  _$GAppNotificationsVars? _$v;

  GAppNotificationsVarsBuilder();

  @override
  void replace(GAppNotificationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppNotificationsVars;
  }

  @override
  void update(void Function(GAppNotificationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppNotificationsVars build() => _build();

  _$GAppNotificationsVars _build() {
    final _$result = _$v ?? new _$GAppNotificationsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
