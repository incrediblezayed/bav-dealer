// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductDealerStockRequestsReq>
    _$gProductDealerStockRequestsReqSerializer =
    new _$GProductDealerStockRequestsReqSerializer();
Serializer<GVehicleDealerStockRequestsReq>
    _$gVehicleDealerStockRequestsReqSerializer =
    new _$GVehicleDealerStockRequestsReqSerializer();

class _$GProductDealerStockRequestsReqSerializer
    implements StructuredSerializer<GProductDealerStockRequestsReq> {
  @override
  final Iterable<Type> types = const [
    GProductDealerStockRequestsReq,
    _$GProductDealerStockRequestsReq
  ];
  @override
  final String wireName = 'GProductDealerStockRequestsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductDealerStockRequestsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GProductDealerStockRequestsVars)),
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
                const FullType(_i2.GProductDealerStockRequestsData)));
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
  GProductDealerStockRequestsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductDealerStockRequestsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GProductDealerStockRequestsVars))!
              as _i3.GProductDealerStockRequestsVars);
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
                      const FullType(_i2.GProductDealerStockRequestsData))!
              as _i2.GProductDealerStockRequestsData);
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

class _$GVehicleDealerStockRequestsReqSerializer
    implements StructuredSerializer<GVehicleDealerStockRequestsReq> {
  @override
  final Iterable<Type> types = const [
    GVehicleDealerStockRequestsReq,
    _$GVehicleDealerStockRequestsReq
  ];
  @override
  final String wireName = 'GVehicleDealerStockRequestsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVehicleDealerStockRequestsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GVehicleDealerStockRequestsVars)),
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
                const FullType(_i2.GVehicleDealerStockRequestsData)));
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
  GVehicleDealerStockRequestsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVehicleDealerStockRequestsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GVehicleDealerStockRequestsVars))!
              as _i3.GVehicleDealerStockRequestsVars);
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
                      const FullType(_i2.GVehicleDealerStockRequestsData))!
              as _i2.GVehicleDealerStockRequestsData);
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

class _$GProductDealerStockRequestsReq extends GProductDealerStockRequestsReq {
  @override
  final _i3.GProductDealerStockRequestsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GProductDealerStockRequestsData? Function(
      _i2.GProductDealerStockRequestsData?,
      _i2.GProductDealerStockRequestsData?)? updateResult;
  @override
  final _i2.GProductDealerStockRequestsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$GProductDealerStockRequestsReq(
          [void Function(GProductDealerStockRequestsReqBuilder)? updates]) =>
      (new GProductDealerStockRequestsReqBuilder()..update(updates))._build();

