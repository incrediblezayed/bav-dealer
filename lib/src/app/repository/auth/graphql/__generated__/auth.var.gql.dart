// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'auth.var.gql.g.dart';

abstract class GCreateUserVars
    implements Built<GCreateUserVars, GCreateUserVarsBuilder> {
  GCreateUserVars._();

  factory GCreateUserVars([Function(GCreateUserVarsBuilder b) updates]) =
      _$GCreateUserVars;

  _i1.GUserCreateInput get data;
  static Serializer<GCreateUserVars> get serializer =>
      _$gCreateUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateUserVars.serializer,
        json,
      );
}

abstract class GCurrentUserOTPVars
    implements Built<GCurrentUserOTPVars, GCurrentUserOTPVarsBuilder> {
  GCurrentUserOTPVars._();

  factory GCurrentUserOTPVars(
      [Function(GCurrentUserOTPVarsBuilder b) updates]) = _$GCurrentUserOTPVars;

  String get key;
  static Serializer<GCurrentUserOTPVars> get serializer =>
      _$gCurrentUserOTPVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCurrentUserOTPVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCurrentUserOTPVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCurrentUserOTPVars.serializer,
        json,
      );
}

abstract class GValidateUserOTPVars
    implements Built<GValidateUserOTPVars, GValidateUserOTPVarsBuilder> {
  GValidateUserOTPVars._();

  factory GValidateUserOTPVars(
          [Function(GValidateUserOTPVarsBuilder b) updates]) =
      _$GValidateUserOTPVars;

  String get key;
  String get otp;
  static Serializer<GValidateUserOTPVars> get serializer =>
      _$gValidateUserOTPVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GValidateUserOTPVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GValidateUserOTPVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GValidateUserOTPVars.serializer,
        json,
      );
}

abstract class GCreateDealerVars
    implements Built<GCreateDealerVars, GCreateDealerVarsBuilder> {
  GCreateDealerVars._();

  factory GCreateDealerVars([Function(GCreateDealerVarsBuilder b) updates]) =
      _$GCreateDealerVars;

  _i1.GDealerCreateInput get data;
  static Serializer<GCreateDealerVars> get serializer =>
      _$gCreateDealerVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateDealerVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateDealerVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateDealerVars.serializer,
        json,
      );
}

abstract class GAuthenticateUserWithPasswordVars
    implements
        Built<GAuthenticateUserWithPasswordVars,
            GAuthenticateUserWithPasswordVarsBuilder> {
  GAuthenticateUserWithPasswordVars._();

  factory GAuthenticateUserWithPasswordVars(
          [Function(GAuthenticateUserWithPasswordVarsBuilder b) updates]) =
      _$GAuthenticateUserWithPasswordVars;

  String get phoneNumber;
  String get password;
  static Serializer<GAuthenticateUserWithPasswordVars> get serializer =>
      _$gAuthenticateUserWithPasswordVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAuthenticateUserWithPasswordVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAuthenticateUserWithPasswordVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAuthenticateUserWithPasswordVars.serializer,
        json,
      );
}

abstract class GUserVars implements Built<GUserVars, GUserVarsBuilder> {
  GUserVars._();

  factory GUserVars([Function(GUserVarsBuilder b) updates]) = _$GUserVars;

  _i1.GUserWhereUniqueInput get where;
  static Serializer<GUserVars> get serializer => _$gUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVars.serializer,
        json,
      );
}

abstract class GUpdateUserVars
    implements Built<GUpdateUserVars, GUpdateUserVarsBuilder> {
  GUpdateUserVars._();

  factory GUpdateUserVars([Function(GUpdateUserVarsBuilder b) updates]) =
      _$GUpdateUserVars;

  _i1.GUserUpdateInput get data;
  _i1.GUserWhereUniqueInput get where;
  static Serializer<GUpdateUserVars> get serializer =>
      _$gUpdateUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateUserVars.serializer,
        json,
      );
}
