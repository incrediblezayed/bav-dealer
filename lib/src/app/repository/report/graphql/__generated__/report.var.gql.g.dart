// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateReportVars> _$gCreateReportVarsSerializer =
    new _$GCreateReportVarsSerializer();
Serializer<GCreateFeedbackVars> _$gCreateFeedbackVarsSerializer =
    new _$GCreateFeedbackVarsSerializer();
Serializer<GCategoriesVars> _$gCategoriesVarsSerializer =
    new _$GCategoriesVarsSerializer();

class _$GCreateReportVarsSerializer
    implements StructuredSerializer<GCreateReportVars> {
  @override
  final Iterable<Type> types = const [GCreateReportVars, _$GCreateReportVars];
  @override
  final String wireName = 'GCreateReportVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateReportVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GReportCreateInput)),
    ];

    return result;
  }

  @override
  GCreateReportVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateReportVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GReportCreateInput))!
              as _i1.GReportCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateFeedbackVarsSerializer
    implements StructuredSerializer<GCreateFeedbackVars> {
  @override
  final Iterable<Type> types = const [
    GCreateFeedbackVars,
    _$GCreateFeedbackVars
  ];
  @override
  final String wireName = 'GCreateFeedbackVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateFeedbackVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i1.GFeedbackCreateInput)),
    ];

    return result;
  }

  @override
  GCreateFeedbackVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateFeedbackVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFeedbackCreateInput))!
              as _i1.GFeedbackCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCategoriesVarsSerializer
    implements StructuredSerializer<GCategoriesVars> {
  @override
  final Iterable<Type> types = const [GCategoriesVars, _$GCategoriesVars];
  @override
  final String wireName = 'GCategoriesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCategoriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCategoriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCategoriesVarsBuilder().build();
  }
}

class _$GCreateReportVars extends GCreateReportVars {
  @override
  final _i1.GReportCreateInput data;

  factory _$GCreateReportVars(
          [void Function(GCreateReportVarsBuilder)? updates]) =>
      (new GCreateReportVarsBuilder()..update(updates))._build();

  _$GCreateReportVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GCreateReportVars', 'data');
  }

  @override
  GCreateReportVars rebuild(void Function(GCreateReportVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateReportVarsBuilder toBuilder() =>
      new GCreateReportVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateReportVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GCreateReportVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateReportVarsBuilder
    implements Builder<GCreateReportVars, GCreateReportVarsBuilder> {
  _$GCreateReportVars? _$v;

  _i1.GReportCreateInputBuilder? _data;
  _i1.GReportCreateInputBuilder get data =>
      _$this._data ??= new _i1.GReportCreateInputBuilder();
  set data(_i1.GReportCreateInputBuilder? data) => _$this._data = data;

  GCreateReportVarsBuilder();

  GCreateReportVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateReportVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateReportVars;
  }

  @override
  void update(void Function(GCreateReportVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateReportVars build() => _build();

  _$GCreateReportVars _build() {
    _$GCreateReportVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateReportVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateReportVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateFeedbackVars extends GCreateFeedbackVars {
  @override
  final _i1.GFeedbackCreateInput data;

  factory _$GCreateFeedbackVars(
          [void Function(GCreateFeedbackVarsBuilder)? updates]) =>
      (new GCreateFeedbackVarsBuilder()..update(updates))._build();

  _$GCreateFeedbackVars._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GCreateFeedbackVars', 'data');
  }

  @override
  GCreateFeedbackVars rebuild(
          void Function(GCreateFeedbackVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateFeedbackVarsBuilder toBuilder() =>
      new GCreateFeedbackVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateFeedbackVars && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GCreateFeedbackVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateFeedbackVarsBuilder
    implements Builder<GCreateFeedbackVars, GCreateFeedbackVarsBuilder> {
  _$GCreateFeedbackVars? _$v;

  _i1.GFeedbackCreateInputBuilder? _data;
  _i1.GFeedbackCreateInputBuilder get data =>
      _$this._data ??= new _i1.GFeedbackCreateInputBuilder();
  set data(_i1.GFeedbackCreateInputBuilder? data) => _$this._data = data;

  GCreateFeedbackVarsBuilder();

  GCreateFeedbackVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateFeedbackVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateFeedbackVars;
  }

  @override
  void update(void Function(GCreateFeedbackVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateFeedbackVars build() => _build();

  _$GCreateFeedbackVars _build() {
    _$GCreateFeedbackVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateFeedbackVars._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateFeedbackVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCategoriesVars extends GCategoriesVars {
  factory _$GCategoriesVars([void Function(GCategoriesVarsBuilder)? updates]) =>
      (new GCategoriesVarsBuilder()..update(updates))._build();

  _$GCategoriesVars._() : super._();

  @override
  GCategoriesVars rebuild(void Function(GCategoriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoriesVarsBuilder toBuilder() =>
      new GCategoriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoriesVars;
  }

  @override
  int get hashCode {
    return 997817131;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GCategoriesVars').toString();
  }
}

class GCategoriesVarsBuilder
    implements Builder<GCategoriesVars, GCategoriesVarsBuilder> {
  _$GCategoriesVars? _$v;

  GCategoriesVarsBuilder();

  @override
  void replace(GCategoriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoriesVars;
  }

  @override
  void update(void Function(GCategoriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCategoriesVars build() => _build();

  _$GCategoriesVars _build() {
    final _$result = _$v ?? new _$GCategoriesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
