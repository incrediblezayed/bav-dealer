// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserVars> _$gCreateUserVarsSerializer =
    _$GCreateUserVarsSerializer();
Serializer<GCurrentUserOTPVars> _$gCurrentUserOTPVarsSerializer =
    _$GCurrentUserOTPVarsSerializer();
Serializer<GValidateUserOTPVars> _$gValidateUserOTPVarsSerializer =
    _$GValidateUserOTPVarsSerializer();
Serializer<GSendUserPasswordResetLinkVars>
    _$gSendUserPasswordResetLinkVarsSerializer =
    _$GSendUserPasswordResetLinkVarsSerializer();
Serializer<GRedeemUserPasswordResetTokenVars>
    _$gRedeemUserPasswordResetTokenVarsSerializer =
    _$GRedeemUserPasswordResetTokenVarsSerializer();
Serializer<GValidateUserPasswordResetTokenVars>
    _$gValidateUserPasswordResetTokenVarsSerializer =
    _$GValidateUserPasswordResetTokenVarsSerializer();
Serializer<GCreateDealerVars> _$gCreateDealerVarsSerializer =
    _$GCreateDealerVarsSerializer();
Serializer<GAuthenticateUserWithPasswordVars>
    _$gAuthenticateUserWithPasswordVarsSerializer =
    _$GAuthenticateUserWithPasswordVarsSerializer();
Serializer<GUserVars> _$gUserVarsSerializer = _$GUserVarsSerializer();
Serializer<GUpdateUserVars> _$gUpdateUserVarsSerializer =
    _$GUpdateUserVarsSerializer();
Serializer<GDealerVars> _$gDealerVarsSerializer = _$GDealerVarsSerializer();
Serializer<GUpdateDealerVars> _$gUpdateDealerVarsSerializer =
    _$GUpdateDealerVarsSerializer();
Serializer<GSendDealerMOUApprovalOTPVars>
    _$gSendDealerMOUApprovalOTPVarsSerializer =
    _$GSendDealerMOUApprovalOTPVarsSerializer();

