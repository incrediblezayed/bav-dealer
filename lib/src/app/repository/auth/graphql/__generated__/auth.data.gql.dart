// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i1;
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i3;

part 'auth.data.gql.g.dart';

abstract class GCreateUserData
    implements Built<GCreateUserData, GCreateUserDataBuilder> {
  GCreateUserData._();

  factory GCreateUserData([void Function(GCreateUserDataBuilder b) updates]) =
      _$GCreateUserData;

  static void _initializeBuilder(GCreateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateUserData_createUser? get createUser;
  static Serializer<GCreateUserData> get serializer =>
      _$gCreateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData.serializer,
        json,
      );
}

abstract class GCreateUserData_createUser
    implements
        Built<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  GCreateUserData_createUser._();

  factory GCreateUserData_createUser(
          [void Function(GCreateUserData_createUserBuilder b) updates]) =
      _$GCreateUserData_createUser;

  static void _initializeBuilder(GCreateUserData_createUserBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateUserData_createUser> get serializer =>
      _$gCreateUserDataCreateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData_createUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData_createUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData_createUser.serializer,
        json,
      );
}

abstract class GCurrentUserOTPData
    implements Built<GCurrentUserOTPData, GCurrentUserOTPDataBuilder> {
  GCurrentUserOTPData._();

  factory GCurrentUserOTPData(
          [void Function(GCurrentUserOTPDataBuilder b) updates]) =
      _$GCurrentUserOTPData;

  static void _initializeBuilder(GCurrentUserOTPDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get currentUserOTP;
  static Serializer<GCurrentUserOTPData> get serializer =>
      _$gCurrentUserOTPDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCurrentUserOTPData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCurrentUserOTPData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCurrentUserOTPData.serializer,
        json,
      );
}

abstract class GValidateUserOTPData
    implements Built<GValidateUserOTPData, GValidateUserOTPDataBuilder> {
  GValidateUserOTPData._();

  factory GValidateUserOTPData(
          [void Function(GValidateUserOTPDataBuilder b) updates]) =
      _$GValidateUserOTPData;

  static void _initializeBuilder(GValidateUserOTPDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get validateUserOTP;
  static Serializer<GValidateUserOTPData> get serializer =>
      _$gValidateUserOTPDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GValidateUserOTPData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GValidateUserOTPData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GValidateUserOTPData.serializer,
        json,
      );
}

abstract class GSendUserPasswordResetLinkData
    implements
        Built<GSendUserPasswordResetLinkData,
            GSendUserPasswordResetLinkDataBuilder> {
  GSendUserPasswordResetLinkData._();

  factory GSendUserPasswordResetLinkData(
          [void Function(GSendUserPasswordResetLinkDataBuilder b) updates]) =
      _$GSendUserPasswordResetLinkData;

  static void _initializeBuilder(GSendUserPasswordResetLinkDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get sendUserPasswordResetLink;
  static Serializer<GSendUserPasswordResetLinkData> get serializer =>
      _$gSendUserPasswordResetLinkDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendUserPasswordResetLinkData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendUserPasswordResetLinkData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendUserPasswordResetLinkData.serializer,
        json,
      );
}

abstract class GRedeemUserPasswordResetTokenData
    implements
        Built<GRedeemUserPasswordResetTokenData,
            GRedeemUserPasswordResetTokenDataBuilder> {
  GRedeemUserPasswordResetTokenData._();

  factory GRedeemUserPasswordResetTokenData(
          [void Function(GRedeemUserPasswordResetTokenDataBuilder b) updates]) =
      _$GRedeemUserPasswordResetTokenData;

  static void _initializeBuilder(GRedeemUserPasswordResetTokenDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken?
      get redeemUserPasswordResetToken;
  static Serializer<GRedeemUserPasswordResetTokenData> get serializer =>
      _$gRedeemUserPasswordResetTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRedeemUserPasswordResetTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRedeemUserPasswordResetTokenData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRedeemUserPasswordResetTokenData.serializer,
        json,
      );
}

