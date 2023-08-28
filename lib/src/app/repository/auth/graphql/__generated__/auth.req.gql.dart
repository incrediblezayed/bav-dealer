// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.ast.gql.dart'
    as _i5;
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.var.gql.dart'
    as _i3;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'auth.req.gql.g.dart';

abstract class GCreateUserReq
    implements
        Built<GCreateUserReq, GCreateUserReqBuilder>,
        _i1.OperationRequest<_i2.GCreateUserData, _i3.GCreateUserVars> {
  GCreateUserReq._();

  factory GCreateUserReq([Function(GCreateUserReqBuilder b) updates]) =
      _$GCreateUserReq;

  static void _initializeBuilder(GCreateUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreateUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCreateUserData? Function(
    _i2.GCreateUserData?,
    _i2.GCreateUserData?,
  )? get updateResult;
  @override
  _i2.GCreateUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateUserData.fromJson(json);
  static Serializer<GCreateUserReq> get serializer =>
      _$gCreateUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateUserReq.serializer,
        json,
      );
}

abstract class GCurrentUserOTPReq
    implements
        Built<GCurrentUserOTPReq, GCurrentUserOTPReqBuilder>,
        _i1.OperationRequest<_i2.GCurrentUserOTPData, _i3.GCurrentUserOTPVars> {
  GCurrentUserOTPReq._();

  factory GCurrentUserOTPReq([Function(GCurrentUserOTPReqBuilder b) updates]) =
      _$GCurrentUserOTPReq;

  static void _initializeBuilder(GCurrentUserOTPReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CurrentUserOTP',
    )
    ..executeOnListen = true;
  @override
  _i3.GCurrentUserOTPVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCurrentUserOTPData? Function(
    _i2.GCurrentUserOTPData?,
    _i2.GCurrentUserOTPData?,
  )? get updateResult;
  @override
  _i2.GCurrentUserOTPData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCurrentUserOTPData? parseData(Map<String, dynamic> json) =>
      _i2.GCurrentUserOTPData.fromJson(json);
  static Serializer<GCurrentUserOTPReq> get serializer =>
      _$gCurrentUserOTPReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCurrentUserOTPReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCurrentUserOTPReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCurrentUserOTPReq.serializer,
        json,
      );
}

abstract class GValidateUserOTPReq
    implements
        Built<GValidateUserOTPReq, GValidateUserOTPReqBuilder>,
        _i1
        .OperationRequest<_i2.GValidateUserOTPData, _i3.GValidateUserOTPVars> {
  GValidateUserOTPReq._();

  factory GValidateUserOTPReq(
      [Function(GValidateUserOTPReqBuilder b) updates]) = _$GValidateUserOTPReq;

  static void _initializeBuilder(GValidateUserOTPReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ValidateUserOTP',
    )
    ..executeOnListen = true;
  @override
  _i3.GValidateUserOTPVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GValidateUserOTPData? Function(
    _i2.GValidateUserOTPData?,
    _i2.GValidateUserOTPData?,
  )? get updateResult;
  @override
  _i2.GValidateUserOTPData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GValidateUserOTPData? parseData(Map<String, dynamic> json) =>
      _i2.GValidateUserOTPData.fromJson(json);
  static Serializer<GValidateUserOTPReq> get serializer =>
      _$gValidateUserOTPReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GValidateUserOTPReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GValidateUserOTPReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GValidateUserOTPReq.serializer,
        json,
      );
}

abstract class GCreateDealerReq
    implements
        Built<GCreateDealerReq, GCreateDealerReqBuilder>,
        _i1.OperationRequest<_i2.GCreateDealerData, _i3.GCreateDealerVars> {
  GCreateDealerReq._();

  factory GCreateDealerReq([Function(GCreateDealerReqBuilder b) updates]) =
      _$GCreateDealerReq;

  static void _initializeBuilder(GCreateDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateDealer',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreateDealerVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCreateDealerData? Function(
    _i2.GCreateDealerData?,
    _i2.GCreateDealerData?,
  )? get updateResult;
  @override
  _i2.GCreateDealerData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateDealerData.fromJson(json);
  static Serializer<GCreateDealerReq> get serializer =>
      _$gCreateDealerReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateDealerReq.serializer,
        json,
      );
}

abstract class GAuthenticateUserWithPasswordReq
    implements
        Built<GAuthenticateUserWithPasswordReq,
            GAuthenticateUserWithPasswordReqBuilder>,
        _i1.OperationRequest<_i2.GAuthenticateUserWithPasswordData,
            _i3.GAuthenticateUserWithPasswordVars> {
  GAuthenticateUserWithPasswordReq._();

  factory GAuthenticateUserWithPasswordReq(
          [Function(GAuthenticateUserWithPasswordReqBuilder b) updates]) =
      _$GAuthenticateUserWithPasswordReq;

  static void _initializeBuilder(GAuthenticateUserWithPasswordReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AuthenticateUserWithPassword',
    )
    ..executeOnListen = true;
  @override
  _i3.GAuthenticateUserWithPasswordVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAuthenticateUserWithPasswordData? Function(
    _i2.GAuthenticateUserWithPasswordData?,
    _i2.GAuthenticateUserWithPasswordData?,
  )? get updateResult;
  @override
  _i2.GAuthenticateUserWithPasswordData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAuthenticateUserWithPasswordData? parseData(Map<String, dynamic> json) =>
      _i2.GAuthenticateUserWithPasswordData.fromJson(json);
  static Serializer<GAuthenticateUserWithPasswordReq> get serializer =>
      _$gAuthenticateUserWithPasswordReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAuthenticateUserWithPasswordReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAuthenticateUserWithPasswordReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAuthenticateUserWithPasswordReq.serializer,
        json,
      );
}

abstract class GUserReq
    implements
        Built<GUserReq, GUserReqBuilder>,
        _i1.OperationRequest<_i2.GUserData, _i3.GUserVars> {
  GUserReq._();

  factory GUserReq([Function(GUserReqBuilder b) updates]) = _$GUserReq;

  static void _initializeBuilder(GUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'User',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUserData? Function(
    _i2.GUserData?,
    _i2.GUserData?,
  )? get updateResult;
  @override
  _i2.GUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUserData.fromJson(json);
  static Serializer<GUserReq> get serializer => _$gUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserReq.serializer,
        json,
      );
}

abstract class GUpdateUserReq
    implements
        Built<GUpdateUserReq, GUpdateUserReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateUserData, _i3.GUpdateUserVars> {
  GUpdateUserReq._();

  factory GUpdateUserReq([Function(GUpdateUserReqBuilder b) updates]) =
      _$GUpdateUserReq;

  static void _initializeBuilder(GUpdateUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GUpdateUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUpdateUserData? Function(
    _i2.GUpdateUserData?,
    _i2.GUpdateUserData?,
  )? get updateResult;
  @override
  _i2.GUpdateUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUpdateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateUserData.fromJson(json);
  static Serializer<GUpdateUserReq> get serializer =>
      _$gUpdateUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateUserReq.serializer,
        json,
      );
}
