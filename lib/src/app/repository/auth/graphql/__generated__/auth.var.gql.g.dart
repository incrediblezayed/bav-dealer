// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserVars> _$gCreateUserVarsSerializer =
    new _$GCreateUserVarsSerializer();
Serializer<GCurrentUserOTPVars> _$gCurrentUserOTPVarsSerializer =
    new _$GCurrentUserOTPVarsSerializer();
Serializer<GValidateUserOTPVars> _$gValidateUserOTPVarsSerializer =
    new _$GValidateUserOTPVarsSerializer();
Serializer<GCreateDealerVars> _$gCreateDealerVarsSerializer =
    new _$GCreateDealerVarsSerializer();
Serializer<GAuthenticateUserWithPasswordVars>
    _$gAuthenticateUserWithPasswordVarsSerializer =
    new _$GAuthenticateUserWithPasswordVarsSerializer();
Serializer<GUserVars> _$gUserVarsSerializer = new _$GUserVarsSerializer();
Serializer<GUpdateUserVars> _$gUpdateUserVarsSerializer =
    new _$GUpdateUserVarsSerializer();

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
    final result = new GCreateUserVarsBuilder();

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
    final result = new GCurrentUserOTPVarsBuilder();

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
    final result = new GValidateUserOTPVarsBuilder();

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
    final result = new GCreateDealerVarsBuilder();

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
    final result = new GAuthenticateUserWithPasswordVarsBuilder();

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
    final result = new GUserVarsBuilder();

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
    final result = new GUpdateUserVarsBuilder();

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

class _$GCreateUserVars extends GCreateUserVars {
  @override
  final _i1.GUserCreateInput data;

  factory _$GCreateUserVars([void Function(GCreateUserVarsBuilder)? updates]) =>
      (new GCreateUserVarsBuilder()..update(updates))._build();

  _$GCreateUserVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GCreateUserVars', 'data');
  }

  @override
  GCreateUserVars rebuild(void Function(GCreateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserVarsBuilder toBuilder() =>
      new GCreateUserVarsBuilder()..replace(this);

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
      _$this._data ??= new _i1.GUserCreateInputBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
      _$result = _$v ?? new _$GCreateUserVars._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new GCurrentUserOTPVarsBuilder()..update(updates))._build();

  _$GCurrentUserOTPVars._({required this.key}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'GCurrentUserOTPVars', 'key');
  }

  @override
  GCurrentUserOTPVars rebuild(
          void Function(GCurrentUserOTPVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCurrentUserOTPVarsBuilder toBuilder() =>
      new GCurrentUserOTPVarsBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$GCurrentUserOTPVars._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GCurrentUserOTPVars', 'key'));
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
      (new GValidateUserOTPVarsBuilder()..update(updates))._build();

  _$GValidateUserOTPVars._({required this.key, required this.otp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'GValidateUserOTPVars', 'key');
    BuiltValueNullFieldError.checkNotNull(otp, r'GValidateUserOTPVars', 'otp');
  }

  @override
  GValidateUserOTPVars rebuild(
          void Function(GValidateUserOTPVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GValidateUserOTPVarsBuilder toBuilder() =>
      new GValidateUserOTPVarsBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$GValidateUserOTPVars._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GValidateUserOTPVars', 'key'),
            otp: BuiltValueNullFieldError.checkNotNull(
                otp, r'GValidateUserOTPVars', 'otp'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDealerVars extends GCreateDealerVars {
  @override
  final _i1.GDealerCreateInput data;

  factory _$GCreateDealerVars(
          [void Function(GCreateDealerVarsBuilder)? updates]) =>
      (new GCreateDealerVarsBuilder()..update(updates))._build();

  _$GCreateDealerVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GCreateDealerVars', 'data');
  }

  @override
  GCreateDealerVars rebuild(void Function(GCreateDealerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDealerVarsBuilder toBuilder() =>
      new GCreateDealerVarsBuilder()..replace(this);

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
      _$this._data ??= new _i1.GDealerCreateInputBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
      _$result = _$v ?? new _$GCreateDealerVars._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new GAuthenticateUserWithPasswordVarsBuilder()..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordVars._(
      {required this.phoneNumber, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GAuthenticateUserWithPasswordVars', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GAuthenticateUserWithPasswordVars', 'password');
  }

  @override
  GAuthenticateUserWithPasswordVars rebuild(
          void Function(GAuthenticateUserWithPasswordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordVarsBuilder toBuilder() =>
      new GAuthenticateUserWithPasswordVarsBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$GAuthenticateUserWithPasswordVars._(
            phoneNumber: BuiltValueNullFieldError.checkNotNull(phoneNumber,
                r'GAuthenticateUserWithPasswordVars', 'phoneNumber'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GAuthenticateUserWithPasswordVars', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserVars extends GUserVars {
  @override
  final _i1.GUserWhereUniqueInput where;

  factory _$GUserVars([void Function(GUserVarsBuilder)? updates]) =>
      (new GUserVarsBuilder()..update(updates))._build();

  _$GUserVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(where, r'GUserVars', 'where');
  }

  @override
  GUserVars rebuild(void Function(GUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVarsBuilder toBuilder() => new GUserVarsBuilder()..replace(this);

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
      _$this._where ??= new _i1.GUserWhereUniqueInputBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
      _$result = _$v ?? new _$GUserVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new GUpdateUserVarsBuilder()..update(updates))._build();

  _$GUpdateUserVars._({required this.data, required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GUpdateUserVars', 'data');
    BuiltValueNullFieldError.checkNotNull(where, r'GUpdateUserVars', 'where');
  }

  @override
  GUpdateUserVars rebuild(void Function(GUpdateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserVarsBuilder toBuilder() =>
      new GUpdateUserVarsBuilder()..replace(this);

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
      _$this._data ??= new _i1.GUserUpdateInputBuilder();
  set data(_i1.GUserUpdateInputBuilder? data) => _$this._data = data;

  _i1.GUserWhereUniqueInputBuilder? _where;
  _i1.GUserWhereUniqueInputBuilder get where =>
      _$this._where ??= new _i1.GUserWhereUniqueInputBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
          new _$GUpdateUserVars._(data: data.build(), where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
