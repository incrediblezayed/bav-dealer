// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAppNotificationsData> _$gAppNotificationsDataSerializer =
    new _$GAppNotificationsDataSerializer();
Serializer<GAppNotificationsData_appNotifications>
    _$gAppNotificationsDataAppNotificationsSerializer =
    new _$GAppNotificationsData_appNotificationsSerializer();
Serializer<GAppNotificationsData_appNotifications_notificationType>
    _$gAppNotificationsDataAppNotificationsNotificationTypeSerializer =
    new _$GAppNotificationsData_appNotifications_notificationTypeSerializer();
Serializer<GUserDeviceRegistrationData>
    _$gUserDeviceRegistrationDataSerializer =
    new _$GUserDeviceRegistrationDataSerializer();
Serializer<GUserDeviceRegistrationData_createFirebaseDeviceToken>
    _$gUserDeviceRegistrationDataCreateFirebaseDeviceTokenSerializer =
    new _$GUserDeviceRegistrationData_createFirebaseDeviceTokenSerializer();

class _$GAppNotificationsDataSerializer
    implements StructuredSerializer<GAppNotificationsData> {
  @override
  final Iterable<Type> types = const [
    GAppNotificationsData,
    _$GAppNotificationsData
  ];
  @override
  final String wireName = 'GAppNotificationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppNotificationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.appNotifications;
    if (value != null) {
      result
        ..add('appNotifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GAppNotificationsData_appNotifications)
            ])));
    }
    return result;
  }

  @override
  GAppNotificationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppNotificationsDataBuilder();

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
        case 'appNotifications':
          result.appNotifications.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAppNotificationsData_appNotifications)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAppNotificationsData_appNotificationsSerializer
    implements StructuredSerializer<GAppNotificationsData_appNotifications> {
  @override
  final Iterable<Type> types = const [
    GAppNotificationsData_appNotifications,
    _$GAppNotificationsData_appNotifications
  ];
  @override
  final String wireName = 'GAppNotificationsData_appNotifications';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAppNotificationsData_appNotifications object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.notificationType;
    if (value != null) {
      result
        ..add('notificationType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAppNotificationsData_appNotifications_notificationType)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAppNotificationsData_appNotifications deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAppNotificationsData_appNotificationsBuilder();

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
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'notificationType':
          result.notificationType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAppNotificationsData_appNotifications_notificationType))!
              as GAppNotificationsData_appNotifications_notificationType);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppNotificationsData_appNotifications_notificationTypeSerializer
    implements
        StructuredSerializer<
            GAppNotificationsData_appNotifications_notificationType> {
  @override
  final Iterable<Type> types = const [
    GAppNotificationsData_appNotifications_notificationType,
    _$GAppNotificationsData_appNotifications_notificationType
  ];
  @override
  final String wireName =
      'GAppNotificationsData_appNotifications_notificationType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAppNotificationsData_appNotifications_notificationType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
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
  GAppNotificationsData_appNotifications_notificationType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAppNotificationsData_appNotifications_notificationTypeBuilder();

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
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
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

class _$GUserDeviceRegistrationDataSerializer
    implements StructuredSerializer<GUserDeviceRegistrationData> {
  @override
  final Iterable<Type> types = const [
    GUserDeviceRegistrationData,
    _$GUserDeviceRegistrationData
  ];
  @override
  final String wireName = 'GUserDeviceRegistrationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserDeviceRegistrationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createFirebaseDeviceToken;
    if (value != null) {
      result
        ..add('createFirebaseDeviceToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserDeviceRegistrationData_createFirebaseDeviceToken)));
    }
    return result;
  }

  @override
  GUserDeviceRegistrationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDeviceRegistrationDataBuilder();

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
        case 'createFirebaseDeviceToken':
          result.createFirebaseDeviceToken.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GUserDeviceRegistrationData_createFirebaseDeviceToken))!
              as GUserDeviceRegistrationData_createFirebaseDeviceToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDeviceRegistrationData_createFirebaseDeviceTokenSerializer
    implements
        StructuredSerializer<
            GUserDeviceRegistrationData_createFirebaseDeviceToken> {
  @override
  final Iterable<Type> types = const [
    GUserDeviceRegistrationData_createFirebaseDeviceToken,
    _$GUserDeviceRegistrationData_createFirebaseDeviceToken
  ];
  @override
  final String wireName =
      'GUserDeviceRegistrationData_createFirebaseDeviceToken';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserDeviceRegistrationData_createFirebaseDeviceToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deviceToken;
    if (value != null) {
      result
        ..add('deviceToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserDeviceRegistrationData_createFirebaseDeviceToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder();

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
        case 'deviceToken':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAppNotificationsData extends GAppNotificationsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GAppNotificationsData_appNotifications>? appNotifications;

  factory _$GAppNotificationsData(
          [void Function(GAppNotificationsDataBuilder)? updates]) =>
      (new GAppNotificationsDataBuilder()..update(updates))._build();

  _$GAppNotificationsData._({required this.G__typename, this.appNotifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAppNotificationsData', 'G__typename');
  }

  @override
  GAppNotificationsData rebuild(
          void Function(GAppNotificationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppNotificationsDataBuilder toBuilder() =>
      new GAppNotificationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppNotificationsData &&
        G__typename == other.G__typename &&
        appNotifications == other.appNotifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, appNotifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAppNotificationsData')
          ..add('G__typename', G__typename)
          ..add('appNotifications', appNotifications))
        .toString();
  }
}

class GAppNotificationsDataBuilder
    implements Builder<GAppNotificationsData, GAppNotificationsDataBuilder> {
  _$GAppNotificationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAppNotificationsData_appNotifications>? _appNotifications;
  ListBuilder<GAppNotificationsData_appNotifications> get appNotifications =>
      _$this._appNotifications ??=
          new ListBuilder<GAppNotificationsData_appNotifications>();
  set appNotifications(
          ListBuilder<GAppNotificationsData_appNotifications>?
              appNotifications) =>
      _$this._appNotifications = appNotifications;

  GAppNotificationsDataBuilder() {
    GAppNotificationsData._initializeBuilder(this);
  }

  GAppNotificationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _appNotifications = $v.appNotifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppNotificationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppNotificationsData;
  }

  @override
  void update(void Function(GAppNotificationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppNotificationsData build() => _build();

  _$GAppNotificationsData _build() {
    _$GAppNotificationsData _$result;
    try {
      _$result = _$v ??
          new _$GAppNotificationsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAppNotificationsData', 'G__typename'),
            appNotifications: _appNotifications?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appNotifications';
        _appNotifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppNotificationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppNotificationsData_appNotifications
    extends GAppNotificationsData_appNotifications {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? body;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final GAppNotificationsData_appNotifications_notificationType?
      notificationType;
  @override
  final String? title;

  factory _$GAppNotificationsData_appNotifications(
          [void Function(GAppNotificationsData_appNotificationsBuilder)?
              updates]) =>
      (new GAppNotificationsData_appNotificationsBuilder()..update(updates))
          ._build();

  _$GAppNotificationsData_appNotifications._(
      {required this.G__typename,
      required this.id,
      this.body,
      this.createdAt,
      this.modifiedAt,
      this.notificationType,
      this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAppNotificationsData_appNotifications', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAppNotificationsData_appNotifications', 'id');
  }

  @override
  GAppNotificationsData_appNotifications rebuild(
          void Function(GAppNotificationsData_appNotificationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppNotificationsData_appNotificationsBuilder toBuilder() =>
      new GAppNotificationsData_appNotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppNotificationsData_appNotifications &&
        G__typename == other.G__typename &&
        id == other.id &&
        body == other.body &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        notificationType == other.notificationType &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, notificationType.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAppNotificationsData_appNotifications')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('body', body)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('notificationType', notificationType)
          ..add('title', title))
        .toString();
  }
}

class GAppNotificationsData_appNotificationsBuilder
    implements
        Builder<GAppNotificationsData_appNotifications,
            GAppNotificationsData_appNotificationsBuilder> {
  _$GAppNotificationsData_appNotifications? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GAppNotificationsData_appNotifications_notificationTypeBuilder?
      _notificationType;
  GAppNotificationsData_appNotifications_notificationTypeBuilder
      get notificationType => _$this._notificationType ??=
          new GAppNotificationsData_appNotifications_notificationTypeBuilder();
  set notificationType(
          GAppNotificationsData_appNotifications_notificationTypeBuilder?
              notificationType) =>
      _$this._notificationType = notificationType;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GAppNotificationsData_appNotificationsBuilder() {
    GAppNotificationsData_appNotifications._initializeBuilder(this);
  }

  GAppNotificationsData_appNotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _body = $v.body;
      _createdAt = $v.createdAt?.toBuilder();
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _notificationType = $v.notificationType?.toBuilder();
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppNotificationsData_appNotifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppNotificationsData_appNotifications;
  }

  @override
  void update(
      void Function(GAppNotificationsData_appNotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppNotificationsData_appNotifications build() => _build();

  _$GAppNotificationsData_appNotifications _build() {
    _$GAppNotificationsData_appNotifications _$result;
    try {
      _$result = _$v ??
          new _$GAppNotificationsData_appNotifications._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAppNotificationsData_appNotifications', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAppNotificationsData_appNotifications', 'id'),
            body: body,
            createdAt: _createdAt?.build(),
            modifiedAt: _modifiedAt?.build(),
            notificationType: _notificationType?.build(),
            title: title,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
        _$failedField = 'notificationType';
        _notificationType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppNotificationsData_appNotifications',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAppNotificationsData_appNotifications_notificationType
    extends GAppNotificationsData_appNotifications_notificationType {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final String? name;

  factory _$GAppNotificationsData_appNotifications_notificationType(
          [void Function(
                  GAppNotificationsData_appNotifications_notificationTypeBuilder)?
              updates]) =>
      (new GAppNotificationsData_appNotifications_notificationTypeBuilder()
            ..update(updates))
          ._build();

  _$GAppNotificationsData_appNotifications_notificationType._(
      {required this.G__typename, required this.id, this.createdAt, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAppNotificationsData_appNotifications_notificationType',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAppNotificationsData_appNotifications_notificationType', 'id');
  }

  @override
  GAppNotificationsData_appNotifications_notificationType rebuild(
          void Function(
                  GAppNotificationsData_appNotifications_notificationTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAppNotificationsData_appNotifications_notificationTypeBuilder toBuilder() =>
      new GAppNotificationsData_appNotifications_notificationTypeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAppNotificationsData_appNotifications_notificationType &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAppNotificationsData_appNotifications_notificationType')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('name', name))
        .toString();
  }
}

class GAppNotificationsData_appNotifications_notificationTypeBuilder
    implements
        Builder<GAppNotificationsData_appNotifications_notificationType,
            GAppNotificationsData_appNotifications_notificationTypeBuilder> {
  _$GAppNotificationsData_appNotifications_notificationType? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GAppNotificationsData_appNotifications_notificationTypeBuilder() {
    GAppNotificationsData_appNotifications_notificationType._initializeBuilder(
        this);
  }

  GAppNotificationsData_appNotifications_notificationTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAppNotificationsData_appNotifications_notificationType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAppNotificationsData_appNotifications_notificationType;
  }

  @override
  void update(
      void Function(
              GAppNotificationsData_appNotifications_notificationTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAppNotificationsData_appNotifications_notificationType build() => _build();

  _$GAppNotificationsData_appNotifications_notificationType _build() {
    _$GAppNotificationsData_appNotifications_notificationType _$result;
    try {
      _$result = _$v ??
          new _$GAppNotificationsData_appNotifications_notificationType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAppNotificationsData_appNotifications_notificationType',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GAppNotificationsData_appNotifications_notificationType',
                'id'),
            createdAt: _createdAt?.build(),
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAppNotificationsData_appNotifications_notificationType',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserDeviceRegistrationData extends GUserDeviceRegistrationData {
  @override
  final String G__typename;
  @override
  final GUserDeviceRegistrationData_createFirebaseDeviceToken?
      createFirebaseDeviceToken;

  factory _$GUserDeviceRegistrationData(
          [void Function(GUserDeviceRegistrationDataBuilder)? updates]) =>
      (new GUserDeviceRegistrationDataBuilder()..update(updates))._build();

  _$GUserDeviceRegistrationData._(
      {required this.G__typename, this.createFirebaseDeviceToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserDeviceRegistrationData', 'G__typename');
  }

  @override
  GUserDeviceRegistrationData rebuild(
          void Function(GUserDeviceRegistrationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDeviceRegistrationDataBuilder toBuilder() =>
      new GUserDeviceRegistrationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDeviceRegistrationData &&
        G__typename == other.G__typename &&
        createFirebaseDeviceToken == other.createFirebaseDeviceToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createFirebaseDeviceToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserDeviceRegistrationData')
          ..add('G__typename', G__typename)
          ..add('createFirebaseDeviceToken', createFirebaseDeviceToken))
        .toString();
  }
}

class GUserDeviceRegistrationDataBuilder
    implements
        Builder<GUserDeviceRegistrationData,
            GUserDeviceRegistrationDataBuilder> {
  _$GUserDeviceRegistrationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder?
      _createFirebaseDeviceToken;
  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder
      get createFirebaseDeviceToken => _$this._createFirebaseDeviceToken ??=
          new GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder();
  set createFirebaseDeviceToken(
          GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder?
              createFirebaseDeviceToken) =>
      _$this._createFirebaseDeviceToken = createFirebaseDeviceToken;

  GUserDeviceRegistrationDataBuilder() {
    GUserDeviceRegistrationData._initializeBuilder(this);
  }

  GUserDeviceRegistrationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createFirebaseDeviceToken = $v.createFirebaseDeviceToken?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserDeviceRegistrationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserDeviceRegistrationData;
  }

  @override
  void update(void Function(GUserDeviceRegistrationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDeviceRegistrationData build() => _build();

  _$GUserDeviceRegistrationData _build() {
    _$GUserDeviceRegistrationData _$result;
    try {
      _$result = _$v ??
          new _$GUserDeviceRegistrationData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserDeviceRegistrationData', 'G__typename'),
            createFirebaseDeviceToken: _createFirebaseDeviceToken?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createFirebaseDeviceToken';
        _createFirebaseDeviceToken?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserDeviceRegistrationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserDeviceRegistrationData_createFirebaseDeviceToken
    extends GUserDeviceRegistrationData_createFirebaseDeviceToken {
  @override
  final String G__typename;
  @override
  final String? deviceToken;

  factory _$GUserDeviceRegistrationData_createFirebaseDeviceToken(
          [void Function(
                  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder)?
              updates]) =>
      (new GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder()
            ..update(updates))
          ._build();

  _$GUserDeviceRegistrationData_createFirebaseDeviceToken._(
      {required this.G__typename, this.deviceToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserDeviceRegistrationData_createFirebaseDeviceToken',
        'G__typename');
  }

  @override
  GUserDeviceRegistrationData_createFirebaseDeviceToken rebuild(
          void Function(
                  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder toBuilder() =>
      new GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserDeviceRegistrationData_createFirebaseDeviceToken &&
        G__typename == other.G__typename &&
        deviceToken == other.deviceToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deviceToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserDeviceRegistrationData_createFirebaseDeviceToken')
          ..add('G__typename', G__typename)
          ..add('deviceToken', deviceToken))
        .toString();
  }
}

class GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder
    implements
        Builder<GUserDeviceRegistrationData_createFirebaseDeviceToken,
            GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder> {
  _$GUserDeviceRegistrationData_createFirebaseDeviceToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _deviceToken;
  String? get deviceToken => _$this._deviceToken;
  set deviceToken(String? deviceToken) => _$this._deviceToken = deviceToken;

  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder() {
    GUserDeviceRegistrationData_createFirebaseDeviceToken._initializeBuilder(
        this);
  }

  GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deviceToken = $v.deviceToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserDeviceRegistrationData_createFirebaseDeviceToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserDeviceRegistrationData_createFirebaseDeviceToken;
  }

  @override
  void update(
      void Function(
              GUserDeviceRegistrationData_createFirebaseDeviceTokenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserDeviceRegistrationData_createFirebaseDeviceToken build() => _build();

  _$GUserDeviceRegistrationData_createFirebaseDeviceToken _build() {
    final _$result = _$v ??
        new _$GUserDeviceRegistrationData_createFirebaseDeviceToken._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GUserDeviceRegistrationData_createFirebaseDeviceToken',
              'G__typename'),
          deviceToken: deviceToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