class _$GCreateUserVarsSerializer
    implements StructuredSerializer<GCreateUserVars> {
  @override
  final Iterable<Type> types = const [GCreateUserVars, _$GCreateUserVars];
  @override
  final String wireName = 'GCreateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GUserCreateInput)),
    ];

    return result;
  }

  @override
  GCreateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GCreateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserCreateInput))!
              as _i1.GUserCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCurrentUserOTPVarsSerializer
    implements StructuredSerializer<GCurrentUserOTPVars> {
  @override
  final Iterable<Type> types = const [
    GCurrentUserOTPVars,
    _$GCurrentUserOTPVars
  ];
  @override
  final String wireName = 'GCurrentUserOTPVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCurrentUserOTPVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCurrentUserOTPVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GCurrentUserOTPVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GValidateUserOTPVarsSerializer
    implements StructuredSerializer<GValidateUserOTPVars> {
  @override
  final Iterable<Type> types = const [
    GValidateUserOTPVars,
    _$GValidateUserOTPVars
  ];
  @override
  final String wireName = 'GValidateUserOTPVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GValidateUserOTPVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'otp',
      serializers.serialize(object.otp, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GValidateUserOTPVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GValidateUserOTPVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSendUserPasswordResetLinkVarsSerializer
    implements StructuredSerializer<GSendUserPasswordResetLinkVars> {
  @override
  final Iterable<Type> types = const [
    GSendUserPasswordResetLinkVars,
    _$GSendUserPasswordResetLinkVars
  ];
  @override
  final String wireName = 'GSendUserPasswordResetLinkVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendUserPasswordResetLinkVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSendUserPasswordResetLinkVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GSendUserPasswordResetLinkVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRedeemUserPasswordResetTokenVarsSerializer
    implements StructuredSerializer<GRedeemUserPasswordResetTokenVars> {
  @override
  final Iterable<Type> types = const [
    GRedeemUserPasswordResetTokenVars,
    _$GRedeemUserPasswordResetTokenVars
  ];
  @override
  final String wireName = 'GRedeemUserPasswordResetTokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRedeemUserPasswordResetTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRedeemUserPasswordResetTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GRedeemUserPasswordResetTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GValidateUserPasswordResetTokenVarsSerializer
    implements StructuredSerializer<GValidateUserPasswordResetTokenVars> {
  @override
  final Iterable<Type> types = const [
    GValidateUserPasswordResetTokenVars,
    _$GValidateUserPasswordResetTokenVars
  ];
  @override
  final String wireName = 'GValidateUserPasswordResetTokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GValidateUserPasswordResetTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GValidateUserPasswordResetTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GValidateUserPasswordResetTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDealerVarsSerializer
    implements StructuredSerializer<GCreateDealerVars> {
  @override
  final Iterable<Type> types = const [GCreateDealerVars, _$GCreateDealerVars];
  @override
  final String wireName = 'GCreateDealerVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GDealerCreateInput)),
    ];

    return result;
  }

  @override
  GCreateDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GCreateDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDealerCreateInput))!
              as _i1.GDealerCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordVarsSerializer
    implements StructuredSerializer<GAuthenticateUserWithPasswordVars> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordVars,
    _$GAuthenticateUserWithPasswordVars
  ];
  @override
  final String wireName = 'GAuthenticateUserWithPasswordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAuthenticateUserWithPasswordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthenticateUserWithPasswordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GAuthenticateUserWithPasswordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserVarsSerializer implements StructuredSerializer<GUserVars> {
  @override
  final Iterable<Type> types = const [GUserVars, _$GUserVars];
  @override
  final String wireName = 'GUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GUserWhereUniqueInput)),
    ];

    return result;
  }

  @override
  GUserVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserWhereUniqueInput))!
              as _i1.GUserWhereUniqueInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserVarsSerializer
    implements StructuredSerializer<GUpdateUserVars> {
  @override
  final Iterable<Type> types = const [GUpdateUserVars, _$GUpdateUserVars];
  @override
  final String wireName = 'GUpdateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GUserUpdateInput)),
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GUserWhereUniqueInput)),
    ];

    return result;
  }

  @override
  GUpdateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUpdateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserUpdateInput))!
              as _i1.GUserUpdateInput);
          break;
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserWhereUniqueInput))!
              as _i1.GUserWhereUniqueInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GDealerVarsSerializer implements StructuredSerializer<GDealerVars> {
  @override
  final Iterable<Type> types = const [GDealerVars, _$GDealerVars];
  @override
  final String wireName = 'GDealerVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GDealerWhereInput)),
    ];

    return result;
  }

  @override
  GDealerVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDealerWhereInput))!
              as _i1.GDealerWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateDealerVarsSerializer
    implements StructuredSerializer<GUpdateDealerVars> {
  @override
  final Iterable<Type> types = const [GUpdateDealerVars, _$GUpdateDealerVars];
  @override
  final String wireName = 'GUpdateDealerVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateDealerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GDealerWhereUniqueInput)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GDealerUpdateInput)),
    ];

    return result;
  }

  @override
  GUpdateDealerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GUpdateDealerVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDealerWhereUniqueInput))!
              as _i1.GDealerWhereUniqueInput);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDealerUpdateInput))!
              as _i1.GDealerUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendDealerMOUApprovalOTPVarsSerializer
    implements StructuredSerializer<GSendDealerMOUApprovalOTPVars> {
  @override
  final Iterable<Type> types = const [
    GSendDealerMOUApprovalOTPVars,
    _$GSendDealerMOUApprovalOTPVars
  ];
  @override
  final String wireName = 'GSendDealerMOUApprovalOTPVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendDealerMOUApprovalOTPVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GSendDealerMOUApprovalOTPVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GSendDealerMOUApprovalOTPVarsBuilder().build();
  }
}

class _$GCreateUserVars extends GCreateUserVars {
  @override
  final _i1.GUserCreateInput data;

  factory _$GCreateUserVars([void Function(GCreateUserVarsBuilder)? updates]) =>
      (GCreateUserVarsBuilder()..update(updates))._build();