abstract class GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
    implements
        Built<GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken,
            GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder> {
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken._();

  factory GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken(
          [void Function(
                  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder
                      b)
              updates]) =
      _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken;

  static void _initializeBuilder(
          GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder
              b) =>
      b..G__typename = 'RedeemUserPasswordResetTokenResult';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GPasswordResetRedemptionErrorCode get code;
  String get message;
  static Serializer<
          GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken>
      get serializer =>
          _$gRedeemUserPasswordResetTokenDataRedeemUserPasswordResetTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
                .serializer,
            json,
          );
}

abstract class GValidateUserPasswordResetTokenData
    implements
        Built<GValidateUserPasswordResetTokenData,
            GValidateUserPasswordResetTokenDataBuilder> {
  GValidateUserPasswordResetTokenData._();

  factory GValidateUserPasswordResetTokenData(
      [void Function(GValidateUserPasswordResetTokenDataBuilder b)
          updates]) = _$GValidateUserPasswordResetTokenData;

  static void _initializeBuilder(
          GValidateUserPasswordResetTokenDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GValidateUserPasswordResetTokenData_validateUserPasswordResetToken?
      get validateUserPasswordResetToken;
  static Serializer<GValidateUserPasswordResetTokenData> get serializer =>
      _$gValidateUserPasswordResetTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GValidateUserPasswordResetTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GValidateUserPasswordResetTokenData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GValidateUserPasswordResetTokenData.serializer,
        json,
      );
}

abstract class GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
    implements
        Built<
            GValidateUserPasswordResetTokenData_validateUserPasswordResetToken,
            GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder> {
  GValidateUserPasswordResetTokenData_validateUserPasswordResetToken._();

  factory GValidateUserPasswordResetTokenData_validateUserPasswordResetToken(
          [void Function(
                  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder
                      b)
              updates]) =
      _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken;

  static void _initializeBuilder(
          GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder
              b) =>
      b..G__typename = 'ValidateUserPasswordResetTokenResult';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GPasswordResetRedemptionErrorCode get code;
  String get message;
  static Serializer<
          GValidateUserPasswordResetTokenData_validateUserPasswordResetToken>
      get serializer =>
          _$gValidateUserPasswordResetTokenDataValidateUserPasswordResetTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GValidateUserPasswordResetTokenData_validateUserPasswordResetToken?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
                .serializer,
            json,
          );
}

abstract class GCreateDealerData
    implements Built<GCreateDealerData, GCreateDealerDataBuilder> {
  GCreateDealerData._();

  factory GCreateDealerData(
          [void Function(GCreateDealerDataBuilder b) updates]) =
      _$GCreateDealerData;

  static void _initializeBuilder(GCreateDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateDealerData_createDealer? get createDealer;
  static Serializer<GCreateDealerData> get serializer =>
      _$gCreateDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateDealerData.serializer,
        json,
      );
}

abstract class GCreateDealerData_createDealer
    implements
        Built<GCreateDealerData_createDealer,
            GCreateDealerData_createDealerBuilder> {
  GCreateDealerData_createDealer._();

  factory GCreateDealerData_createDealer(
          [void Function(GCreateDealerData_createDealerBuilder b) updates]) =
      _$GCreateDealerData_createDealer;

  static void _initializeBuilder(GCreateDealerData_createDealerBuilder b) =>
      b..G__typename = 'Dealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCreateDealerData_createDealer> get serializer =>
      _$gCreateDealerDataCreateDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateDealerData_createDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateDealerData_createDealer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateDealerData_createDealer.serializer,
        json,
      );
}