  _$GProductDealerStockRequestsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GProductDealerStockRequestsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GProductDealerStockRequestsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GProductDealerStockRequestsReq', 'executeOnListen');
  }

  @override
  GProductDealerStockRequestsReq rebuild(
          void Function(GProductDealerStockRequestsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductDealerStockRequestsReqBuilder toBuilder() =>
      new GProductDealerStockRequestsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GProductDealerStockRequestsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
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
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GProductDealerStockRequestsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class GProductDealerStockRequestsReqBuilder
    implements
        Builder<GProductDealerStockRequestsReq,
            GProductDealerStockRequestsReqBuilder> {
  _$GProductDealerStockRequestsReq? _$v;

  _i3.GProductDealerStockRequestsVarsBuilder? _vars;
  _i3.GProductDealerStockRequestsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GProductDealerStockRequestsVarsBuilder();
  set vars(_i3.GProductDealerStockRequestsVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GProductDealerStockRequestsData? Function(
      _i2.GProductDealerStockRequestsData?,
      _i2.GProductDealerStockRequestsData?)? _updateResult;
  _i2.GProductDealerStockRequestsData? Function(
          _i2.GProductDealerStockRequestsData?,
          _i2.GProductDealerStockRequestsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GProductDealerStockRequestsData? Function(
                  _i2.GProductDealerStockRequestsData?,
                  _i2.GProductDealerStockRequestsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GProductDealerStockRequestsDataBuilder? _optimisticResponse;
  _i2.GProductDealerStockRequestsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GProductDealerStockRequestsDataBuilder();
  set optimisticResponse(
          _i2.GProductDealerStockRequestsDataBuilder? optimisticResponse) =>
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

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  GProductDealerStockRequestsReqBuilder() {
    GProductDealerStockRequestsReq._initializeBuilder(this);
  }

  GProductDealerStockRequestsReqBuilder get _$this {
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
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProductDealerStockRequestsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductDealerStockRequestsReq;
  }

  @override
  void update(void Function(GProductDealerStockRequestsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GProductDealerStockRequestsReq build() => _build();

  _$GProductDealerStockRequestsReq _build() {
    _$GProductDealerStockRequestsReq _$result;
    try {
      _$result = _$v ??
          new _$GProductDealerStockRequestsReq._(
            vars: vars.build(),
            operation: BuiltValueNullFieldError.checkNotNull(
                operation, r'GProductDealerStockRequestsReq', 'operation'),
            requestId: requestId,
            updateResult: updateResult,
            optimisticResponse: _optimisticResponse?.build(),
            updateCacheHandlerKey: updateCacheHandlerKey,
            updateCacheHandlerContext: updateCacheHandlerContext,
            fetchPolicy: fetchPolicy,
            executeOnListen: BuiltValueNullFieldError.checkNotNull(
                executeOnListen,
                r'GProductDealerStockRequestsReq',
                'executeOnListen'),
            context: context,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GProductDealerStockRequestsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVehicleDealerStockRequestsReq extends GVehicleDealerStockRequestsReq {
  @override
  final _i3.GVehicleDealerStockRequestsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GVehicleDealerStockRequestsData? Function(
      _i2.GVehicleDealerStockRequestsData?,
      _i2.GVehicleDealerStockRequestsData?)? updateResult;
  @override
  final _i2.GVehicleDealerStockRequestsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$GVehicleDealerStockRequestsReq(
          [void Function(GVehicleDealerStockRequestsReqBuilder)? updates]) =>
      (new GVehicleDealerStockRequestsReqBuilder()..update(updates))._build();

  _$GVehicleDealerStockRequestsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GVehicleDealerStockRequestsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GVehicleDealerStockRequestsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GVehicleDealerStockRequestsReq', 'executeOnListen');
  }

  @override
  GVehicleDealerStockRequestsReq rebuild(
          void Function(GVehicleDealerStockRequestsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVehicleDealerStockRequestsReqBuilder toBuilder() =>
      new GVehicleDealerStockRequestsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GVehicleDealerStockRequestsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
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
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVehicleDealerStockRequestsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class GVehicleDealerStockRequestsReqBuilder
    implements
        Builder<GVehicleDealerStockRequestsReq,
            GVehicleDealerStockRequestsReqBuilder> {
  _$GVehicleDealerStockRequestsReq? _$v;

  _i3.GVehicleDealerStockRequestsVarsBuilder? _vars;
  _i3.GVehicleDealerStockRequestsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GVehicleDealerStockRequestsVarsBuilder();
  set vars(_i3.GVehicleDealerStockRequestsVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GVehicleDealerStockRequestsData? Function(
      _i2.GVehicleDealerStockRequestsData?,
      _i2.GVehicleDealerStockRequestsData?)? _updateResult;
  _i2.GVehicleDealerStockRequestsData? Function(
          _i2.GVehicleDealerStockRequestsData?,
          _i2.GVehicleDealerStockRequestsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GVehicleDealerStockRequestsData? Function(
                  _i2.GVehicleDealerStockRequestsData?,
                  _i2.GVehicleDealerStockRequestsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GVehicleDealerStockRequestsDataBuilder? _optimisticResponse;
  _i2.GVehicleDealerStockRequestsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GVehicleDealerStockRequestsDataBuilder();
  set optimisticResponse(
          _i2.GVehicleDealerStockRequestsDataBuilder? optimisticResponse) =>
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

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  GVehicleDealerStockRequestsReqBuilder() {
    GVehicleDealerStockRequestsReq._initializeBuilder(this);
  }

  GVehicleDealerStockRequestsReqBuilder get _$this {
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
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVehicleDealerStockRequestsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVehicleDealerStockRequestsReq;
  }

  @override
  void update(void Function(GVehicleDealerStockRequestsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVehicleDealerStockRequestsReq build() => _build();

  _$GVehicleDealerStockRequestsReq _build() {
    _$GVehicleDealerStockRequestsReq _$result;
    try {
      _$result = _$v ??
          new _$GVehicleDealerStockRequestsReq._(
            vars: vars.build(),
            operation: BuiltValueNullFieldError.checkNotNull(
                operation, r'GVehicleDealerStockRequestsReq', 'operation'),
            requestId: requestId,
            updateResult: updateResult,
            optimisticResponse: _optimisticResponse?.build(),
            updateCacheHandlerKey: updateCacheHandlerKey,
            updateCacheHandlerContext: updateCacheHandlerContext,
            fetchPolicy: fetchPolicy,
            executeOnListen: BuiltValueNullFieldError.checkNotNull(
                executeOnListen,
                r'GVehicleDealerStockRequestsReq',
                'executeOnListen'),
            context: context,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVehicleDealerStockRequestsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
