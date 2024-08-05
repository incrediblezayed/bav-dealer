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

  factory GCreateUserReq([void Function(GCreateUserReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GCreateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateUserData, _i3.GCreateUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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

  factory GCurrentUserOTPReq(
          [void Function(GCurrentUserOTPReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GCurrentUserOTPData? parseData(Map<String, dynamic> json) =>
      _i2.GCurrentUserOTPData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCurrentUserOTPData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCurrentUserOTPData, _i3.GCurrentUserOTPVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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
          [void Function(GValidateUserOTPReqBuilder b) updates]) =
      _$GValidateUserOTPReq;

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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GValidateUserOTPData? parseData(Map<String, dynamic> json) =>
      _i2.GValidateUserOTPData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GValidateUserOTPData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GValidateUserOTPData, _i3.GValidateUserOTPVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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

abstract class GSendUserPasswordResetLinkReq
    implements
        Built<GSendUserPasswordResetLinkReq,
            GSendUserPasswordResetLinkReqBuilder>,
        _i1.OperationRequest<_i2.GSendUserPasswordResetLinkData,
            _i3.GSendUserPasswordResetLinkVars> {
  GSendUserPasswordResetLinkReq._();

  factory GSendUserPasswordResetLinkReq(
          [void Function(GSendUserPasswordResetLinkReqBuilder b) updates]) =
      _$GSendUserPasswordResetLinkReq;

  static void _initializeBuilder(GSendUserPasswordResetLinkReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SendUserPasswordResetLink',
    )
    ..executeOnListen = true;

  @override
  _i3.GSendUserPasswordResetLinkVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GSendUserPasswordResetLinkData? Function(
    _i2.GSendUserPasswordResetLinkData?,
    _i2.GSendUserPasswordResetLinkData?,
  )? get updateResult;
  @override
  _i2.GSendUserPasswordResetLinkData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GSendUserPasswordResetLinkData? parseData(Map<String, dynamic> json) =>
      _i2.GSendUserPasswordResetLinkData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSendUserPasswordResetLinkData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSendUserPasswordResetLinkData,
      _i3.GSendUserPasswordResetLinkVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSendUserPasswordResetLinkReq> get serializer =>
      _$gSendUserPasswordResetLinkReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSendUserPasswordResetLinkReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendUserPasswordResetLinkReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSendUserPasswordResetLinkReq.serializer,
        json,
      );
}

abstract class GRedeemUserPasswordResetTokenReq
    implements
        Built<GRedeemUserPasswordResetTokenReq,
            GRedeemUserPasswordResetTokenReqBuilder>,
        _i1.OperationRequest<_i2.GRedeemUserPasswordResetTokenData,
            _i3.GRedeemUserPasswordResetTokenVars> {
  GRedeemUserPasswordResetTokenReq._();

  factory GRedeemUserPasswordResetTokenReq(
          [void Function(GRedeemUserPasswordResetTokenReqBuilder b) updates]) =
      _$GRedeemUserPasswordResetTokenReq;

  static void _initializeBuilder(GRedeemUserPasswordResetTokenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RedeemUserPasswordResetToken',
    )
    ..executeOnListen = true;

  @override
  _i3.GRedeemUserPasswordResetTokenVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GRedeemUserPasswordResetTokenData? Function(
    _i2.GRedeemUserPasswordResetTokenData?,
    _i2.GRedeemUserPasswordResetTokenData?,
  )? get updateResult;
  @override
  _i2.GRedeemUserPasswordResetTokenData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GRedeemUserPasswordResetTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GRedeemUserPasswordResetTokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRedeemUserPasswordResetTokenData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GRedeemUserPasswordResetTokenData,
      _i3.GRedeemUserPasswordResetTokenVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRedeemUserPasswordResetTokenReq> get serializer =>
      _$gRedeemUserPasswordResetTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRedeemUserPasswordResetTokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRedeemUserPasswordResetTokenReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRedeemUserPasswordResetTokenReq.serializer,
        json,
      );
}

abstract class GValidateUserPasswordResetTokenReq
    implements
        Built<GValidateUserPasswordResetTokenReq,
            GValidateUserPasswordResetTokenReqBuilder>,
        _i1.OperationRequest<_i2.GValidateUserPasswordResetTokenData,
            _i3.GValidateUserPasswordResetTokenVars> {
  GValidateUserPasswordResetTokenReq._();

  factory GValidateUserPasswordResetTokenReq(
      [void Function(GValidateUserPasswordResetTokenReqBuilder b)
          updates]) = _$GValidateUserPasswordResetTokenReq;

  static void _initializeBuilder(GValidateUserPasswordResetTokenReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'ValidateUserPasswordResetToken',
        )
        ..executeOnListen = true;

  @override
  _i3.GValidateUserPasswordResetTokenVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GValidateUserPasswordResetTokenData? Function(
    _i2.GValidateUserPasswordResetTokenData?,
    _i2.GValidateUserPasswordResetTokenData?,
  )? get updateResult;
  @override
  _i2.GValidateUserPasswordResetTokenData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GValidateUserPasswordResetTokenData? parseData(
          Map<String, dynamic> json) =>
      _i2.GValidateUserPasswordResetTokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GValidateUserPasswordResetTokenData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GValidateUserPasswordResetTokenData,
      _i3.GValidateUserPasswordResetTokenVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GValidateUserPasswordResetTokenReq> get serializer =>
      _$gValidateUserPasswordResetTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GValidateUserPasswordResetTokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GValidateUserPasswordResetTokenReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GValidateUserPasswordResetTokenReq.serializer,
        json,
      );
}

abstract class GCreateDealerReq
    implements
        Built<GCreateDealerReq, GCreateDealerReqBuilder>,
        _i1.OperationRequest<_i2.GCreateDealerData, _i3.GCreateDealerVars> {
  GCreateDealerReq._();

  factory GCreateDealerReq([void Function(GCreateDealerReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GCreateDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateDealerData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateDealerData, _i3.GCreateDealerVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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
          [void Function(GAuthenticateUserWithPasswordReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GAuthenticateUserWithPasswordData? parseData(Map<String, dynamic> json) =>
      _i2.GAuthenticateUserWithPasswordData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAuthenticateUserWithPasswordData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GAuthenticateUserWithPasswordData,
      _i3.GAuthenticateUserWithPasswordVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

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

  factory GUserReq([void Function(GUserReqBuilder b) updates]) = _$GUserReq;

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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUserData, _i3.GUserVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

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

  factory GUpdateUserReq([void Function(GUpdateUserReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GUpdateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateUserData, _i3.GUpdateUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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

abstract class GDealerReq
    implements
        Built<GDealerReq, GDealerReqBuilder>,
        _i1.OperationRequest<_i2.GDealerData, _i3.GDealerVars> {
  GDealerReq._();

  factory GDealerReq([void Function(GDealerReqBuilder b) updates]) =
      _$GDealerReq;

  static void _initializeBuilder(GDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Dealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GDealerVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GDealerData? Function(
    _i2.GDealerData?,
    _i2.GDealerData?,
  )? get updateResult;
  @override
  _i2.GDealerData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDealerData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GDealerData, _i3.GDealerVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDealerReq> get serializer => _$gDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDealerReq.serializer,
        json,
      );
}

abstract class GUpdateDealerReq
    implements
        Built<GUpdateDealerReq, GUpdateDealerReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateDealerData, _i3.GUpdateDealerVars> {
  GUpdateDealerReq._();

  factory GUpdateDealerReq([void Function(GUpdateDealerReqBuilder b) updates]) =
      _$GUpdateDealerReq;

  static void _initializeBuilder(GUpdateDealerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateDealer',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateDealerVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUpdateDealerData? Function(
    _i2.GUpdateDealerData?,
    _i2.GUpdateDealerData?,
  )? get updateResult;
  @override
  _i2.GUpdateDealerData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GUpdateDealerData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateDealerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateDealerData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateDealerData, _i3.GUpdateDealerVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateDealerReq> get serializer =>
      _$gUpdateDealerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateDealerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateDealerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateDealerReq.serializer,
        json,
      );
}

abstract class GSendDealerMOUApprovalOTPReq
    implements
        Built<GSendDealerMOUApprovalOTPReq,
            GSendDealerMOUApprovalOTPReqBuilder>,
        _i1.OperationRequest<_i2.GSendDealerMOUApprovalOTPData,
            _i3.GSendDealerMOUApprovalOTPVars> {
  GSendDealerMOUApprovalOTPReq._();

  factory GSendDealerMOUApprovalOTPReq(
          [void Function(GSendDealerMOUApprovalOTPReqBuilder b) updates]) =
      _$GSendDealerMOUApprovalOTPReq;

  static void _initializeBuilder(GSendDealerMOUApprovalOTPReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SendDealerMOUApprovalOTP',
    )
    ..executeOnListen = true;

  @override
  _i3.GSendDealerMOUApprovalOTPVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GSendDealerMOUApprovalOTPData? Function(
    _i2.GSendDealerMOUApprovalOTPData?,
    _i2.GSendDealerMOUApprovalOTPData?,
  )? get updateResult;
  @override
  _i2.GSendDealerMOUApprovalOTPData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GSendDealerMOUApprovalOTPData? parseData(Map<String, dynamic> json) =>
      _i2.GSendDealerMOUApprovalOTPData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSendDealerMOUApprovalOTPData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSendDealerMOUApprovalOTPData,
      _i3.GSendDealerMOUApprovalOTPVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSendDealerMOUApprovalOTPReq> get serializer =>
      _$gSendDealerMOUApprovalOTPReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSendDealerMOUApprovalOTPReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendDealerMOUApprovalOTPReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSendDealerMOUApprovalOTPReq.serializer,
        json,
      );
}