abstract class GAuthenticateUserWithPasswordData
    implements
        Built<GAuthenticateUserWithPasswordData,
            GAuthenticateUserWithPasswordDataBuilder> {
  GAuthenticateUserWithPasswordData._();

  factory GAuthenticateUserWithPasswordData(
          [void Function(GAuthenticateUserWithPasswordDataBuilder b) updates]) =
      _$GAuthenticateUserWithPasswordData;

  static void _initializeBuilder(GAuthenticateUserWithPasswordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword?
      get authenticateUserWithPassword;
  static Serializer<GAuthenticateUserWithPasswordData> get serializer =>
      _$gAuthenticateUserWithPasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAuthenticateUserWithPasswordData.serializer,
        json,
      );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword>
      get serializer => _i3.InlineFragmentSerializer<
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword>(
            'GAuthenticateUserWithPasswordData_authenticateUserWithPassword',
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base,
            {
              'UserAuthenticationWithPasswordSuccess':
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess,
              'UserAuthenticationWithPasswordFailure':
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure,
            },
          );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder>,
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder
              b) =>
      b..G__typename = 'UserAuthenticationWithPasswordResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder>,
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder
              b) =>
      b..G__typename = 'UserAuthenticationWithPasswordSuccess';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
      get item;
  String get sessionToken;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder> {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder
              b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get phoneNumber;
  String? get email;
  String? get address;
  bool? get phoneNumberVerified;
  bool? get isAdmin;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image?
      get profile_image;
  BuiltList<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>?
      get addresses;
  bool? get emailVerified;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode?
      get referralCode;
  bool? get deactivate;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder> {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder
              b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int get filesize;
  int get width;
  int get height;
  _i2.GImageExtension get extension;
  String get url;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemProfileImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder> {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder
              b) =>
      b..G__typename = 'Address';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GDateTime? get createdAt;
  _i2.GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get pinCode;
  String? get address;
  String? get town;
  String? get district;
  String? get state;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemAddressesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder> {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder
              b) =>
      b..G__typename = 'ReferralCode';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get code;
  _i2.GDateTime? get modifiedAt;
  _i2.GDateTime? get createdAt;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemReferralCodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
                .serializer,
            json,
          );
}

abstract class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
    implements
        Built<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder>,
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword {
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure._();

  factory GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder
                      b)
              updates]) =
      _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure;

  static void _initializeBuilder(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder
              b) =>
      b..G__typename = 'UserAuthenticationWithPasswordFailure';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  static Serializer<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure>
      get serializer =>
          _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordFailureSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
                .serializer,
            json,
          );
}

abstract class GUserData implements Built<GUserData, GUserDataBuilder> {
  GUserData._();

  factory GUserData([void Function(GUserDataBuilder b) updates]) = _$GUserData;

  static void _initializeBuilder(GUserDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserData_user? get user;
  static Serializer<GUserData> get serializer => _$gUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData.serializer,
        json,
      );
}

abstract class GUserData_user
    implements Built<GUserData_user, GUserData_userBuilder> {
  GUserData_user._();

  factory GUserData_user([void Function(GUserData_userBuilder b) updates]) =
      _$GUserData_user;

  static void _initializeBuilder(GUserData_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get phoneNumber;
  String? get email;
  String? get address;
  bool? get phoneNumberVerified;
  bool? get isAdmin;
  GUserData_user_profile_image? get profile_image;
  BuiltList<GUserData_user_addresses>? get addresses;
  bool? get emailVerified;
  GUserData_user_referralCode? get referralCode;
  BuiltList<GUserData_user_favorites>? get favorites;
  GUserData_user_aadhaar? get aadhaar;
  GUserData_user_driving_license? get driving_license;
  bool? get deactivate;
  static Serializer<GUserData_user> get serializer => _$gUserDataUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user.serializer,
        json,
      );
}

abstract class GUserData_user_profile_image
    implements
        Built<GUserData_user_profile_image,
            GUserData_user_profile_imageBuilder> {
  GUserData_user_profile_image._();

  factory GUserData_user_profile_image(
          [void Function(GUserData_user_profile_imageBuilder b) updates]) =
      _$GUserData_user_profile_image;

  static void _initializeBuilder(GUserData_user_profile_imageBuilder b) =>
      b..G__typename = 'ImageFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int get filesize;
  int get width;
  int get height;
  _i2.GImageExtension get extension;
  String get url;
  static Serializer<GUserData_user_profile_image> get serializer =>
      _$gUserDataUserProfileImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_profile_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_profile_image? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_profile_image.serializer,
        json,
      );
}

