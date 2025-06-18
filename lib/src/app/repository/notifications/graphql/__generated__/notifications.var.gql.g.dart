// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAppNotificationsVars> _$gAppNotificationsVarsSerializer =
    _$GAppNotificationsVarsSerializer();
Serializer<GUserDeviceRegistrationVars>
    _$gUserDeviceRegistrationVarsSerializer =
    _$GUserDeviceRegistrationVarsSerializer();

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
    return GAppNotificationsVarsBuilder().build();
  }
}

class _$GUserDeviceRegistrationVarsSerializer
    implements StructuredSerializer<GUserDeviceRegistrationVars> {
  @override
  final Iterable<Type> types = const [
    GUserDeviceRegistrationVars,
    _$GUserDeviceRegistrationVars
  ];
  @override
  final String wireName = 'GUserDeviceRegistrationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserDeviceRegistrationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i2.GFirebaseDeviceTokenCreateInput)),
    ];

    return result;
  }

  @override
  GUserDeviceRegistrationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUserDeviceRegistrationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GFirebaseDeviceTokenCreateInput))!
              as _i2.GFirebaseDeviceTokenCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GAppNotificationsVars extends GAppNotificationsVars {
  factory _$GAppNotificationsVars(
          [void Function(GAppNotificationsVarsBuilder)? updates]) =>
      (GAppNotificationsVarsBuilder()..update(updates))._build();

  _$GAppNotificationsVars._() : super._();
  @override
  GAppNotificationsVars rebuild(
          void Function(GAppNotificationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppNotificationsVarsBuilder toBuilder() =>
      GAppNotificationsVarsBuilder()..replace(this);

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
    _$v = other as _$GAppNotificationsVars;
  }

  @override
  void update(void Function(GAppNotificationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppNotificationsVars build() => _build();

  _$GAppNotificationsVars _build() {
    final _$result = _$v ?? _$GAppNotificationsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUserDeviceRegistrationVars extends GUserDeviceRegistrationVars {
  @override
  final _i2.GFirebaseDeviceTokenCreateInput data;

  factory _$GUserDeviceRegistrationVars(
          [void Function(GUserDeviceRegistrationVarsBuilder)? updates]) =>
      (GUserDeviceRegistrationVarsBuilder()..update(updates))._build();

  _$GUserDeviceRegistrationVars._({required this.data}) : super._();
  @override
  GUserDeviceRegistrationVars rebuild(
          void Function(GUserDeviceRegistrationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDeviceRegistrationVarsBuilder toBuilder() =>
      GUserDeviceRegistrationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDeviceRegistrationVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GUserDeviceRegistrationVars')
          ..add('data', data))
        .toString();
  }
}

class GUserDeviceRegistrationVarsBuilder
    implements
        Builder<GUserDeviceRegistrationVars,
            GUserDeviceRegistrationVarsBuilder> {
  _$GUserDeviceRegistrationVars? _$v;

  _i2.GFirebaseDeviceTokenCreateInputBuilder? _data;
  _i2.GFirebaseDeviceTokenCreateInputBuilder get data =>
      _$this._data ??= _i2.GFirebaseDeviceTokenCreateInputBuilder();
  set data(_i2.GFirebaseDeviceTokenCreateInputBuilder? data) =>
      _$this._data = data;

  GUserDeviceRegistrationVarsBuilder();

  GUserDeviceRegistrationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserDeviceRegistrationVars other) {
    _$v = other as _$GUserDeviceRegistrationVars;
  }

  @override
  void update(void Function(GUserDeviceRegistrationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDeviceRegistrationVars build() => _build();

  _$GUserDeviceRegistrationVars _build() {
    _$GUserDeviceRegistrationVars _$result;
    try {
      _$result = _$v ??
          _$GUserDeviceRegistrationVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GUserDeviceRegistrationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