  _$GCreateUserVars._({required this.data}) : super._();
  @override
  GCreateUserVars rebuild(void Function(GCreateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserVarsBuilder toBuilder() => GCreateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GCreateUserVars')..add('data', data))
        .toString();
  }
}

class GCreateUserVarsBuilder
    implements Builder<GCreateUserVars, GCreateUserVarsBuilder> {
  _$GCreateUserVars? _$v;

  _i1.GUserCreateInputBuilder? _data;
  _i1.GUserCreateInputBuilder get data =>
      _$this._data ??= _i1.GUserCreateInputBuilder();
  set data(_i1.GUserCreateInputBuilder? data) => _$this._data = data;

  GCreateUserVarsBuilder();

  GCreateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserVars other) {
    _$v = other as _$GCreateUserVars;
  }

  @override
  void update(void Function(GCreateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserVars build() => _build();

  _$GCreateUserVars _build() {
    _$GCreateUserVars _$result;
    try {
      _$result = _$v ??
          _$GCreateUserVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GCreateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCurrentUserOTPVars extends GCurrentUserOTPVars {
  @override
  final String key;

  factory _$GCurrentUserOTPVars(
          [void Function(GCurrentUserOTPVarsBuilder)? updates]) =>
      (GCurrentUserOTPVarsBuilder()..update(updates))._build();

  _$GCurrentUserOTPVars._({required this.key}) : super._();
  @override
  GCurrentUserOTPVars rebuild(
          void Function(GCurrentUserOTPVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCurrentUserOTPVarsBuilder toBuilder() =>
      GCurrentUserOTPVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCurrentUserOTPVars && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCurrentUserOTPVars')
          ..add('key', key))
        .toString();
  }
}

class GCurrentUserOTPVarsBuilder
    implements Builder<GCurrentUserOTPVars, GCurrentUserOTPVarsBuilder> {
  _$GCurrentUserOTPVars? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  GCurrentUserOTPVarsBuilder();

  GCurrentUserOTPVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCurrentUserOTPVars other) {
    _$v = other as _$GCurrentUserOTPVars;
  }

  @override
  void update(void Function(GCurrentUserOTPVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCurrentUserOTPVars build() => _build();

  _$GCurrentUserOTPVars _build() {
    final _$result = _$v ??
        _$GCurrentUserOTPVars._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'GCurrentUserOTPVars', 'key'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GValidateUserOTPVars extends GValidateUserOTPVars {
  @override
  final String key;
  @override
  final String otp;

  factory _$GValidateUserOTPVars(
          [void Function(GValidateUserOTPVarsBuilder)? updates]) =>
      (GValidateUserOTPVarsBuilder()..update(updates))._build();

  _$GValidateUserOTPVars._({required this.key, required this.otp}) : super._();
  @override
  GValidateUserOTPVars rebuild(
          void Function(GValidateUserOTPVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GValidateUserOTPVarsBuilder toBuilder() =>
      GValidateUserOTPVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GValidateUserOTPVars &&
        key == other.key &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GValidateUserOTPVars')
          ..add('key', key)
          ..add('otp', otp))
        .toString();
  }
}

class GValidateUserOTPVarsBuilder
    implements Builder<GValidateUserOTPVars, GValidateUserOTPVarsBuilder> {
  _$GValidateUserOTPVars? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  GValidateUserOTPVarsBuilder();

  GValidateUserOTPVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GValidateUserOTPVars other) {
    _$v = other as _$GValidateUserOTPVars;
  }

  @override
  void update(void Function(GValidateUserOTPVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GValidateUserOTPVars build() => _build();

  _$GValidateUserOTPVars _build() {
    final _$result = _$v ??
        _$GValidateUserOTPVars._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'GValidateUserOTPVars', 'key'),
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'GValidateUserOTPVars', 'otp'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GSendUserPasswordResetLinkVars extends GSendUserPasswordResetLinkVars {
  @override
  final String phoneNumber;

  factory _$GSendUserPasswordResetLinkVars(
          [void Function(GSendUserPasswordResetLinkVarsBuilder)? updates]) =>
      (GSendUserPasswordResetLinkVarsBuilder()..update(updates))._build();

  _$GSendUserPasswordResetLinkVars._({required this.phoneNumber}) : super._();
  @override
  GSendUserPasswordResetLinkVars rebuild(
          void Function(GSendUserPasswordResetLinkVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendUserPasswordResetLinkVarsBuilder toBuilder() =>
      GSendUserPasswordResetLinkVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendUserPasswordResetLinkVars &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendUserPasswordResetLinkVars')
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class GSendUserPasswordResetLinkVarsBuilder
    implements
        Builder<GSendUserPasswordResetLinkVars,
            GSendUserPasswordResetLinkVarsBuilder> {
  _$GSendUserPasswordResetLinkVars? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  GSendUserPasswordResetLinkVarsBuilder();

  GSendUserPasswordResetLinkVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendUserPasswordResetLinkVars other) {
    _$v = other as _$GSendUserPasswordResetLinkVars;
  }

  @override
  void update(void Function(GSendUserPasswordResetLinkVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendUserPasswordResetLinkVars build() => _build();

  _$GSendUserPasswordResetLinkVars _build() {
    final _$result = _$v ??
        _$GSendUserPasswordResetLinkVars._(
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'GSendUserPasswordResetLinkVars', 'phoneNumber'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GRedeemUserPasswordResetTokenVars
    extends GRedeemUserPasswordResetTokenVars {
  @override
  final String phoneNumber;
  @override
  final String token;
  @override
  final String password;

  factory _$GRedeemUserPasswordResetTokenVars(
          [void Function(GRedeemUserPasswordResetTokenVarsBuilder)? updates]) =>
      (GRedeemUserPasswordResetTokenVarsBuilder()..update(updates))._build();

  _$GRedeemUserPasswordResetTokenVars._(
      {required this.phoneNumber, required this.token, required this.password})
      : super._();
  @override
  GRedeemUserPasswordResetTokenVars rebuild(
          void Function(GRedeemUserPasswordResetTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRedeemUserPasswordResetTokenVarsBuilder toBuilder() =>
      GRedeemUserPasswordResetTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRedeemUserPasswordResetTokenVars &&
        phoneNumber == other.phoneNumber &&
        token == other.token &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRedeemUserPasswordResetTokenVars')
          ..add('phoneNumber', phoneNumber)
          ..add('token', token)
          ..add('password', password))
        .toString();
  }
}

class GRedeemUserPasswordResetTokenVarsBuilder
    implements
        Builder<GRedeemUserPasswordResetTokenVars,
            GRedeemUserPasswordResetTokenVarsBuilder> {
  _$GRedeemUserPasswordResetTokenVars? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GRedeemUserPasswordResetTokenVarsBuilder();

  GRedeemUserPasswordResetTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _token = $v.token;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRedeemUserPasswordResetTokenVars other) {
    _$v = other as _$GRedeemUserPasswordResetTokenVars;
  }

  @override
  void update(
      void Function(GRedeemUserPasswordResetTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRedeemUserPasswordResetTokenVars build() => _build();

  _$GRedeemUserPasswordResetTokenVars _build() {
    final _$result = _$v ??
        _$GRedeemUserPasswordResetTokenVars._(
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'GRedeemUserPasswordResetTokenVars', 'phoneNumber'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'GRedeemUserPasswordResetTokenVars', 'token'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'GRedeemUserPasswordResetTokenVars', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GValidateUserPasswordResetTokenVars
    extends GValidateUserPasswordResetTokenVars {
  @override
  final String token;
  @override
  final String phoneNumber;

  factory _$GValidateUserPasswordResetTokenVars(
          [void Function(GValidateUserPasswordResetTokenVarsBuilder)?
              updates]) =>
      (GValidateUserPasswordResetTokenVarsBuilder()..update(updates))._build();

  _$GValidateUserPasswordResetTokenVars._(
      {required this.token, required this.phoneNumber})
      : super._();
  @override
  GValidateUserPasswordResetTokenVars rebuild(
          void Function(GValidateUserPasswordResetTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GValidateUserPasswordResetTokenVarsBuilder toBuilder() =>
      GValidateUserPasswordResetTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GValidateUserPasswordResetTokenVars &&
        token == other.token &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GValidateUserPasswordResetTokenVars')
          ..add('token', token)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class GValidateUserPasswordResetTokenVarsBuilder
    implements
        Builder<GValidateUserPasswordResetTokenVars,
            GValidateUserPasswordResetTokenVarsBuilder> {
  _$GValidateUserPasswordResetTokenVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  GValidateUserPasswordResetTokenVarsBuilder();

  GValidateUserPasswordResetTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GValidateUserPasswordResetTokenVars other) {
    _$v = other as _$GValidateUserPasswordResetTokenVars;
  }

  @override
  void update(
      void Function(GValidateUserPasswordResetTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GValidateUserPasswordResetTokenVars build() => _build();

  _$GValidateUserPasswordResetTokenVars _build() {
    final _$result = _$v ??
        _$GValidateUserPasswordResetTokenVars._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'GValidateUserPasswordResetTokenVars', 'token'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(phoneNumber,
              r'GValidateUserPasswordResetTokenVars', 'phoneNumber'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDealerVars extends GCreateDealerVars {
  @override
  final _i1.GDealerCreateInput data;

  factory _$GCreateDealerVars(
          [void Function(GCreateDealerVarsBuilder)? updates]) =>
      (GCreateDealerVarsBuilder()..update(updates))._build();

  _$GCreateDealerVars._({required this.data}) : super._();
  @override
  GCreateDealerVars rebuild(void Function(GCreateDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDealerVarsBuilder toBuilder() =>
      GCreateDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDealerVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GCreateDealerVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateDealerVarsBuilder
    implements Builder<GCreateDealerVars, GCreateDealerVarsBuilder> {
  _$GCreateDealerVars? _$v;

  _i1.GDealerCreateInputBuilder? _data;
  _i1.GDealerCreateInputBuilder get data =>
      _$this._data ??= _i1.GDealerCreateInputBuilder();
  set data(_i1.GDealerCreateInputBuilder? data) => _$this._data = data;

  GCreateDealerVarsBuilder();

  GCreateDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDealerVars other) {
    _$v = other as _$GCreateDealerVars;
  }

  @override
  void update(void Function(GCreateDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateDealerVars build() => _build();

  _$GCreateDealerVars _build() {
    _$GCreateDealerVars _$result;
    try {
      _$result = _$v ??
          _$GCreateDealerVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GCreateDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordVars
    extends GAuthenticateUserWithPasswordVars {
  @override
  final String phoneNumber;
  @override
  final String password;

  factory _$GAuthenticateUserWithPasswordVars(
          [void Function(GAuthenticateUserWithPasswordVarsBuilder)? updates]) =>
      (GAuthenticateUserWithPasswordVarsBuilder()..update(updates))._build();

  _$GAuthenticateUserWithPasswordVars._(
      {required this.phoneNumber, required this.password})
      : super._();
  @override
  GAuthenticateUserWithPasswordVars rebuild(
          void Function(GAuthenticateUserWithPasswordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordVarsBuilder toBuilder() =>
      GAuthenticateUserWithPasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAuthenticateUserWithPasswordVars &&
        phoneNumber == other.phoneNumber &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAuthenticateUserWithPasswordVars')
          ..add('phoneNumber', phoneNumber)
          ..add('password', password))
        .toString();
  }
}

class GAuthenticateUserWithPasswordVarsBuilder
    implements
        Builder<GAuthenticateUserWithPasswordVars,
            GAuthenticateUserWithPasswordVarsBuilder> {
  _$GAuthenticateUserWithPasswordVars? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GAuthenticateUserWithPasswordVarsBuilder();

  GAuthenticateUserWithPasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAuthenticateUserWithPasswordVars other) {
    _$v = other as _$GAuthenticateUserWithPasswordVars;
  }

  @override
  void update(
      void Function(GAuthenticateUserWithPasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordVars build() => _build();

  _$GAuthenticateUserWithPasswordVars _build() {
    final _$result = _$v ??
        _$GAuthenticateUserWithPasswordVars._(
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'GAuthenticateUserWithPasswordVars', 'phoneNumber'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'GAuthenticateUserWithPasswordVars', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUserVars extends GUserVars {
  @override
  final _i1.GUserWhereUniqueInput where;

  factory _$GUserVars([void Function(GUserVarsBuilder)? updates]) =>
      (GUserVarsBuilder()..update(updates))._build();

  _$GUserVars._({required this.where}) : super._();
  @override
  GUserVars rebuild(void Function(GUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVarsBuilder toBuilder() => GUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GUserVars')..add('where', where))
        .toString();
  }
}

class GUserVarsBuilder implements Builder<GUserVars, GUserVarsBuilder> {
  _$GUserVars? _$v;

  _i1.GUserWhereUniqueInputBuilder? _where;
  _i1.GUserWhereUniqueInputBuilder get where =>
      _$this._where ??= _i1.GUserWhereUniqueInputBuilder();
  set where(_i1.GUserWhereUniqueInputBuilder? where) => _$this._where = where;

  GUserVarsBuilder();

  GUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVars other) {
    _$v = other as _$GUserVars;
  }

  @override
  void update(void Function(GUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVars build() => _build();

  _$GUserVars _build() {
    _$GUserVars _$result;
    try {
      _$result = _$v ??
          _$GUserVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserVars extends GUpdateUserVars {
  @override
  final _i1.GUserUpdateInput data;
  @override
  final _i1.GUserWhereUniqueInput where;

  factory _$GUpdateUserVars([void Function(GUpdateUserVarsBuilder)? updates]) =>
      (GUpdateUserVarsBuilder()..update(updates))._build();

  _$GUpdateUserVars._({required this.data, required this.where}) : super._();
  @override
  GUpdateUserVars rebuild(void Function(GUpdateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserVarsBuilder toBuilder() => GUpdateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserVars &&
        data == other.data &&
        where == other.where;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserVars')
          ..add('data', data)
          ..add('where', where))
        .toString();
  }
}

class GUpdateUserVarsBuilder
    implements Builder<GUpdateUserVars, GUpdateUserVarsBuilder> {
  _$GUpdateUserVars? _$v;

  _i1.GUserUpdateInputBuilder? _data;
  _i1.GUserUpdateInputBuilder get data =>
      _$this._data ??= _i1.GUserUpdateInputBuilder();
  set data(_i1.GUserUpdateInputBuilder? data) => _$this._data = data;

  _i1.GUserWhereUniqueInputBuilder? _where;
  _i1.GUserWhereUniqueInputBuilder get where =>
      _$this._where ??= _i1.GUserWhereUniqueInputBuilder();
  set where(_i1.GUserWhereUniqueInputBuilder? where) => _$this._where = where;

  GUpdateUserVarsBuilder();

  GUpdateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserVars other) {
    _$v = other as _$GUpdateUserVars;
  }

  @override
  void update(void Function(GUpdateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserVars build() => _build();

  _$GUpdateUserVars _build() {
    _$GUpdateUserVars _$result;
    try {
      _$result = _$v ??
          _$GUpdateUserVars._(
            data: data.build(),
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GUpdateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDealerVars extends GDealerVars {
  @override
  final _i1.GDealerWhereInput where;

  factory _$GDealerVars([void Function(GDealerVarsBuilder)? updates]) =>
      (GDealerVarsBuilder()..update(updates))._build();

  _$GDealerVars._({required this.where}) : super._();
  @override
  GDealerVars rebuild(void Function(GDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDealerVarsBuilder toBuilder() => GDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDealerVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GDealerVars')..add('where', where))
        .toString();
  }
}

class GDealerVarsBuilder implements Builder<GDealerVars, GDealerVarsBuilder> {
  _$GDealerVars? _$v;

  _i1.GDealerWhereInputBuilder? _where;
  _i1.GDealerWhereInputBuilder get where =>
      _$this._where ??= _i1.GDealerWhereInputBuilder();
  set where(_i1.GDealerWhereInputBuilder? where) => _$this._where = where;

  GDealerVarsBuilder();

  GDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDealerVars other) {
    _$v = other as _$GDealerVars;
  }

  @override
  void update(void Function(GDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDealerVars build() => _build();

  _$GDealerVars _build() {
    _$GDealerVars _$result;
    try {
      _$result = _$v ??
          _$GDealerVars._(
            where: where.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateDealerVars extends GUpdateDealerVars {
  @override
  final _i1.GDealerWhereUniqueInput where;
  @override
  final _i1.GDealerUpdateInput data;

  factory _$GUpdateDealerVars(
          [void Function(GUpdateDealerVarsBuilder)? updates]) =>
      (GUpdateDealerVarsBuilder()..update(updates))._build();

  _$GUpdateDealerVars._({required this.where, required this.data}) : super._();
  @override
  GUpdateDealerVars rebuild(void Function(GUpdateDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateDealerVarsBuilder toBuilder() =>
      GUpdateDealerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateDealerVars &&
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
    return (newBuiltValueToStringHelper(r'GUpdateDealerVars')
          ..add('where', where)
          ..add('data', data))
        .toString();
  }
}

class GUpdateDealerVarsBuilder
    implements Builder<GUpdateDealerVars, GUpdateDealerVarsBuilder> {
  _$GUpdateDealerVars? _$v;

  _i1.GDealerWhereUniqueInputBuilder? _where;
  _i1.GDealerWhereUniqueInputBuilder get where =>
      _$this._where ??= _i1.GDealerWhereUniqueInputBuilder();
  set where(_i1.GDealerWhereUniqueInputBuilder? where) => _$this._where = where;

  _i1.GDealerUpdateInputBuilder? _data;
  _i1.GDealerUpdateInputBuilder get data =>
      _$this._data ??= _i1.GDealerUpdateInputBuilder();
  set data(_i1.GDealerUpdateInputBuilder? data) => _$this._data = data;

  GUpdateDealerVarsBuilder();

  GUpdateDealerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateDealerVars other) {
    _$v = other as _$GUpdateDealerVars;
  }

  @override
  void update(void Function(GUpdateDealerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateDealerVars build() => _build();

  _$GUpdateDealerVars _build() {
    _$GUpdateDealerVars _$result;
    try {
      _$result = _$v ??
          _$GUpdateDealerVars._(
            where: where.build(),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GUpdateDealerVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendDealerMOUApprovalOTPVars extends GSendDealerMOUApprovalOTPVars {
  factory _$GSendDealerMOUApprovalOTPVars(
          [void Function(GSendDealerMOUApprovalOTPVarsBuilder)? updates]) =>
      (GSendDealerMOUApprovalOTPVarsBuilder()..update(updates))._build();

  _$GSendDealerMOUApprovalOTPVars._() : super._();
  @override
  GSendDealerMOUApprovalOTPVars rebuild(
          void Function(GSendDealerMOUApprovalOTPVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendDealerMOUApprovalOTPVarsBuilder toBuilder() =>
      GSendDealerMOUApprovalOTPVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendDealerMOUApprovalOTPVars;
  }

  @override
  int get hashCode {
    return 943360699;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GSendDealerMOUApprovalOTPVars')
        .toString();
  }
}

class GSendDealerMOUApprovalOTPVarsBuilder
    implements
        Builder<GSendDealerMOUApprovalOTPVars,
            GSendDealerMOUApprovalOTPVarsBuilder> {
  _$GSendDealerMOUApprovalOTPVars? _$v;

  GSendDealerMOUApprovalOTPVarsBuilder();

  @override
  void replace(GSendDealerMOUApprovalOTPVars other) {
    _$v = other as _$GSendDealerMOUApprovalOTPVars;
  }

  @override
  void update(void Function(GSendDealerMOUApprovalOTPVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendDealerMOUApprovalOTPVars build() => _build();

  _$GSendDealerMOUApprovalOTPVars _build() {
    final _$result = _$v ?? _$GSendDealerMOUApprovalOTPVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