abstract class GUserData_user_addresses
    implements
        Built<GUserData_user_addresses, GUserData_user_addressesBuilder> {
  GUserData_user_addresses._();

  factory GUserData_user_addresses(
          [void Function(GUserData_user_addressesBuilder b) updates]) =
      _$GUserData_user_addresses;

  static void _initializeBuilder(GUserData_user_addressesBuilder b) =>
      b..G__typename = 'Address';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GDateTime? get createdAt;
  _i2.GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get pinCode;
  String? get address;
  String? get town;
  String? get district;
  String? get state;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  static Serializer<GUserData_user_addresses> get serializer =>
      _$gUserDataUserAddressesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_addresses.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_addresses? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_addresses.serializer,
        json,
      );
}

abstract class GUserData_user_referralCode
    implements
        Built<GUserData_user_referralCode, GUserData_user_referralCodeBuilder> {
  GUserData_user_referralCode._();

  factory GUserData_user_referralCode(
          [void Function(GUserData_user_referralCodeBuilder b) updates]) =
      _$GUserData_user_referralCode;

  static void _initializeBuilder(GUserData_user_referralCodeBuilder b) =>
      b..G__typename = 'ReferralCode';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get code;
  _i2.GDateTime? get modifiedAt;
  _i2.GDateTime? get createdAt;
  static Serializer<GUserData_user_referralCode> get serializer =>
      _$gUserDataUserReferralCodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_referralCode.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_referralCode? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_referralCode.serializer,
        json,
      );
}

abstract class GUserData_user_favorites
    implements
        Built<GUserData_user_favorites, GUserData_user_favoritesBuilder> {
  GUserData_user_favorites._();

  factory GUserData_user_favorites(
          [void Function(GUserData_user_favoritesBuilder b) updates]) =
      _$GUserData_user_favorites;

  static void _initializeBuilder(GUserData_user_favoritesBuilder b) =>
      b..G__typename = 'Favorite';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserData_user_favorites_vehicleVariant? get vehicleVariant;
  String get id;
  static Serializer<GUserData_user_favorites> get serializer =>
      _$gUserDataUserFavoritesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_favorites.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_favorites? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_favorites.serializer,
        json,
      );
}

abstract class GUserData_user_favorites_vehicleVariant
    implements
        Built<GUserData_user_favorites_vehicleVariant,
            GUserData_user_favorites_vehicleVariantBuilder> {
  GUserData_user_favorites_vehicleVariant._();

  factory GUserData_user_favorites_vehicleVariant(
      [void Function(GUserData_user_favorites_vehicleVariantBuilder b)
          updates]) = _$GUserData_user_favorites_vehicleVariant;

  static void _initializeBuilder(
          GUserData_user_favorites_vehicleVariantBuilder b) =>
      b..G__typename = 'VehicleVariant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GUserData_user_favorites_vehicleVariant> get serializer =>
      _$gUserDataUserFavoritesVehicleVariantSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_favorites_vehicleVariant.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_favorites_vehicleVariant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_favorites_vehicleVariant.serializer,
        json,
      );
}

abstract class GUserData_user_aadhaar
    implements Built<GUserData_user_aadhaar, GUserData_user_aadhaarBuilder> {
  GUserData_user_aadhaar._();

  factory GUserData_user_aadhaar(
          [void Function(GUserData_user_aadhaarBuilder b) updates]) =
      _$GUserData_user_aadhaar;

  static void _initializeBuilder(GUserData_user_aadhaarBuilder b) =>
      b..G__typename = 'FileFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  String get filename;
  static Serializer<GUserData_user_aadhaar> get serializer =>
      _$gUserDataUserAadhaarSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_aadhaar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_aadhaar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_aadhaar.serializer,
        json,
      );
}

