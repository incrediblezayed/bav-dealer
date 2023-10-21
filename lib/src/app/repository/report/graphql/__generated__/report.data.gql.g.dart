// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateReportData> _$gCreateReportDataSerializer =
    new _$GCreateReportDataSerializer();
Serializer<GCreateReportData_createReport>
    _$gCreateReportDataCreateReportSerializer =
    new _$GCreateReportData_createReportSerializer();
Serializer<GCreateFeedbackData> _$gCreateFeedbackDataSerializer =
    new _$GCreateFeedbackDataSerializer();
Serializer<GCreateFeedbackData_createFeedback>
    _$gCreateFeedbackDataCreateFeedbackSerializer =
    new _$GCreateFeedbackData_createFeedbackSerializer();
Serializer<GCategoriesData> _$gCategoriesDataSerializer =
    new _$GCategoriesDataSerializer();
Serializer<GCategoriesData_categories> _$gCategoriesDataCategoriesSerializer =
    new _$GCategoriesData_categoriesSerializer();

class _$GCreateReportDataSerializer
    implements StructuredSerializer<GCreateReportData> {
  @override
  final Iterable<Type> types = const [GCreateReportData, _$GCreateReportData];
  @override
  final String wireName = 'GCreateReportData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateReportData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createReport;
    if (value != null) {
      result
        ..add('createReport')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateReportData_createReport)));
    }
    return result;
  }

  @override
  GCreateReportData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateReportDataBuilder();

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
        case 'createReport':
          result.createReport.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateReportData_createReport))!
              as GCreateReportData_createReport);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateReportData_createReportSerializer
    implements StructuredSerializer<GCreateReportData_createReport> {
  @override
  final Iterable<Type> types = const [
    GCreateReportData_createReport,
    _$GCreateReportData_createReport
  ];
  @override
  final String wireName = 'GCreateReportData_createReport';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateReportData_createReport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateReportData_createReport deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateReportData_createReportBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCreateFeedbackDataSerializer
    implements StructuredSerializer<GCreateFeedbackData> {
  @override
  final Iterable<Type> types = const [
    GCreateFeedbackData,
    _$GCreateFeedbackData
  ];
  @override
  final String wireName = 'GCreateFeedbackData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateFeedbackData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createFeedback;
    if (value != null) {
      result
        ..add('createFeedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateFeedbackData_createFeedback)));
    }
    return result;
  }

  @override
  GCreateFeedbackData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateFeedbackDataBuilder();

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
        case 'createFeedback':
          result.createFeedback.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateFeedbackData_createFeedback))!
              as GCreateFeedbackData_createFeedback);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateFeedbackData_createFeedbackSerializer
    implements StructuredSerializer<GCreateFeedbackData_createFeedback> {
  @override
  final Iterable<Type> types = const [
    GCreateFeedbackData_createFeedback,
    _$GCreateFeedbackData_createFeedback
  ];
  @override
  final String wireName = 'GCreateFeedbackData_createFeedback';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateFeedbackData_createFeedback object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateFeedbackData_createFeedback deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateFeedbackData_createFeedbackBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCategoriesDataSerializer
    implements StructuredSerializer<GCategoriesData> {
  @override
  final Iterable<Type> types = const [GCategoriesData, _$GCategoriesData];
  @override
  final String wireName = 'GCategoriesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCategoriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GCategoriesData_categories)])));
    }
    return result;
  }

  @override
  GCategoriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCategoriesDataBuilder();

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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GCategoriesData_categories)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCategoriesData_categoriesSerializer
    implements StructuredSerializer<GCategoriesData_categories> {
  @override
  final Iterable<Type> types = const [
    GCategoriesData_categories,
    _$GCategoriesData_categories
  ];
  @override
  final String wireName = 'GCategoriesData_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCategoriesData_categories object,
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCategoriesData_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCategoriesData_categoriesBuilder();

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
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateReportData extends GCreateReportData {
  @override
  final String G__typename;
  @override
  final GCreateReportData_createReport? createReport;

  factory _$GCreateReportData(
          [void Function(GCreateReportDataBuilder)? updates]) =>
      (new GCreateReportDataBuilder()..update(updates))._build();

  _$GCreateReportData._({required this.G__typename, this.createReport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateReportData', 'G__typename');
  }

  @override
  GCreateReportData rebuild(void Function(GCreateReportDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateReportDataBuilder toBuilder() =>
      new GCreateReportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateReportData &&
        G__typename == other.G__typename &&
        createReport == other.createReport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createReport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateReportData')
          ..add('G__typename', G__typename)
          ..add('createReport', createReport))
        .toString();
  }
}

class GCreateReportDataBuilder
    implements Builder<GCreateReportData, GCreateReportDataBuilder> {
  _$GCreateReportData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateReportData_createReportBuilder? _createReport;
  GCreateReportData_createReportBuilder get createReport =>
      _$this._createReport ??= new GCreateReportData_createReportBuilder();
  set createReport(GCreateReportData_createReportBuilder? createReport) =>
      _$this._createReport = createReport;

  GCreateReportDataBuilder() {
    GCreateReportData._initializeBuilder(this);
  }

  GCreateReportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createReport = $v.createReport?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateReportData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateReportData;
  }

  @override
  void update(void Function(GCreateReportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateReportData build() => _build();

  _$GCreateReportData _build() {
    _$GCreateReportData _$result;
    try {
      _$result = _$v ??
          new _$GCreateReportData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateReportData', 'G__typename'),
              createReport: _createReport?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createReport';
        _createReport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateReportData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateReportData_createReport extends GCreateReportData_createReport {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GCreateReportData_createReport(
          [void Function(GCreateReportData_createReportBuilder)? updates]) =>
      (new GCreateReportData_createReportBuilder()..update(updates))._build();

  _$GCreateReportData_createReport._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateReportData_createReport', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateReportData_createReport', 'id');
  }

  @override
  GCreateReportData_createReport rebuild(
          void Function(GCreateReportData_createReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateReportData_createReportBuilder toBuilder() =>
      new GCreateReportData_createReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateReportData_createReport &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateReportData_createReport')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreateReportData_createReportBuilder
    implements
        Builder<GCreateReportData_createReport,
            GCreateReportData_createReportBuilder> {
  _$GCreateReportData_createReport? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCreateReportData_createReportBuilder() {
    GCreateReportData_createReport._initializeBuilder(this);
  }

  GCreateReportData_createReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateReportData_createReport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateReportData_createReport;
  }

  @override
  void update(void Function(GCreateReportData_createReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateReportData_createReport build() => _build();

  _$GCreateReportData_createReport _build() {
    final _$result = _$v ??
        new _$GCreateReportData_createReport._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreateReportData_createReport', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GCreateReportData_createReport', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateFeedbackData extends GCreateFeedbackData {
  @override
  final String G__typename;
  @override
  final GCreateFeedbackData_createFeedback? createFeedback;

  factory _$GCreateFeedbackData(
          [void Function(GCreateFeedbackDataBuilder)? updates]) =>
      (new GCreateFeedbackDataBuilder()..update(updates))._build();

  _$GCreateFeedbackData._({required this.G__typename, this.createFeedback})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateFeedbackData', 'G__typename');
  }

  @override
  GCreateFeedbackData rebuild(
          void Function(GCreateFeedbackDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateFeedbackDataBuilder toBuilder() =>
      new GCreateFeedbackDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateFeedbackData &&
        G__typename == other.G__typename &&
        createFeedback == other.createFeedback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createFeedback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateFeedbackData')
          ..add('G__typename', G__typename)
          ..add('createFeedback', createFeedback))
        .toString();
  }
}

class GCreateFeedbackDataBuilder
    implements Builder<GCreateFeedbackData, GCreateFeedbackDataBuilder> {
  _$GCreateFeedbackData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateFeedbackData_createFeedbackBuilder? _createFeedback;
  GCreateFeedbackData_createFeedbackBuilder get createFeedback =>
      _$this._createFeedback ??=
          new GCreateFeedbackData_createFeedbackBuilder();
  set createFeedback(
          GCreateFeedbackData_createFeedbackBuilder? createFeedback) =>
      _$this._createFeedback = createFeedback;

  GCreateFeedbackDataBuilder() {
    GCreateFeedbackData._initializeBuilder(this);
  }

  GCreateFeedbackDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createFeedback = $v.createFeedback?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateFeedbackData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateFeedbackData;
  }

  @override
  void update(void Function(GCreateFeedbackDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateFeedbackData build() => _build();

  _$GCreateFeedbackData _build() {
    _$GCreateFeedbackData _$result;
    try {
      _$result = _$v ??
          new _$GCreateFeedbackData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateFeedbackData', 'G__typename'),
              createFeedback: _createFeedback?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createFeedback';
        _createFeedback?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateFeedbackData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateFeedbackData_createFeedback
    extends GCreateFeedbackData_createFeedback {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GCreateFeedbackData_createFeedback(
          [void Function(GCreateFeedbackData_createFeedbackBuilder)?
              updates]) =>
      (new GCreateFeedbackData_createFeedbackBuilder()..update(updates))
          ._build();

  _$GCreateFeedbackData_createFeedback._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateFeedbackData_createFeedback', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateFeedbackData_createFeedback', 'id');
  }

  @override
  GCreateFeedbackData_createFeedback rebuild(
          void Function(GCreateFeedbackData_createFeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateFeedbackData_createFeedbackBuilder toBuilder() =>
      new GCreateFeedbackData_createFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateFeedbackData_createFeedback &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateFeedbackData_createFeedback')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreateFeedbackData_createFeedbackBuilder
    implements
        Builder<GCreateFeedbackData_createFeedback,
            GCreateFeedbackData_createFeedbackBuilder> {
  _$GCreateFeedbackData_createFeedback? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCreateFeedbackData_createFeedbackBuilder() {
    GCreateFeedbackData_createFeedback._initializeBuilder(this);
  }

  GCreateFeedbackData_createFeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateFeedbackData_createFeedback other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateFeedbackData_createFeedback;
  }

  @override
  void update(
      void Function(GCreateFeedbackData_createFeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateFeedbackData_createFeedback build() => _build();

  _$GCreateFeedbackData_createFeedback _build() {
    final _$result = _$v ??
        new _$GCreateFeedbackData_createFeedback._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateFeedbackData_createFeedback', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GCreateFeedbackData_createFeedback', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GCategoriesData extends GCategoriesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GCategoriesData_categories>? categories;

  factory _$GCategoriesData([void Function(GCategoriesDataBuilder)? updates]) =>
      (new GCategoriesDataBuilder()..update(updates))._build();

  _$GCategoriesData._({required this.G__typename, this.categories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCategoriesData', 'G__typename');
  }

  @override
  GCategoriesData rebuild(void Function(GCategoriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoriesDataBuilder toBuilder() =>
      new GCategoriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoriesData &&
        G__typename == other.G__typename &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCategoriesData')
          ..add('G__typename', G__typename)
          ..add('categories', categories))
        .toString();
  }
}

class GCategoriesDataBuilder
    implements Builder<GCategoriesData, GCategoriesDataBuilder> {
  _$GCategoriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GCategoriesData_categories>? _categories;
  ListBuilder<GCategoriesData_categories> get categories =>
      _$this._categories ??= new ListBuilder<GCategoriesData_categories>();
  set categories(ListBuilder<GCategoriesData_categories>? categories) =>
      _$this._categories = categories;

  GCategoriesDataBuilder() {
    GCategoriesData._initializeBuilder(this);
  }

  GCategoriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCategoriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoriesData;
  }

  @override
  void update(void Function(GCategoriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCategoriesData build() => _build();

  _$GCategoriesData _build() {
    _$GCategoriesData _$result;
    try {
      _$result = _$v ??
          new _$GCategoriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCategoriesData', 'G__typename'),
              categories: _categories?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCategoriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCategoriesData_categories extends GCategoriesData_categories {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final String? description;

  factory _$GCategoriesData_categories(
          [void Function(GCategoriesData_categoriesBuilder)? updates]) =>
      (new GCategoriesData_categoriesBuilder()..update(updates))._build();

  _$GCategoriesData_categories._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.createdAt,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCategoriesData_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCategoriesData_categories', 'id');
  }

  @override
  GCategoriesData_categories rebuild(
          void Function(GCategoriesData_categoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoriesData_categoriesBuilder toBuilder() =>
      new GCategoriesData_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoriesData_categories &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        createdAt == other.createdAt &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCategoriesData_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('description', description))
        .toString();
  }
}

class GCategoriesData_categoriesBuilder
    implements
        Builder<GCategoriesData_categories, GCategoriesData_categoriesBuilder> {
  _$GCategoriesData_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GCategoriesData_categoriesBuilder() {
    GCategoriesData_categories._initializeBuilder(this);
  }

  GCategoriesData_categoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _createdAt = $v.createdAt?.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCategoriesData_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoriesData_categories;
  }

  @override
  void update(void Function(GCategoriesData_categoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCategoriesData_categories build() => _build();

  _$GCategoriesData_categories _build() {
    _$GCategoriesData_categories _$result;
    try {
      _$result = _$v ??
          new _$GCategoriesData_categories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCategoriesData_categories', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCategoriesData_categories', 'id'),
              name: name,
              createdAt: _createdAt?.build(),
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCategoriesData_categories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
