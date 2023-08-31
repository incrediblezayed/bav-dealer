// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVehiclesReq> _$gVehiclesReqSerializer =
    new _$GVehiclesReqSerializer();
Serializer<GCreateVehicleDealerStockRequestReq>
    _$gCreateVehicleDealerStockRequestReqSerializer =
    new _$GCreateVehicleDealerStockRequestReqSerializer();
Serializer<GCreateVehicleTestDriveDealerStockRequestReq>
    _$gCreateVehicleTestDriveDealerStockRequestReqSerializer =
    new _$GCreateVehicleTestDriveDealerStockRequestReqSerializer();

class _$GVehiclesReqSerializer implements StructuredSerializer<GVehiclesReq> {
  @override
  final Iterable<Type> types = const [GVehiclesReq, _$GVehiclesReq];
  @override
  final String wireName = 'GVehiclesReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GVehiclesReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GVehiclesVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GVehiclesData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GVehiclesReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehiclesReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GVehiclesVars))!
              as _i3.GVehiclesVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GVehiclesData))!
              as _i2.GVehiclesData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleDealerStockRequestReqSerializer
    implements StructuredSerializer<GCreateVehicleDealerStockRequestReq> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleDealerStockRequestReq,
    _$GCreateVehicleDealerStockRequestReq
  ];
  @override
  final String wireName = 'GCreateVehicleDealerStockRequestReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateVehicleDealerStockRequestReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType:
              const FullType(_i3.GCreateVehicleDealerStockRequestVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(_i2.GCreateVehicleDealerStockRequestData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GCreateVehicleDealerStockRequestReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleDealerStockRequestReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GCreateVehicleDealerStockRequestVars))!
              as _i3.GCreateVehicleDealerStockRequestVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GCreateVehicleDealerStockRequestData))!
              as _i2.GCreateVehicleDealerStockRequestData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateVehicleTestDriveDealerStockRequestReqSerializer
    implements
        StructuredSerializer<GCreateVehicleTestDriveDealerStockRequestReq> {
  @override
  final Iterable<Type> types = const [
    GCreateVehicleTestDriveDealerStockRequestReq,
    _$GCreateVehicleTestDriveDealerStockRequestReq
  ];
  @override
  final String wireName = 'GCreateVehicleTestDriveDealerStockRequestReq';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreateVehicleTestDriveDealerStockRequestReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(
              _i3.GCreateVehicleTestDriveDealerStockRequestVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                _i2.GCreateVehicleTestDriveDealerStockRequestData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateVehicleTestDriveDealerStockRequestReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i3.GCreateVehicleTestDriveDealerStockRequestVars))!
              as _i3.GCreateVehicleTestDriveDealerStockRequestVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.GCreateVehicleTestDriveDealerStockRequestData))!
              as _i2.GCreateVehicleTestDriveDealerStockRequestData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GVehiclesReq extends GVehiclesReq {
  @override
  final _i3.GVehiclesVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GVehiclesData? Function(_i2.GVehiclesData?, _i2.GVehiclesData?)?
      updateResult;
  @override
  final _i2.GVehiclesData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GVehiclesReq([void Function(GVehiclesReqBuilder)? updates]) =>
      (new GVehiclesReqBuilder()..update(updates))._build();

  _$GVehiclesReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GVehiclesReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GVehiclesReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GVehiclesReq', 'executeOnListen');
  }

  @override
  GVehiclesReq rebuild(void Function(GVehiclesReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehiclesReqBuilder toBuilder() => new GVehiclesReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GVehiclesReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehiclesReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GVehiclesReqBuilder
    implements Builder<GVehiclesReq, GVehiclesReqBuilder> {
  _$GVehiclesReq? _$v;

  _i3.GVehiclesVarsBuilder? _vars;
  _i3.GVehiclesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GVehiclesVarsBuilder();
  set vars(_i3.GVehiclesVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GVehiclesData? Function(_i2.GVehiclesData?, _i2.GVehiclesData?)?
      _updateResult;
  _i2.GVehiclesData? Function(_i2.GVehiclesData?, _i2.GVehiclesData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GVehiclesData? Function(_i2.GVehiclesData?, _i2.GVehiclesData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GVehiclesDataBuilder? _optimisticResponse;
  _i2.GVehiclesDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GVehiclesDataBuilder();
  set optimisticResponse(_i2.GVehiclesDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GVehiclesReqBuilder() {
    GVehiclesReq._initializeBuilder(this);
  }

  GVehiclesReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehiclesReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehiclesReq;
  }

  @override
  void update(void Function(GVehiclesReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehiclesReq build() => _build();

  _$GVehiclesReq _build() {
    _$GVehiclesReq _$result;
    try {
      _$result = _$v ??
          new _$GVehiclesReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GVehiclesReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GVehiclesReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehiclesReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleDealerStockRequestReq
    extends GCreateVehicleDealerStockRequestReq {
  @override
  final _i3.GCreateVehicleDealerStockRequestVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GCreateVehicleDealerStockRequestData? Function(
      _i2.GCreateVehicleDealerStockRequestData?,
      _i2.GCreateVehicleDealerStockRequestData?)? updateResult;
  @override
  final _i2.GCreateVehicleDealerStockRequestData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GCreateVehicleDealerStockRequestReq(
          [void Function(GCreateVehicleDealerStockRequestReqBuilder)?
              updates]) =>
      (new GCreateVehicleDealerStockRequestReqBuilder()..update(updates))
          ._build();

  _$GCreateVehicleDealerStockRequestReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GCreateVehicleDealerStockRequestReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GCreateVehicleDealerStockRequestReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(executeOnListen,
        r'GCreateVehicleDealerStockRequestReq', 'executeOnListen');
  }

  @override
  GCreateVehicleDealerStockRequestReq rebuild(
          void Function(GCreateVehicleDealerStockRequestReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleDealerStockRequestReqBuilder toBuilder() =>
      new GCreateVehicleDealerStockRequestReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GCreateVehicleDealerStockRequestReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateVehicleDealerStockRequestReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GCreateVehicleDealerStockRequestReqBuilder
    implements
        Builder<GCreateVehicleDealerStockRequestReq,
            GCreateVehicleDealerStockRequestReqBuilder> {
  _$GCreateVehicleDealerStockRequestReq? _$v;

  _i3.GCreateVehicleDealerStockRequestVarsBuilder? _vars;
  _i3.GCreateVehicleDealerStockRequestVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreateVehicleDealerStockRequestVarsBuilder();
  set vars(_i3.GCreateVehicleDealerStockRequestVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GCreateVehicleDealerStockRequestData? Function(
      _i2.GCreateVehicleDealerStockRequestData?,
      _i2.GCreateVehicleDealerStockRequestData?)? _updateResult;
  _i2.GCreateVehicleDealerStockRequestData? Function(
          _i2.GCreateVehicleDealerStockRequestData?,
          _i2.GCreateVehicleDealerStockRequestData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GCreateVehicleDealerStockRequestData? Function(
                  _i2.GCreateVehicleDealerStockRequestData?,
                  _i2.GCreateVehicleDealerStockRequestData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GCreateVehicleDealerStockRequestDataBuilder? _optimisticResponse;
  _i2.GCreateVehicleDealerStockRequestDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GCreateVehicleDealerStockRequestDataBuilder();
  set optimisticResponse(
          _i2.GCreateVehicleDealerStockRequestDataBuilder?
              optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GCreateVehicleDealerStockRequestReqBuilder() {
    GCreateVehicleDealerStockRequestReq._initializeBuilder(this);
  }

  GCreateVehicleDealerStockRequestReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleDealerStockRequestReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleDealerStockRequestReq;
  }

  @override
  void update(
      void Function(GCreateVehicleDealerStockRequestReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleDealerStockRequestReq build() => _build();

  _$GCreateVehicleDealerStockRequestReq _build() {
    _$GCreateVehicleDealerStockRequestReq _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleDealerStockRequestReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(operation,
                  r'GCreateVehicleDealerStockRequestReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GCreateVehicleDealerStockRequestReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleDealerStockRequestReq',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateVehicleTestDriveDealerStockRequestReq
    extends GCreateVehicleTestDriveDealerStockRequestReq {
  @override
  final _i3.GCreateVehicleTestDriveDealerStockRequestVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GCreateVehicleTestDriveDealerStockRequestData? Function(
      _i2.GCreateVehicleTestDriveDealerStockRequestData?,
      _i2.GCreateVehicleTestDriveDealerStockRequestData?)? updateResult;
  @override
  final _i2.GCreateVehicleTestDriveDealerStockRequestData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GCreateVehicleTestDriveDealerStockRequestReq(
          [void Function(GCreateVehicleTestDriveDealerStockRequestReqBuilder)?
              updates]) =>
      (new GCreateVehicleTestDriveDealerStockRequestReqBuilder()
            ..update(updates))
          ._build();

  _$GCreateVehicleTestDriveDealerStockRequestReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GCreateVehicleTestDriveDealerStockRequestReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(operation,
        r'GCreateVehicleTestDriveDealerStockRequestReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(executeOnListen,
        r'GCreateVehicleTestDriveDealerStockRequestReq', 'executeOnListen');
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestReq rebuild(
          void Function(GCreateVehicleTestDriveDealerStockRequestReqBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateVehicleTestDriveDealerStockRequestReqBuilder toBuilder() =>
      new GCreateVehicleTestDriveDealerStockRequestReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GCreateVehicleTestDriveDealerStockRequestReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreateVehicleTestDriveDealerStockRequestReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GCreateVehicleTestDriveDealerStockRequestReqBuilder
    implements
        Builder<GCreateVehicleTestDriveDealerStockRequestReq,
            GCreateVehicleTestDriveDealerStockRequestReqBuilder> {
  _$GCreateVehicleTestDriveDealerStockRequestReq? _$v;

  _i3.GCreateVehicleTestDriveDealerStockRequestVarsBuilder? _vars;
  _i3.GCreateVehicleTestDriveDealerStockRequestVarsBuilder get vars =>
      _$this._vars ??=
          new _i3.GCreateVehicleTestDriveDealerStockRequestVarsBuilder();
  set vars(_i3.GCreateVehicleTestDriveDealerStockRequestVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GCreateVehicleTestDriveDealerStockRequestData? Function(
      _i2.GCreateVehicleTestDriveDealerStockRequestData?,
      _i2.GCreateVehicleTestDriveDealerStockRequestData?)? _updateResult;
  _i2.GCreateVehicleTestDriveDealerStockRequestData? Function(
          _i2.GCreateVehicleTestDriveDealerStockRequestData?,
          _i2.GCreateVehicleTestDriveDealerStockRequestData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GCreateVehicleTestDriveDealerStockRequestData? Function(
                  _i2.GCreateVehicleTestDriveDealerStockRequestData?,
                  _i2.GCreateVehicleTestDriveDealerStockRequestData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GCreateVehicleTestDriveDealerStockRequestDataBuilder? _optimisticResponse;
  _i2.GCreateVehicleTestDriveDealerStockRequestDataBuilder
      get optimisticResponse => _$this._optimisticResponse ??=
          new _i2.GCreateVehicleTestDriveDealerStockRequestDataBuilder();
  set optimisticResponse(
          _i2.GCreateVehicleTestDriveDealerStockRequestDataBuilder?
              optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GCreateVehicleTestDriveDealerStockRequestReqBuilder() {
    GCreateVehicleTestDriveDealerStockRequestReq._initializeBuilder(this);
  }

  GCreateVehicleTestDriveDealerStockRequestReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateVehicleTestDriveDealerStockRequestReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateVehicleTestDriveDealerStockRequestReq;
  }

  @override
  void update(
      void Function(GCreateVehicleTestDriveDealerStockRequestReqBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateVehicleTestDriveDealerStockRequestReq build() => _build();

  _$GCreateVehicleTestDriveDealerStockRequestReq _build() {
    _$GCreateVehicleTestDriveDealerStockRequestReq _$result;
    try {
      _$result = _$v ??
          new _$GCreateVehicleTestDriveDealerStockRequestReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(operation,
                  r'GCreateVehicleTestDriveDealerStockRequestReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GCreateVehicleTestDriveDealerStockRequestReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateVehicleTestDriveDealerStockRequestReq',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