abstract class GUserData_user_driving_license
    implements
        Built<GUserData_user_driving_license,
            GUserData_user_driving_licenseBuilder> {
  GUserData_user_driving_license._();

  factory GUserData_user_driving_license(
          [void Function(GUserData_user_driving_licenseBuilder b) updates]) =
      _$GUserData_user_driving_license;

  static void _initializeBuilder(GUserData_user_driving_licenseBuilder b) =>
      b..G__typename = 'FileFieldOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get url;
  String get filename;
  static Serializer<GUserData_user_driving_license> get serializer =>
      _$gUserDataUserDrivingLicenseSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_user_driving_license.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_user_driving_license? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_user_driving_license.serializer,
        json,
      );
}

abstract class GUpdateUserData
    implements Built<GUpdateUserData, GUpdateUserDataBuilder> {
  GUpdateUserData._();

  factory GUpdateUserData([void Function(GUpdateUserDataBuilder b) updates]) =
      _$GUpdateUserData;

  static void _initializeBuilder(GUpdateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserData_updateUser? get updateUser;
  static Serializer<GUpdateUserData> get serializer =>
      _$gUpdateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser
    implements
        Built<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder> {
  GUpdateUserData_updateUser._();

  factory GUpdateUserData_updateUser(
          [void Function(GUpdateUserData_updateUserBuilder b) updates]) =
      _$GUpdateUserData_updateUser;

  static void _initializeBuilder(GUpdateUserData_updateUserBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GUpdateUserData_updateUser> get serializer =>
      _$gUpdateUserDataUpdateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_updateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser.serializer,
        json,
      );
}

abstract class GDealerData implements Built<GDealerData, GDealerDataBuilder> {
  GDealerData._();

  factory GDealerData([void Function(GDealerDataBuilder b) updates]) =
      _$GDealerData;

  static void _initializeBuilder(GDealerDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GDealerData_dealers>? get dealers;
  static Serializer<GDealerData> get serializer => _$gDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDealerData.serializer,
        json,
      );
}

abstract class GDealerData_dealers
    implements Built<GDealerData_dealers, GDealerData_dealersBuilder> {
  GDealerData_dealers._();

  factory GDealerData_dealers(
          [void Function(GDealerData_dealersBuilder b) updates]) =
      _$GDealerData_dealers;

  static void _initializeBuilder(GDealerData_dealersBuilder b) =>
      b..G__typename = 'Dealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  bool? get approved;
  static Serializer<GDealerData_dealers> get serializer =>
      _$gDealerDataDealersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDealerData_dealers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerData_dealers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDealerData_dealers.serializer,
        json,
      );
}

abstract class GUpdateDealerData
    implements Built<GUpdateDealerData, GUpdateDealerDataBuilder> {
  GUpdateDealerData._();

  factory GUpdateDealerData(
          [void Function(GUpdateDealerDataBuilder b) updates]) =
      _$GUpdateDealerData;

  static void _initializeBuilder(GUpdateDealerDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateDealerData_updateDealer? get updateDealer;
  static Serializer<GUpdateDealerData> get serializer =>
      _$gUpdateDealerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateDealerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateDealerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateDealerData.serializer,
        json,
      );
}

abstract class GUpdateDealerData_updateDealer
    implements
        Built<GUpdateDealerData_updateDealer,
            GUpdateDealerData_updateDealerBuilder> {
  GUpdateDealerData_updateDealer._();

  factory GUpdateDealerData_updateDealer(
          [void Function(GUpdateDealerData_updateDealerBuilder b) updates]) =
      _$GUpdateDealerData_updateDealer;

  static void _initializeBuilder(GUpdateDealerData_updateDealerBuilder b) =>
      b..G__typename = 'Dealer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get lLat;
  double? get lLng;
  BuiltList<double?>? get location;
  static Serializer<GUpdateDealerData_updateDealer> get serializer =>
      _$gUpdateDealerDataUpdateDealerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateDealerData_updateDealer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateDealerData_updateDealer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateDealerData_updateDealer.serializer,
        json,
      );
}
