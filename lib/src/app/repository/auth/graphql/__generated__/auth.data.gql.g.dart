// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserData> _$gCreateUserDataSerializer =
    new _$GCreateUserDataSerializer();
Serializer<GCreateUserData_createUser> _$gCreateUserDataCreateUserSerializer =
    new _$GCreateUserData_createUserSerializer();
Serializer<GCurrentUserOTPData> _$gCurrentUserOTPDataSerializer =
    new _$GCurrentUserOTPDataSerializer();
Serializer<GValidateUserOTPData> _$gValidateUserOTPDataSerializer =
    new _$GValidateUserOTPDataSerializer();
Serializer<GSendUserPasswordResetLinkData>
    _$gSendUserPasswordResetLinkDataSerializer =
    new _$GSendUserPasswordResetLinkDataSerializer();
Serializer<GRedeemUserPasswordResetTokenData>
    _$gRedeemUserPasswordResetTokenDataSerializer =
    new _$GRedeemUserPasswordResetTokenDataSerializer();
Serializer<GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken>
    _$gRedeemUserPasswordResetTokenDataRedeemUserPasswordResetTokenSerializer =
    new _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenSerializer();
Serializer<GValidateUserPasswordResetTokenData>
    _$gValidateUserPasswordResetTokenDataSerializer =
    new _$GValidateUserPasswordResetTokenDataSerializer();
Serializer<GValidateUserPasswordResetTokenData_validateUserPasswordResetToken>
    _$gValidateUserPasswordResetTokenDataValidateUserPasswordResetTokenSerializer =
    new _$GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenSerializer();
Serializer<GCreateDealerData> _$gCreateDealerDataSerializer =
    new _$GCreateDealerDataSerializer();
Serializer<GCreateDealerData_createDealer>
    _$gCreateDealerDataCreateDealerSerializer =
    new _$GCreateDealerData_createDealerSerializer();
Serializer<GAuthenticateUserWithPasswordData>
    _$gAuthenticateUserWithPasswordDataSerializer =
    new _$GAuthenticateUserWithPasswordDataSerializer();
Serializer<GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordBaseSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseSerializer();
Serializer<
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessSerializer();
Serializer<
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemSerializer();
Serializer<
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemProfileImageSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageSerializer();
Serializer<
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemAddressesSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesSerializer();
Serializer<
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordSuccessItemReferralCodeSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeSerializer();
Serializer<
        GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure>
    _$gAuthenticateUserWithPasswordDataAuthenticateUserWithPasswordAsUserAuthenticationWithPasswordFailureSerializer =
    new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureSerializer();
Serializer<GUserData> _$gUserDataSerializer = new _$GUserDataSerializer();
Serializer<GUserData_user> _$gUserDataUserSerializer =
    new _$GUserData_userSerializer();
Serializer<GUserData_user_profile_image> _$gUserDataUserProfileImageSerializer =
    new _$GUserData_user_profile_imageSerializer();
Serializer<GUserData_user_addresses> _$gUserDataUserAddressesSerializer =
    new _$GUserData_user_addressesSerializer();
Serializer<GUserData_user_referralCode> _$gUserDataUserReferralCodeSerializer =
    new _$GUserData_user_referralCodeSerializer();
Serializer<GUserData_user_favorites> _$gUserDataUserFavoritesSerializer =
    new _$GUserData_user_favoritesSerializer();
Serializer<GUserData_user_favorites_vehicleVariant>
    _$gUserDataUserFavoritesVehicleVariantSerializer =
    new _$GUserData_user_favorites_vehicleVariantSerializer();
Serializer<GUserData_user_aadhaar> _$gUserDataUserAadhaarSerializer =
    new _$GUserData_user_aadhaarSerializer();
Serializer<GUserData_user_driving_license>
    _$gUserDataUserDrivingLicenseSerializer =
    new _$GUserData_user_driving_licenseSerializer();
Serializer<GUpdateUserData> _$gUpdateUserDataSerializer =
    new _$GUpdateUserDataSerializer();
Serializer<GUpdateUserData_updateUser> _$gUpdateUserDataUpdateUserSerializer =
    new _$GUpdateUserData_updateUserSerializer();
Serializer<GDealerData> _$gDealerDataSerializer = new _$GDealerDataSerializer();
Serializer<GDealerData_dealers> _$gDealerDataDealersSerializer =
    new _$GDealerData_dealersSerializer();
Serializer<GUpdateDealerData> _$gUpdateDealerDataSerializer =
    new _$GUpdateDealerDataSerializer();
Serializer<GUpdateDealerData_updateDealer>
    _$gUpdateDealerDataUpdateDealerSerializer =
    new _$GUpdateDealerData_updateDealerSerializer();
Serializer<GSendDealerMOUApprovalOTPData>
    _$gSendDealerMOUApprovalOTPDataSerializer =
    new _$GSendDealerMOUApprovalOTPDataSerializer();

class _$GCreateUserDataSerializer
    implements StructuredSerializer<GCreateUserData> {
  @override
  final Iterable<Type> types = const [GCreateUserData, _$GCreateUserData];
  @override
  final String wireName = 'GCreateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createUser;
    if (value != null) {
      result
        ..add('createUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateUserData_createUser)));
    }
    return result;
  }

  @override
  GCreateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserDataBuilder();

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
        case 'createUser':
          result.createUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateUserData_createUser))!
              as GCreateUserData_createUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData_createUserSerializer
    implements StructuredSerializer<GCreateUserData_createUser> {
  @override
  final Iterable<Type> types = const [
    GCreateUserData_createUser,
    _$GCreateUserData_createUser
  ];
  @override
  final String wireName = 'GCreateUserData_createUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateUserData_createUser object,
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
  GCreateUserData_createUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserData_createUserBuilder();

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

class _$GCurrentUserOTPDataSerializer
    implements StructuredSerializer<GCurrentUserOTPData> {
  @override
  final Iterable<Type> types = const [
    GCurrentUserOTPData,
    _$GCurrentUserOTPData
  ];
  @override
  final String wireName = 'GCurrentUserOTPData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCurrentUserOTPData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentUserOTP;
    if (value != null) {
      result
        ..add('currentUserOTP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCurrentUserOTPData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCurrentUserOTPDataBuilder();

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
        case 'currentUserOTP':
          result.currentUserOTP = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GValidateUserOTPDataSerializer
    implements StructuredSerializer<GValidateUserOTPData> {
  @override
  final Iterable<Type> types = const [
    GValidateUserOTPData,
    _$GValidateUserOTPData
  ];
  @override
  final String wireName = 'GValidateUserOTPData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GValidateUserOTPData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.validateUserOTP;
    if (value != null) {
      result
        ..add('validateUserOTP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GValidateUserOTPData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GValidateUserOTPDataBuilder();

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
        case 'validateUserOTP':
          result.validateUserOTP = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSendUserPasswordResetLinkDataSerializer
    implements StructuredSerializer<GSendUserPasswordResetLinkData> {
  @override
  final Iterable<Type> types = const [
    GSendUserPasswordResetLinkData,
    _$GSendUserPasswordResetLinkData
  ];
  @override
  final String wireName = 'GSendUserPasswordResetLinkData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendUserPasswordResetLinkData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendUserPasswordResetLink',
      serializers.serialize(object.sendUserPasswordResetLink,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSendUserPasswordResetLinkData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendUserPasswordResetLinkDataBuilder();

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
        case 'sendUserPasswordResetLink':
          result.sendUserPasswordResetLink = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRedeemUserPasswordResetTokenDataSerializer
    implements StructuredSerializer<GRedeemUserPasswordResetTokenData> {
  @override
  final Iterable<Type> types = const [
    GRedeemUserPasswordResetTokenData,
    _$GRedeemUserPasswordResetTokenData
  ];
  @override
  final String wireName = 'GRedeemUserPasswordResetTokenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRedeemUserPasswordResetTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.redeemUserPasswordResetToken;
    if (value != null) {
      result
        ..add('redeemUserPasswordResetToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken)));
    }
    return result;
  }

  @override
  GRedeemUserPasswordResetTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRedeemUserPasswordResetTokenDataBuilder();

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
        case 'redeemUserPasswordResetToken':
          result.redeemUserPasswordResetToken.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken))!
              as GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenSerializer
    implements
        StructuredSerializer<
            GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken> {
  @override
  final Iterable<Type> types = const [
    GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken,
    _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
  ];
  @override
  final String wireName =
      'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i2.GPasswordResetRedemptionErrorCode)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GPasswordResetRedemptionErrorCode))!
              as _i2.GPasswordResetRedemptionErrorCode;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GValidateUserPasswordResetTokenDataSerializer
    implements StructuredSerializer<GValidateUserPasswordResetTokenData> {
  @override
  final Iterable<Type> types = const [
    GValidateUserPasswordResetTokenData,
    _$GValidateUserPasswordResetTokenData
  ];
  @override
  final String wireName = 'GValidateUserPasswordResetTokenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GValidateUserPasswordResetTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.validateUserPasswordResetToken;
    if (value != null) {
      result
        ..add('validateUserPasswordResetToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GValidateUserPasswordResetTokenData_validateUserPasswordResetToken)));
    }
    return result;
  }

  @override
  GValidateUserPasswordResetTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GValidateUserPasswordResetTokenDataBuilder();

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
        case 'validateUserPasswordResetToken':
          result.validateUserPasswordResetToken.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GValidateUserPasswordResetTokenData_validateUserPasswordResetToken))!
              as GValidateUserPasswordResetTokenData_validateUserPasswordResetToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenSerializer
    implements
        StructuredSerializer<
            GValidateUserPasswordResetTokenData_validateUserPasswordResetToken> {
  @override
  final Iterable<Type> types = const [
    GValidateUserPasswordResetTokenData_validateUserPasswordResetToken,
    _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
  ];
  @override
  final String wireName =
      'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GValidateUserPasswordResetTokenData_validateUserPasswordResetToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i2.GPasswordResetRedemptionErrorCode)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GPasswordResetRedemptionErrorCode))!
              as _i2.GPasswordResetRedemptionErrorCode;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDealerDataSerializer
    implements StructuredSerializer<GCreateDealerData> {
  @override
  final Iterable<Type> types = const [GCreateDealerData, _$GCreateDealerData];
  @override
  final String wireName = 'GCreateDealerData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateDealerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createDealer;
    if (value != null) {
      result
        ..add('createDealer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateDealerData_createDealer)));
    }
    return result;
  }

  @override
  GCreateDealerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDealerDataBuilder();

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
        case 'createDealer':
          result.createDealer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateDealerData_createDealer))!
              as GCreateDealerData_createDealer);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDealerData_createDealerSerializer
    implements StructuredSerializer<GCreateDealerData_createDealer> {
  @override
  final Iterable<Type> types = const [
    GCreateDealerData_createDealer,
    _$GCreateDealerData_createDealer
  ];
  @override
  final String wireName = 'GCreateDealerData_createDealer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDealerData_createDealer object,
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
  GCreateDealerData_createDealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDealerData_createDealerBuilder();

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

class _$GAuthenticateUserWithPasswordDataSerializer
    implements StructuredSerializer<GAuthenticateUserWithPasswordData> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData,
    _$GAuthenticateUserWithPasswordData
  ];
  @override
  final String wireName = 'GAuthenticateUserWithPasswordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAuthenticateUserWithPasswordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.authenticateUserWithPassword;
    if (value != null) {
      result
        ..add('authenticateUserWithPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAuthenticateUserWithPasswordData_authenticateUserWithPassword)));
    }
    return result;
  }

  @override
  GAuthenticateUserWithPasswordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAuthenticateUserWithPasswordDataBuilder();

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
        case 'authenticateUserWithPassword':
          result.authenticateUserWithPassword = serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword))
              as GAuthenticateUserWithPasswordData_authenticateUserWithPassword?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'item',
      serializers.serialize(object.item,
          specifiedType: const FullType(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item)),
      'sessionToken',
      serializers.serialize(object.sessionToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder();

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
        case 'item':
          result.item.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item))!
              as GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item);
          break;
        case 'sessionToken':
          result.sessionToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
          object,
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumberVerified;
    if (value != null) {
      result
        ..add('phoneNumberVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.profile_image;
    if (value != null) {
      result
        ..add('profile_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image)));
    }
    value = object.addresses;
    if (value != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses)
            ])));
    }
    value = object.emailVerified;
    if (value != null) {
      result
        ..add('emailVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referralCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode)));
    }
    value = object.deactivate;
    if (value != null) {
      result
        ..add('deactivate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder();

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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumberVerified':
          result.phoneNumberVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'profile_image':
          result.profile_image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image))!
              as GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image);
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses)
              ]))! as BuiltList<Object?>);
          break;
        case 'emailVerified':
          result.emailVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'referralCode':
          result.referralCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode))!
              as GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode);
          break;
        case 'deactivate':
          result.deactivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'filesize',
      serializers.serialize(object.filesize,
          specifiedType: const FullType(int)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'extension',
      serializers.serialize(object.extension,
          specifiedType: const FullType(_i2.GImageExtension)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder();

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
        case 'filesize':
          result.filesize = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'extension':
          result.extension = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GImageExtension))!
              as _i2.GImageExtension;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
          object,
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
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinCode;
    if (value != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.town;
    if (value != null) {
      result
        ..add('town')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.Gdefault;
    if (value != null) {
      result
        ..add('default')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder();

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
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'default':
          result.Gdefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureSerializer
    implements
        StructuredSerializer<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure> {
  @override
  final Iterable<Type> types = const [
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure,
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
  ];
  @override
  final String wireName =
      'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserDataSerializer implements StructuredSerializer<GUserData> {
  @override
  final Iterable<Type> types = const [GUserData, _$GUserData];
  @override
  final String wireName = 'GUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_user)));
    }
    return result;
  }

  @override
  GUserData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDataBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_user))!
              as GUserData_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_userSerializer
    implements StructuredSerializer<GUserData_user> {
  @override
  final Iterable<Type> types = const [GUserData_user, _$GUserData_user];
  @override
  final String wireName = 'GUserData_user';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserData_user object,
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumberVerified;
    if (value != null) {
      result
        ..add('phoneNumberVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.profile_image;
    if (value != null) {
      result
        ..add('profile_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_user_profile_image)));
    }
    value = object.addresses;
    if (value != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GUserData_user_addresses)])));
    }
    value = object.emailVerified;
    if (value != null) {
      result
        ..add('emailVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.referralCode;
    if (value != null) {
      result
        ..add('referralCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_user_referralCode)));
    }
    value = object.favorites;
    if (value != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GUserData_user_favorites)])));
    }
    value = object.aadhaar;
    if (value != null) {
      result
        ..add('aadhaar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_user_aadhaar)));
    }
    value = object.driving_license;
    if (value != null) {
      result
        ..add('driving_license')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_user_driving_license)));
    }
    value = object.deactivate;
    if (value != null) {
      result
        ..add('deactivate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUserData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_userBuilder();

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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumberVerified':
          result.phoneNumberVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'profile_image':
          result.profile_image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_user_profile_image))!
              as GUserData_user_profile_image);
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GUserData_user_addresses)
              ]))! as BuiltList<Object?>);
          break;
        case 'emailVerified':
          result.emailVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'referralCode':
          result.referralCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_user_referralCode))!
              as GUserData_user_referralCode);
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GUserData_user_favorites)
              ]))! as BuiltList<Object?>);
          break;
        case 'aadhaar':
          result.aadhaar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_user_aadhaar))!
              as GUserData_user_aadhaar);
          break;
        case 'driving_license':
          result.driving_license.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_user_driving_license))!
              as GUserData_user_driving_license);
          break;
        case 'deactivate':
          result.deactivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_user_profile_imageSerializer
    implements StructuredSerializer<GUserData_user_profile_image> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_profile_image,
    _$GUserData_user_profile_image
  ];
  @override
  final String wireName = 'GUserData_user_profile_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_profile_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'filesize',
      serializers.serialize(object.filesize,
          specifiedType: const FullType(int)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'extension',
      serializers.serialize(object.extension,
          specifiedType: const FullType(_i2.GImageExtension)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserData_user_profile_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_profile_imageBuilder();

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
        case 'filesize':
          result.filesize = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'extension':
          result.extension = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GImageExtension))!
              as _i2.GImageExtension;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_user_addressesSerializer
    implements StructuredSerializer<GUserData_user_addresses> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_addresses,
    _$GUserData_user_addresses
  ];
  @override
  final String wireName = 'GUserData_user_addresses';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_addresses object,
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
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinCode;
    if (value != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.town;
    if (value != null) {
      result
        ..add('town')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.Gdefault;
    if (value != null) {
      result
        ..add('default')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUserData_user_addresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_addressesBuilder();

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
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'default':
          result.Gdefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_user_referralCodeSerializer
    implements StructuredSerializer<GUserData_user_referralCode> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_referralCode,
    _$GUserData_user_referralCode
  ];
  @override
  final String wireName = 'GUserData_user_referralCode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_referralCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modifiedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    return result;
  }

  @override
  GUserData_user_referralCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_referralCodeBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_user_favoritesSerializer
    implements StructuredSerializer<GUserData_user_favorites> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_favorites,
    _$GUserData_user_favorites
  ];
  @override
  final String wireName = 'GUserData_user_favorites';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_favorites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vehicleVariant;
    if (value != null) {
      result
        ..add('vehicleVariant')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUserData_user_favorites_vehicleVariant)));
    }
    return result;
  }

  @override
  GUserData_user_favorites deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_favoritesBuilder();

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
        case 'vehicleVariant':
          result.vehicleVariant.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_user_favorites_vehicleVariant))!
              as GUserData_user_favorites_vehicleVariant);
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

class _$GUserData_user_favorites_vehicleVariantSerializer
    implements StructuredSerializer<GUserData_user_favorites_vehicleVariant> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_favorites_vehicleVariant,
    _$GUserData_user_favorites_vehicleVariant
  ];
  @override
  final String wireName = 'GUserData_user_favorites_vehicleVariant';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_favorites_vehicleVariant object,
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
  GUserData_user_favorites_vehicleVariant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_favorites_vehicleVariantBuilder();

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

class _$GUserData_user_aadhaarSerializer
    implements StructuredSerializer<GUserData_user_aadhaar> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_aadhaar,
    _$GUserData_user_aadhaar
  ];
  @override
  final String wireName = 'GUserData_user_aadhaar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_aadhaar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'filename',
      serializers.serialize(object.filename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserData_user_aadhaar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_aadhaarBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_user_driving_licenseSerializer
    implements StructuredSerializer<GUserData_user_driving_license> {
  @override
  final Iterable<Type> types = const [
    GUserData_user_driving_license,
    _$GUserData_user_driving_license
  ];
  @override
  final String wireName = 'GUserData_user_driving_license';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_user_driving_license object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'filename',
      serializers.serialize(object.filename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserData_user_driving_license deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_user_driving_licenseBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserDataSerializer
    implements StructuredSerializer<GUpdateUserData> {
  @override
  final Iterable<Type> types = const [GUpdateUserData, _$GUpdateUserData];
  @override
  final String wireName = 'GUpdateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateUser;
    if (value != null) {
      result
        ..add('updateUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateUserData_updateUser)));
    }
    return result;
  }

  @override
  GUpdateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserDataBuilder();

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
        case 'updateUser':
          result.updateUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdateUserData_updateUser))!
              as GUpdateUserData_updateUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_updateUserSerializer
    implements StructuredSerializer<GUpdateUserData_updateUser> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_updateUser,
    _$GUpdateUserData_updateUser
  ];
  @override
  final String wireName = 'GUpdateUserData_updateUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_updateUser object,
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
  GUpdateUserData_updateUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_updateUserBuilder();

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

class _$GDealerDataSerializer implements StructuredSerializer<GDealerData> {
  @override
  final Iterable<Type> types = const [GDealerData, _$GDealerData];
  @override
  final String wireName = 'GDealerData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDealerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.dealers;
    if (value != null) {
      result
        ..add('dealers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GDealerData_dealers)])));
    }
    return result;
  }

  @override
  GDealerData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDealerDataBuilder();

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
        case 'dealers':
          result.dealers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GDealerData_dealers)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GDealerData_dealersSerializer
    implements StructuredSerializer<GDealerData_dealers> {
  @override
  final Iterable<Type> types = const [
    GDealerData_dealers,
    _$GDealerData_dealers
  ];
  @override
  final String wireName = 'GDealerData_dealers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDealerData_dealers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.approved;
    if (value != null) {
      result
        ..add('approved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mouApproved;
    if (value != null) {
      result
        ..add('mouApproved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDealerData_dealers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDealerData_dealersBuilder();

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
        case 'approved':
          result.approved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'mouApproved':
          result.mouApproved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateDealerDataSerializer
    implements StructuredSerializer<GUpdateDealerData> {
  @override
  final Iterable<Type> types = const [GUpdateDealerData, _$GUpdateDealerData];
  @override
  final String wireName = 'GUpdateDealerData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateDealerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateDealer;
    if (value != null) {
      result
        ..add('updateDealer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateDealerData_updateDealer)));
    }
    return result;
  }

  @override
  GUpdateDealerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateDealerDataBuilder();

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
        case 'updateDealer':
          result.updateDealer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateDealerData_updateDealer))!
              as GUpdateDealerData_updateDealer);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateDealerData_updateDealerSerializer
    implements StructuredSerializer<GUpdateDealerData_updateDealer> {
  @override
  final Iterable<Type> types = const [
    GUpdateDealerData_updateDealer,
    _$GUpdateDealerData_updateDealer
  ];
  @override
  final String wireName = 'GUpdateDealerData_updateDealer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateDealerData_updateDealer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lLat;
    if (value != null) {
      result
        ..add('lLat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lLng;
    if (value != null) {
      result
        ..add('lLng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(double)])));
    }
    return result;
  }

  @override
  GUpdateDealerData_updateDealer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateDealerData_updateDealerBuilder();

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
        case 'lLat':
          result.lLat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lLng':
          result.lLng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(double)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendDealerMOUApprovalOTPDataSerializer
    implements StructuredSerializer<GSendDealerMOUApprovalOTPData> {
  @override
  final Iterable<Type> types = const [
    GSendDealerMOUApprovalOTPData,
    _$GSendDealerMOUApprovalOTPData
  ];
  @override
  final String wireName = 'GSendDealerMOUApprovalOTPData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendDealerMOUApprovalOTPData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sendDealerMOUApprovalOTP;
    if (value != null) {
      result
        ..add('sendDealerMOUApprovalOTP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i4.JsonObject)));
    }
    return result;
  }

  @override
  GSendDealerMOUApprovalOTPData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendDealerMOUApprovalOTPDataBuilder();

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
        case 'sendDealerMOUApprovalOTP':
          result.sendDealerMOUApprovalOTP = serializers.deserialize(value,
              specifiedType: const FullType(_i4.JsonObject)) as _i4.JsonObject?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData extends GCreateUserData {
  @override
  final String G__typename;
  @override
  final GCreateUserData_createUser? createUser;

  factory _$GCreateUserData([void Function(GCreateUserDataBuilder)? updates]) =>
      (new GCreateUserDataBuilder()..update(updates))._build();

  _$GCreateUserData._({required this.G__typename, this.createUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData', 'G__typename');
  }

  @override
  GCreateUserData rebuild(void Function(GCreateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserDataBuilder toBuilder() =>
      new GCreateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData &&
        G__typename == other.G__typename &&
        createUser == other.createUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserData')
          ..add('G__typename', G__typename)
          ..add('createUser', createUser))
        .toString();
  }
}

class GCreateUserDataBuilder
    implements Builder<GCreateUserData, GCreateUserDataBuilder> {
  _$GCreateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateUserData_createUserBuilder? _createUser;
  GCreateUserData_createUserBuilder get createUser =>
      _$this._createUser ??= new GCreateUserData_createUserBuilder();
  set createUser(GCreateUserData_createUserBuilder? createUser) =>
      _$this._createUser = createUser;

  GCreateUserDataBuilder() {
    GCreateUserData._initializeBuilder(this);
  }

  GCreateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createUser = $v.createUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData;
  }

  @override
  void update(void Function(GCreateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData build() => _build();

  _$GCreateUserData _build() {
    _$GCreateUserData _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreateUserData', 'G__typename'),
            createUser: _createUser?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createUser';
        _createUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserData_createUser extends GCreateUserData_createUser {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GCreateUserData_createUser(
          [void Function(GCreateUserData_createUserBuilder)? updates]) =>
      (new GCreateUserData_createUserBuilder()..update(updates))._build();

  _$GCreateUserData_createUser._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData_createUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateUserData_createUser', 'id');
  }

  @override
  GCreateUserData_createUser rebuild(
          void Function(GCreateUserData_createUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserData_createUserBuilder toBuilder() =>
      new GCreateUserData_createUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData_createUser &&
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
    return (newBuiltValueToStringHelper(r'GCreateUserData_createUser')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreateUserData_createUserBuilder
    implements
        Builder<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  _$GCreateUserData_createUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCreateUserData_createUserBuilder() {
    GCreateUserData_createUser._initializeBuilder(this);
  }

  GCreateUserData_createUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserData_createUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData_createUser;
  }

  @override
  void update(void Function(GCreateUserData_createUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData_createUser build() => _build();

  _$GCreateUserData_createUser _build() {
    final _$result = _$v ??
        new _$GCreateUserData_createUser._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GCreateUserData_createUser', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GCreateUserData_createUser', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCurrentUserOTPData extends GCurrentUserOTPData {
  @override
  final String G__typename;
  @override
  final String? currentUserOTP;

  factory _$GCurrentUserOTPData(
          [void Function(GCurrentUserOTPDataBuilder)? updates]) =>
      (new GCurrentUserOTPDataBuilder()..update(updates))._build();

  _$GCurrentUserOTPData._({required this.G__typename, this.currentUserOTP})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCurrentUserOTPData', 'G__typename');
  }

  @override
  GCurrentUserOTPData rebuild(
          void Function(GCurrentUserOTPDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCurrentUserOTPDataBuilder toBuilder() =>
      new GCurrentUserOTPDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCurrentUserOTPData &&
        G__typename == other.G__typename &&
        currentUserOTP == other.currentUserOTP;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentUserOTP.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCurrentUserOTPData')
          ..add('G__typename', G__typename)
          ..add('currentUserOTP', currentUserOTP))
        .toString();
  }
}

class GCurrentUserOTPDataBuilder
    implements Builder<GCurrentUserOTPData, GCurrentUserOTPDataBuilder> {
  _$GCurrentUserOTPData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _currentUserOTP;
  String? get currentUserOTP => _$this._currentUserOTP;
  set currentUserOTP(String? currentUserOTP) =>
      _$this._currentUserOTP = currentUserOTP;

  GCurrentUserOTPDataBuilder() {
    GCurrentUserOTPData._initializeBuilder(this);
  }

  GCurrentUserOTPDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentUserOTP = $v.currentUserOTP;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCurrentUserOTPData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCurrentUserOTPData;
  }

  @override
  void update(void Function(GCurrentUserOTPDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCurrentUserOTPData build() => _build();

  _$GCurrentUserOTPData _build() {
    final _$result = _$v ??
        new _$GCurrentUserOTPData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GCurrentUserOTPData', 'G__typename'),
          currentUserOTP: currentUserOTP,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GValidateUserOTPData extends GValidateUserOTPData {
  @override
  final String G__typename;
  @override
  final String? validateUserOTP;

  factory _$GValidateUserOTPData(
          [void Function(GValidateUserOTPDataBuilder)? updates]) =>
      (new GValidateUserOTPDataBuilder()..update(updates))._build();

  _$GValidateUserOTPData._({required this.G__typename, this.validateUserOTP})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GValidateUserOTPData', 'G__typename');
  }

  @override
  GValidateUserOTPData rebuild(
          void Function(GValidateUserOTPDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GValidateUserOTPDataBuilder toBuilder() =>
      new GValidateUserOTPDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GValidateUserOTPData &&
        G__typename == other.G__typename &&
        validateUserOTP == other.validateUserOTP;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, validateUserOTP.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GValidateUserOTPData')
          ..add('G__typename', G__typename)
          ..add('validateUserOTP', validateUserOTP))
        .toString();
  }
}

class GValidateUserOTPDataBuilder
    implements Builder<GValidateUserOTPData, GValidateUserOTPDataBuilder> {
  _$GValidateUserOTPData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _validateUserOTP;
  String? get validateUserOTP => _$this._validateUserOTP;
  set validateUserOTP(String? validateUserOTP) =>
      _$this._validateUserOTP = validateUserOTP;

  GValidateUserOTPDataBuilder() {
    GValidateUserOTPData._initializeBuilder(this);
  }

  GValidateUserOTPDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _validateUserOTP = $v.validateUserOTP;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GValidateUserOTPData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GValidateUserOTPData;
  }

  @override
  void update(void Function(GValidateUserOTPDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GValidateUserOTPData build() => _build();

  _$GValidateUserOTPData _build() {
    final _$result = _$v ??
        new _$GValidateUserOTPData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GValidateUserOTPData', 'G__typename'),
          validateUserOTP: validateUserOTP,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GSendUserPasswordResetLinkData extends GSendUserPasswordResetLinkData {
  @override
  final String G__typename;
  @override
  final String sendUserPasswordResetLink;

  factory _$GSendUserPasswordResetLinkData(
          [void Function(GSendUserPasswordResetLinkDataBuilder)? updates]) =>
      (new GSendUserPasswordResetLinkDataBuilder()..update(updates))._build();

  _$GSendUserPasswordResetLinkData._(
      {required this.G__typename, required this.sendUserPasswordResetLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSendUserPasswordResetLinkData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(sendUserPasswordResetLink,
        r'GSendUserPasswordResetLinkData', 'sendUserPasswordResetLink');
  }

  @override
  GSendUserPasswordResetLinkData rebuild(
          void Function(GSendUserPasswordResetLinkDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendUserPasswordResetLinkDataBuilder toBuilder() =>
      new GSendUserPasswordResetLinkDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendUserPasswordResetLinkData &&
        G__typename == other.G__typename &&
        sendUserPasswordResetLink == other.sendUserPasswordResetLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendUserPasswordResetLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendUserPasswordResetLinkData')
          ..add('G__typename', G__typename)
          ..add('sendUserPasswordResetLink', sendUserPasswordResetLink))
        .toString();
  }
}

class GSendUserPasswordResetLinkDataBuilder
    implements
        Builder<GSendUserPasswordResetLinkData,
            GSendUserPasswordResetLinkDataBuilder> {
  _$GSendUserPasswordResetLinkData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _sendUserPasswordResetLink;
  String? get sendUserPasswordResetLink => _$this._sendUserPasswordResetLink;
  set sendUserPasswordResetLink(String? sendUserPasswordResetLink) =>
      _$this._sendUserPasswordResetLink = sendUserPasswordResetLink;

  GSendUserPasswordResetLinkDataBuilder() {
    GSendUserPasswordResetLinkData._initializeBuilder(this);
  }

  GSendUserPasswordResetLinkDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendUserPasswordResetLink = $v.sendUserPasswordResetLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendUserPasswordResetLinkData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendUserPasswordResetLinkData;
  }

  @override
  void update(void Function(GSendUserPasswordResetLinkDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendUserPasswordResetLinkData build() => _build();

  _$GSendUserPasswordResetLinkData _build() {
    final _$result = _$v ??
        new _$GSendUserPasswordResetLinkData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GSendUserPasswordResetLinkData', 'G__typename'),
          sendUserPasswordResetLink: BuiltValueNullFieldError.checkNotNull(
              sendUserPasswordResetLink,
              r'GSendUserPasswordResetLinkData',
              'sendUserPasswordResetLink'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GRedeemUserPasswordResetTokenData
    extends GRedeemUserPasswordResetTokenData {
  @override
  final String G__typename;
  @override
  final GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken?
      redeemUserPasswordResetToken;

  factory _$GRedeemUserPasswordResetTokenData(
          [void Function(GRedeemUserPasswordResetTokenDataBuilder)? updates]) =>
      (new GRedeemUserPasswordResetTokenDataBuilder()..update(updates))
          ._build();

  _$GRedeemUserPasswordResetTokenData._(
      {required this.G__typename, this.redeemUserPasswordResetToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRedeemUserPasswordResetTokenData', 'G__typename');
  }

  @override
  GRedeemUserPasswordResetTokenData rebuild(
          void Function(GRedeemUserPasswordResetTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRedeemUserPasswordResetTokenDataBuilder toBuilder() =>
      new GRedeemUserPasswordResetTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRedeemUserPasswordResetTokenData &&
        G__typename == other.G__typename &&
        redeemUserPasswordResetToken == other.redeemUserPasswordResetToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, redeemUserPasswordResetToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRedeemUserPasswordResetTokenData')
          ..add('G__typename', G__typename)
          ..add('redeemUserPasswordResetToken', redeemUserPasswordResetToken))
        .toString();
  }
}

class GRedeemUserPasswordResetTokenDataBuilder
    implements
        Builder<GRedeemUserPasswordResetTokenData,
            GRedeemUserPasswordResetTokenDataBuilder> {
  _$GRedeemUserPasswordResetTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder?
      _redeemUserPasswordResetToken;
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder
      get redeemUserPasswordResetToken => _$this
              ._redeemUserPasswordResetToken ??=
          new GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder();
  set redeemUserPasswordResetToken(
          GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder?
              redeemUserPasswordResetToken) =>
      _$this._redeemUserPasswordResetToken = redeemUserPasswordResetToken;

  GRedeemUserPasswordResetTokenDataBuilder() {
    GRedeemUserPasswordResetTokenData._initializeBuilder(this);
  }

  GRedeemUserPasswordResetTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _redeemUserPasswordResetToken =
          $v.redeemUserPasswordResetToken?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRedeemUserPasswordResetTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRedeemUserPasswordResetTokenData;
  }

  @override
  void update(
      void Function(GRedeemUserPasswordResetTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRedeemUserPasswordResetTokenData build() => _build();

  _$GRedeemUserPasswordResetTokenData _build() {
    _$GRedeemUserPasswordResetTokenData _$result;
    try {
      _$result = _$v ??
          new _$GRedeemUserPasswordResetTokenData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GRedeemUserPasswordResetTokenData', 'G__typename'),
            redeemUserPasswordResetToken:
                _redeemUserPasswordResetToken?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redeemUserPasswordResetToken';
        _redeemUserPasswordResetToken?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRedeemUserPasswordResetTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
    extends GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken {
  @override
  final String G__typename;
  @override
  final _i2.GPasswordResetRedemptionErrorCode code;
  @override
  final String message;

  factory _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken(
          [void Function(
                  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder)?
              updates]) =>
      (new GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder()
            ..update(updates))
          ._build();

  _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken._(
      {required this.G__typename, required this.code, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken',
        'message');
  }

  @override
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken rebuild(
          void Function(
                  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder
      toBuilder() =>
          new GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken &&
        G__typename == other.G__typename &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder
    implements
        Builder<GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken,
            GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder> {
  _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GPasswordResetRedemptionErrorCode? _code;
  _i2.GPasswordResetRedemptionErrorCode? get code => _$this._code;
  set code(_i2.GPasswordResetRedemptionErrorCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder() {
    GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken
        ._initializeBuilder(this);
  }

  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken;
  }

  @override
  void update(
      void Function(
              GRedeemUserPasswordResetTokenData_redeemUserPasswordResetTokenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken build() =>
      _build();

  _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken _build() {
    final _$result = _$v ??
        new _$GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken',
              'G__typename'),
          code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken',
              'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GRedeemUserPasswordResetTokenData_redeemUserPasswordResetToken',
              'message'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GValidateUserPasswordResetTokenData
    extends GValidateUserPasswordResetTokenData {
  @override
  final String G__typename;
  @override
  final GValidateUserPasswordResetTokenData_validateUserPasswordResetToken?
      validateUserPasswordResetToken;

  factory _$GValidateUserPasswordResetTokenData(
          [void Function(GValidateUserPasswordResetTokenDataBuilder)?
              updates]) =>
      (new GValidateUserPasswordResetTokenDataBuilder()..update(updates))
          ._build();

  _$GValidateUserPasswordResetTokenData._(
      {required this.G__typename, this.validateUserPasswordResetToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GValidateUserPasswordResetTokenData', 'G__typename');
  }

  @override
  GValidateUserPasswordResetTokenData rebuild(
          void Function(GValidateUserPasswordResetTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GValidateUserPasswordResetTokenDataBuilder toBuilder() =>
      new GValidateUserPasswordResetTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GValidateUserPasswordResetTokenData &&
        G__typename == other.G__typename &&
        validateUserPasswordResetToken == other.validateUserPasswordResetToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, validateUserPasswordResetToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GValidateUserPasswordResetTokenData')
          ..add('G__typename', G__typename)
          ..add(
              'validateUserPasswordResetToken', validateUserPasswordResetToken))
        .toString();
  }
}

class GValidateUserPasswordResetTokenDataBuilder
    implements
        Builder<GValidateUserPasswordResetTokenData,
            GValidateUserPasswordResetTokenDataBuilder> {
  _$GValidateUserPasswordResetTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder?
      _validateUserPasswordResetToken;
  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder
      get validateUserPasswordResetToken => _$this
              ._validateUserPasswordResetToken ??=
          new GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder();
  set validateUserPasswordResetToken(
          GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder?
              validateUserPasswordResetToken) =>
      _$this._validateUserPasswordResetToken = validateUserPasswordResetToken;

  GValidateUserPasswordResetTokenDataBuilder() {
    GValidateUserPasswordResetTokenData._initializeBuilder(this);
  }

  GValidateUserPasswordResetTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _validateUserPasswordResetToken =
          $v.validateUserPasswordResetToken?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GValidateUserPasswordResetTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GValidateUserPasswordResetTokenData;
  }

  @override
  void update(
      void Function(GValidateUserPasswordResetTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GValidateUserPasswordResetTokenData build() => _build();

  _$GValidateUserPasswordResetTokenData _build() {
    _$GValidateUserPasswordResetTokenData _$result;
    try {
      _$result = _$v ??
          new _$GValidateUserPasswordResetTokenData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GValidateUserPasswordResetTokenData', 'G__typename'),
            validateUserPasswordResetToken:
                _validateUserPasswordResetToken?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'validateUserPasswordResetToken';
        _validateUserPasswordResetToken?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GValidateUserPasswordResetTokenData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
    extends GValidateUserPasswordResetTokenData_validateUserPasswordResetToken {
  @override
  final String G__typename;
  @override
  final _i2.GPasswordResetRedemptionErrorCode code;
  @override
  final String message;

  factory _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken(
          [void Function(
                  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder)?
              updates]) =>
      (new GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder()
            ..update(updates))
          ._build();

  _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken._(
      {required this.G__typename, required this.code, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken',
        'message');
  }

  @override
  GValidateUserPasswordResetTokenData_validateUserPasswordResetToken rebuild(
          void Function(
                  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder
      toBuilder() =>
          new GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GValidateUserPasswordResetTokenData_validateUserPasswordResetToken &&
        G__typename == other.G__typename &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder
    implements
        Builder<
            GValidateUserPasswordResetTokenData_validateUserPasswordResetToken,
            GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder> {
  _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GPasswordResetRedemptionErrorCode? _code;
  _i2.GPasswordResetRedemptionErrorCode? get code => _$this._code;
  set code(_i2.GPasswordResetRedemptionErrorCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder() {
    GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
        ._initializeBuilder(this);
  }

  GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken;
  }

  @override
  void update(
      void Function(
              GValidateUserPasswordResetTokenData_validateUserPasswordResetTokenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GValidateUserPasswordResetTokenData_validateUserPasswordResetToken build() =>
      _build();

  _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
      _build() {
    final _$result = _$v ??
        new _$GValidateUserPasswordResetTokenData_validateUserPasswordResetToken
            ._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken',
              'G__typename'),
          code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken',
              'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GValidateUserPasswordResetTokenData_validateUserPasswordResetToken',
              'message'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDealerData extends GCreateDealerData {
  @override
  final String G__typename;
  @override
  final GCreateDealerData_createDealer? createDealer;

  factory _$GCreateDealerData(
          [void Function(GCreateDealerDataBuilder)? updates]) =>
      (new GCreateDealerDataBuilder()..update(updates))._build();

  _$GCreateDealerData._({required this.G__typename, this.createDealer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateDealerData', 'G__typename');
  }

  @override
  GCreateDealerData rebuild(void Function(GCreateDealerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDealerDataBuilder toBuilder() =>
      new GCreateDealerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDealerData &&
        G__typename == other.G__typename &&
        createDealer == other.createDealer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createDealer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateDealerData')
          ..add('G__typename', G__typename)
          ..add('createDealer', createDealer))
        .toString();
  }
}

class GCreateDealerDataBuilder
    implements Builder<GCreateDealerData, GCreateDealerDataBuilder> {
  _$GCreateDealerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateDealerData_createDealerBuilder? _createDealer;
  GCreateDealerData_createDealerBuilder get createDealer =>
      _$this._createDealer ??= new GCreateDealerData_createDealerBuilder();
  set createDealer(GCreateDealerData_createDealerBuilder? createDealer) =>
      _$this._createDealer = createDealer;

  GCreateDealerDataBuilder() {
    GCreateDealerData._initializeBuilder(this);
  }

  GCreateDealerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createDealer = $v.createDealer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDealerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDealerData;
  }

  @override
  void update(void Function(GCreateDealerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateDealerData build() => _build();

  _$GCreateDealerData _build() {
    _$GCreateDealerData _$result;
    try {
      _$result = _$v ??
          new _$GCreateDealerData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreateDealerData', 'G__typename'),
            createDealer: _createDealer?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createDealer';
        _createDealer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateDealerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateDealerData_createDealer extends GCreateDealerData_createDealer {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GCreateDealerData_createDealer(
          [void Function(GCreateDealerData_createDealerBuilder)? updates]) =>
      (new GCreateDealerData_createDealerBuilder()..update(updates))._build();

  _$GCreateDealerData_createDealer._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateDealerData_createDealer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateDealerData_createDealer', 'id');
  }

  @override
  GCreateDealerData_createDealer rebuild(
          void Function(GCreateDealerData_createDealerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDealerData_createDealerBuilder toBuilder() =>
      new GCreateDealerData_createDealerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDealerData_createDealer &&
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
    return (newBuiltValueToStringHelper(r'GCreateDealerData_createDealer')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreateDealerData_createDealerBuilder
    implements
        Builder<GCreateDealerData_createDealer,
            GCreateDealerData_createDealerBuilder> {
  _$GCreateDealerData_createDealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GCreateDealerData_createDealerBuilder() {
    GCreateDealerData_createDealer._initializeBuilder(this);
  }

  GCreateDealerData_createDealerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDealerData_createDealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDealerData_createDealer;
  }

  @override
  void update(void Function(GCreateDealerData_createDealerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateDealerData_createDealer build() => _build();

  _$GCreateDealerData_createDealer _build() {
    final _$result = _$v ??
        new _$GCreateDealerData_createDealer._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GCreateDealerData_createDealer', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GCreateDealerData_createDealer', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData
    extends GAuthenticateUserWithPasswordData {
  @override
  final String G__typename;
  @override
  final GAuthenticateUserWithPasswordData_authenticateUserWithPassword?
      authenticateUserWithPassword;

  factory _$GAuthenticateUserWithPasswordData(
          [void Function(GAuthenticateUserWithPasswordDataBuilder)? updates]) =>
      (new GAuthenticateUserWithPasswordDataBuilder()..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData._(
      {required this.G__typename, this.authenticateUserWithPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAuthenticateUserWithPasswordData', 'G__typename');
  }

  @override
  GAuthenticateUserWithPasswordData rebuild(
          void Function(GAuthenticateUserWithPasswordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordDataBuilder toBuilder() =>
      new GAuthenticateUserWithPasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAuthenticateUserWithPasswordData &&
        G__typename == other.G__typename &&
        authenticateUserWithPassword == other.authenticateUserWithPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authenticateUserWithPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAuthenticateUserWithPasswordData')
          ..add('G__typename', G__typename)
          ..add('authenticateUserWithPassword', authenticateUserWithPassword))
        .toString();
  }
}

class GAuthenticateUserWithPasswordDataBuilder
    implements
        Builder<GAuthenticateUserWithPasswordData,
            GAuthenticateUserWithPasswordDataBuilder> {
  _$GAuthenticateUserWithPasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword?
      _authenticateUserWithPassword;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword?
      get authenticateUserWithPassword => _$this._authenticateUserWithPassword;
  set authenticateUserWithPassword(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword?
              authenticateUserWithPassword) =>
      _$this._authenticateUserWithPassword = authenticateUserWithPassword;

  GAuthenticateUserWithPasswordDataBuilder() {
    GAuthenticateUserWithPasswordData._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authenticateUserWithPassword = $v.authenticateUserWithPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAuthenticateUserWithPasswordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAuthenticateUserWithPasswordData;
  }

  @override
  void update(
      void Function(GAuthenticateUserWithPasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData build() => _build();

  _$GAuthenticateUserWithPasswordData _build() {
    final _$result = _$v ??
        new _$GAuthenticateUserWithPasswordData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GAuthenticateUserWithPasswordData', 'G__typename'),
          authenticateUserWithPassword: authenticateUserWithPassword,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base {
  @override
  final String G__typename;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base._(
      {required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base',
        'G__typename');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base rebuild(
          void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__baseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
      _build() {
    final _$result = _$v ??
        new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base
            ._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__base',
              'G__typename'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess {
  @override
  final String G__typename;
  @override
  final GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
      item;
  @override
  final String sessionToken;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess._(
      {required this.G__typename,
      required this.item,
      required this.sessionToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        item,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess',
        'item');
    BuiltValueNullFieldError.checkNotNull(
        sessionToken,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess',
        'sessionToken');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
      rebuild(
              void Function(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess &&
        G__typename == other.G__typename &&
        item == other.item &&
        sessionToken == other.sessionToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, sessionToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess')
          ..add('G__typename', G__typename)
          ..add('item', item)
          ..add('sessionToken', sessionToken))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder?
      _item;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder
      get item => _$this._item ??=
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder();
  set item(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder?
              item) =>
      _$this._item = item;

  String? _sessionToken;
  String? get sessionToken => _$this._sessionToken;
  set sessionToken(String? sessionToken) => _$this._sessionToken = sessionToken;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _item = $v.item.toBuilder();
      _sessionToken = $v.sessionToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccessBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
      _build() {
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
        _$result;
    try {
      _$result = _$v ??
          new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess
              ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess',
                'G__typename'),
            item: item.build(),
            sessionToken: BuiltValueNullFieldError.checkNotNull(
                sessionToken,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess',
                'sessionToken'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final bool? phoneNumberVerified;
  @override
  final bool? isAdmin;
  @override
  final GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image?
      profile_image;
  @override
  final BuiltList<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>?
      addresses;
  @override
  final bool? emailVerified;
  @override
  final GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode?
      referralCode;
  @override
  final bool? deactivate;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.phoneNumber,
      this.email,
      this.address,
      this.phoneNumberVerified,
      this.isAdmin,
      this.profile_image,
      this.addresses,
      this.emailVerified,
      this.referralCode,
      this.deactivate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item',
        'id');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
      rebuild(
              void Function(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        address == other.address &&
        phoneNumberVerified == other.phoneNumberVerified &&
        isAdmin == other.isAdmin &&
        profile_image == other.profile_image &&
        addresses == other.addresses &&
        emailVerified == other.emailVerified &&
        referralCode == other.referralCode &&
        deactivate == other.deactivate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, phoneNumberVerified.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, profile_image.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jc(_$hash, emailVerified.hashCode);
    _$hash = $jc(_$hash, referralCode.hashCode);
    _$hash = $jc(_$hash, deactivate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('address', address)
          ..add('phoneNumberVerified', phoneNumberVerified)
          ..add('isAdmin', isAdmin)
          ..add('profile_image', profile_image)
          ..add('addresses', addresses)
          ..add('emailVerified', emailVerified)
          ..add('referralCode', referralCode)
          ..add('deactivate', deactivate))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  bool? _phoneNumberVerified;
  bool? get phoneNumberVerified => _$this._phoneNumberVerified;
  set phoneNumberVerified(bool? phoneNumberVerified) =>
      _$this._phoneNumberVerified = phoneNumberVerified;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder?
      _profile_image;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder
      get profile_image => _$this._profile_image ??=
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder();
  set profile_image(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder?
              profile_image) =>
      _$this._profile_image = profile_image;

  ListBuilder<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>?
      _addresses;
  ListBuilder<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>
      get addresses => _$this._addresses ??= new ListBuilder<
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>();
  set addresses(
          ListBuilder<
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses>?
              addresses) =>
      _$this._addresses = addresses;

  bool? _emailVerified;
  bool? get emailVerified => _$this._emailVerified;
  set emailVerified(bool? emailVerified) =>
      _$this._emailVerified = emailVerified;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder?
      _referralCode;
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder
      get referralCode => _$this._referralCode ??=
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder();
  set referralCode(
          GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder?
              referralCode) =>
      _$this._referralCode = referralCode;

  bool? _deactivate;
  bool? get deactivate => _$this._deactivate;
  set deactivate(bool? deactivate) => _$this._deactivate = deactivate;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _address = $v.address;
      _phoneNumberVerified = $v.phoneNumberVerified;
      _isAdmin = $v.isAdmin;
      _profile_image = $v.profile_image?.toBuilder();
      _addresses = $v.addresses?.toBuilder();
      _emailVerified = $v.emailVerified;
      _referralCode = $v.referralCode?.toBuilder();
      _deactivate = $v.deactivate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_itemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
      _build() {
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
        _$result;
    try {
      _$result = _$v ??
          new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item
              ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item',
                'id'),
            name: name,
            phoneNumber: phoneNumber,
            email: email,
            address: address,
            phoneNumberVerified: phoneNumberVerified,
            isAdmin: isAdmin,
            profile_image: _profile_image?.build(),
            addresses: _addresses?.build(),
            emailVerified: emailVerified,
            referralCode: _referralCode?.build(),
            deactivate: deactivate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile_image';
        _profile_image?.build();
        _$failedField = 'addresses';
        _addresses?.build();

        _$failedField = 'referralCode';
        _referralCode?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int filesize;
  @override
  final int width;
  @override
  final int height;
  @override
  final _i2.GImageExtension extension;
  @override
  final String url;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image._(
      {required this.G__typename,
      required this.id,
      required this.filesize,
      required this.width,
      required this.height,
      required this.extension,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        filesize,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'filesize');
    BuiltValueNullFieldError.checkNotNull(
        width,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'width');
    BuiltValueNullFieldError.checkNotNull(
        height,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'height');
    BuiltValueNullFieldError.checkNotNull(
        extension,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'extension');
    BuiltValueNullFieldError.checkNotNull(
        url,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
        'url');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
      rebuild(
              void Function(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image &&
        G__typename == other.G__typename &&
        id == other.id &&
        filesize == other.filesize &&
        width == other.width &&
        height == other.height &&
        extension == other.extension &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filesize.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, extension.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('filesize', filesize)
          ..add('width', width)
          ..add('height', height)
          ..add('extension', extension)
          ..add('url', url))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _filesize;
  int? get filesize => _$this._filesize;
  set filesize(int? filesize) => _$this._filesize = filesize;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  _i2.GImageExtension? _extension;
  _i2.GImageExtension? get extension => _$this._extension;
  set extension(_i2.GImageExtension? extension) =>
      _$this._extension = extension;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _filesize = $v.filesize;
      _width = $v.width;
      _height = $v.height;
      _extension = $v.extension;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
      _build() {
    final _$result = _$v ??
        new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image
            ._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'id'),
          filesize: BuiltValueNullFieldError.checkNotNull(
              filesize,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'filesize'),
          width: BuiltValueNullFieldError.checkNotNull(
              width,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'width'),
          height: BuiltValueNullFieldError.checkNotNull(
              height,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'height'),
          extension: BuiltValueNullFieldError.checkNotNull(
              extension,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'extension'),
          url: BuiltValueNullFieldError.checkNotNull(
              url,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_profile_image',
              'url'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? pinCode;
  @override
  final String? address;
  @override
  final String? town;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final bool? Gdefault;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses._(
      {required this.G__typename,
      required this.id,
      this.createdAt,
      this.modifiedAt,
      this.name,
      this.phoneNumber,
      this.pinCode,
      this.address,
      this.town,
      this.district,
      this.state,
      this.Gdefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses',
        'id');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
      rebuild(
              void Function(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        pinCode == other.pinCode &&
        address == other.address &&
        town == other.town &&
        district == other.district &&
        state == other.state &&
        Gdefault == other.Gdefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, pinCode.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, town.hashCode);
    _$hash = $jc(_$hash, district.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, Gdefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('pinCode', pinCode)
          ..add('address', address)
          ..add('town', town)
          ..add('district', district)
          ..add('state', state)
          ..add('Gdefault', Gdefault))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses?
      _$v;

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

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _town;
  String? get town => _$this._town;
  set town(String? town) => _$this._town = town;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  bool? _Gdefault;
  bool? get Gdefault => _$this._Gdefault;
  set Gdefault(bool? Gdefault) => _$this._Gdefault = Gdefault;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt?.toBuilder();
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _pinCode = $v.pinCode;
      _address = $v.address;
      _town = $v.town;
      _district = $v.district;
      _state = $v.state;
      _Gdefault = $v.Gdefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
      _build() {
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
        _$result;
    try {
      _$result = _$v ??
          new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses
              ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses',
                'id'),
            createdAt: _createdAt?.build(),
            modifiedAt: _modifiedAt?.build(),
            name: name,
            phoneNumber: phoneNumber,
            pinCode: pinCode,
            address: address,
            town: town,
            district: district,
            state: state,
            Gdefault: Gdefault,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_addresses',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? code;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final _i2.GDateTime? createdAt;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode._(
      {required this.G__typename,
      required this.id,
      this.code,
      this.modifiedAt,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode',
        'id');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
      rebuild(
              void Function(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode &&
        G__typename == other.G__typename &&
        id == other.id &&
        code == other.code &&
        modifiedAt == other.modifiedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('code', code)
          ..add('modifiedAt', modifiedAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _code = $v.code;
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _createdAt = $v.createdAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
      _build() {
    _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
        _$result;
    try {
      _$result = _$v ??
          new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode
              ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode',
                'id'),
            code: code,
            modifiedAt: _modifiedAt?.build(),
            createdAt: _createdAt?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordSuccess_item_referralCode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
    extends GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure {
  @override
  final String G__typename;
  @override
  final String message;

  factory _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure(
          [void Function(
                  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder)?
              updates]) =>
      (new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder()
            ..update(updates))
          ._build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure._(
      {required this.G__typename, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure',
        'message');
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
      rebuild(
              void Function(
                      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder
      toBuilder() =>
          new GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure &&
        G__typename == other.G__typename &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure')
          ..add('G__typename', G__typename)
          ..add('message', message))
        .toString();
  }
}

class GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder
    implements
        Builder<
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure,
            GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder> {
  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder() {
    GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
        ._initializeBuilder(this);
  }

  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure;
  }

  @override
  void update(
      void Function(
              GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
      build() => _build();

  _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
      _build() {
    final _$result = _$v ??
        new _$GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure
            ._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure',
              'G__typename'),
          message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GAuthenticateUserWithPasswordData_authenticateUserWithPassword__asUserAuthenticationWithPasswordFailure',
              'message'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUserData extends GUserData {
  @override
  final String G__typename;
  @override
  final GUserData_user? user;

  factory _$GUserData([void Function(GUserDataBuilder)? updates]) =>
      (new GUserDataBuilder()..update(updates))._build();

  _$GUserData._({required this.G__typename, this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData', 'G__typename');
  }

  @override
  GUserData rebuild(void Function(GUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDataBuilder toBuilder() => new GUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData &&
        G__typename == other.G__typename &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData')
          ..add('G__typename', G__typename)
          ..add('user', user))
        .toString();
  }
}

class GUserDataBuilder implements Builder<GUserData, GUserDataBuilder> {
  _$GUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserData_userBuilder? _user;
  GUserData_userBuilder get user =>
      _$this._user ??= new GUserData_userBuilder();
  set user(GUserData_userBuilder? user) => _$this._user = user;

  GUserDataBuilder() {
    GUserData._initializeBuilder(this);
  }

  GUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData;
  }

  @override
  void update(void Function(GUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData build() => _build();

  _$GUserData _build() {
    _$GUserData _$result;
    try {
      _$result = _$v ??
          new _$GUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData', 'G__typename'),
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user extends GUserData_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final bool? phoneNumberVerified;
  @override
  final bool? isAdmin;
  @override
  final GUserData_user_profile_image? profile_image;
  @override
  final BuiltList<GUserData_user_addresses>? addresses;
  @override
  final bool? emailVerified;
  @override
  final GUserData_user_referralCode? referralCode;
  @override
  final BuiltList<GUserData_user_favorites>? favorites;
  @override
  final GUserData_user_aadhaar? aadhaar;
  @override
  final GUserData_user_driving_license? driving_license;
  @override
  final bool? deactivate;

  factory _$GUserData_user([void Function(GUserData_userBuilder)? updates]) =>
      (new GUserData_userBuilder()..update(updates))._build();

  _$GUserData_user._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.phoneNumber,
      this.email,
      this.address,
      this.phoneNumberVerified,
      this.isAdmin,
      this.profile_image,
      this.addresses,
      this.emailVerified,
      this.referralCode,
      this.favorites,
      this.aadhaar,
      this.driving_license,
      this.deactivate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GUserData_user', 'id');
  }

  @override
  GUserData_user rebuild(void Function(GUserData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_userBuilder toBuilder() =>
      new GUserData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        address == other.address &&
        phoneNumberVerified == other.phoneNumberVerified &&
        isAdmin == other.isAdmin &&
        profile_image == other.profile_image &&
        addresses == other.addresses &&
        emailVerified == other.emailVerified &&
        referralCode == other.referralCode &&
        favorites == other.favorites &&
        aadhaar == other.aadhaar &&
        driving_license == other.driving_license &&
        deactivate == other.deactivate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, phoneNumberVerified.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, profile_image.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jc(_$hash, emailVerified.hashCode);
    _$hash = $jc(_$hash, referralCode.hashCode);
    _$hash = $jc(_$hash, favorites.hashCode);
    _$hash = $jc(_$hash, aadhaar.hashCode);
    _$hash = $jc(_$hash, driving_license.hashCode);
    _$hash = $jc(_$hash, deactivate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('address', address)
          ..add('phoneNumberVerified', phoneNumberVerified)
          ..add('isAdmin', isAdmin)
          ..add('profile_image', profile_image)
          ..add('addresses', addresses)
          ..add('emailVerified', emailVerified)
          ..add('referralCode', referralCode)
          ..add('favorites', favorites)
          ..add('aadhaar', aadhaar)
          ..add('driving_license', driving_license)
          ..add('deactivate', deactivate))
        .toString();
  }
}

class GUserData_userBuilder
    implements Builder<GUserData_user, GUserData_userBuilder> {
  _$GUserData_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  bool? _phoneNumberVerified;
  bool? get phoneNumberVerified => _$this._phoneNumberVerified;
  set phoneNumberVerified(bool? phoneNumberVerified) =>
      _$this._phoneNumberVerified = phoneNumberVerified;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  GUserData_user_profile_imageBuilder? _profile_image;
  GUserData_user_profile_imageBuilder get profile_image =>
      _$this._profile_image ??= new GUserData_user_profile_imageBuilder();
  set profile_image(GUserData_user_profile_imageBuilder? profile_image) =>
      _$this._profile_image = profile_image;

  ListBuilder<GUserData_user_addresses>? _addresses;
  ListBuilder<GUserData_user_addresses> get addresses =>
      _$this._addresses ??= new ListBuilder<GUserData_user_addresses>();
  set addresses(ListBuilder<GUserData_user_addresses>? addresses) =>
      _$this._addresses = addresses;

  bool? _emailVerified;
  bool? get emailVerified => _$this._emailVerified;
  set emailVerified(bool? emailVerified) =>
      _$this._emailVerified = emailVerified;

  GUserData_user_referralCodeBuilder? _referralCode;
  GUserData_user_referralCodeBuilder get referralCode =>
      _$this._referralCode ??= new GUserData_user_referralCodeBuilder();
  set referralCode(GUserData_user_referralCodeBuilder? referralCode) =>
      _$this._referralCode = referralCode;

  ListBuilder<GUserData_user_favorites>? _favorites;
  ListBuilder<GUserData_user_favorites> get favorites =>
      _$this._favorites ??= new ListBuilder<GUserData_user_favorites>();
  set favorites(ListBuilder<GUserData_user_favorites>? favorites) =>
      _$this._favorites = favorites;

  GUserData_user_aadhaarBuilder? _aadhaar;
  GUserData_user_aadhaarBuilder get aadhaar =>
      _$this._aadhaar ??= new GUserData_user_aadhaarBuilder();
  set aadhaar(GUserData_user_aadhaarBuilder? aadhaar) =>
      _$this._aadhaar = aadhaar;

  GUserData_user_driving_licenseBuilder? _driving_license;
  GUserData_user_driving_licenseBuilder get driving_license =>
      _$this._driving_license ??= new GUserData_user_driving_licenseBuilder();
  set driving_license(GUserData_user_driving_licenseBuilder? driving_license) =>
      _$this._driving_license = driving_license;

  bool? _deactivate;
  bool? get deactivate => _$this._deactivate;
  set deactivate(bool? deactivate) => _$this._deactivate = deactivate;

  GUserData_userBuilder() {
    GUserData_user._initializeBuilder(this);
  }

  GUserData_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _address = $v.address;
      _phoneNumberVerified = $v.phoneNumberVerified;
      _isAdmin = $v.isAdmin;
      _profile_image = $v.profile_image?.toBuilder();
      _addresses = $v.addresses?.toBuilder();
      _emailVerified = $v.emailVerified;
      _referralCode = $v.referralCode?.toBuilder();
      _favorites = $v.favorites?.toBuilder();
      _aadhaar = $v.aadhaar?.toBuilder();
      _driving_license = $v.driving_license?.toBuilder();
      _deactivate = $v.deactivate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user;
  }

  @override
  void update(void Function(GUserData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user build() => _build();

  _$GUserData_user _build() {
    _$GUserData_user _$result;
    try {
      _$result = _$v ??
          new _$GUserData_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData_user', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserData_user', 'id'),
            name: name,
            phoneNumber: phoneNumber,
            email: email,
            address: address,
            phoneNumberVerified: phoneNumberVerified,
            isAdmin: isAdmin,
            profile_image: _profile_image?.build(),
            addresses: _addresses?.build(),
            emailVerified: emailVerified,
            referralCode: _referralCode?.build(),
            favorites: _favorites?.build(),
            aadhaar: _aadhaar?.build(),
            driving_license: _driving_license?.build(),
            deactivate: deactivate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile_image';
        _profile_image?.build();
        _$failedField = 'addresses';
        _addresses?.build();

        _$failedField = 'referralCode';
        _referralCode?.build();
        _$failedField = 'favorites';
        _favorites?.build();
        _$failedField = 'aadhaar';
        _aadhaar?.build();
        _$failedField = 'driving_license';
        _driving_license?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_profile_image extends GUserData_user_profile_image {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int filesize;
  @override
  final int width;
  @override
  final int height;
  @override
  final _i2.GImageExtension extension;
  @override
  final String url;

  factory _$GUserData_user_profile_image(
          [void Function(GUserData_user_profile_imageBuilder)? updates]) =>
      (new GUserData_user_profile_imageBuilder()..update(updates))._build();

  _$GUserData_user_profile_image._(
      {required this.G__typename,
      required this.id,
      required this.filesize,
      required this.width,
      required this.height,
      required this.extension,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_profile_image', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_user_profile_image', 'id');
    BuiltValueNullFieldError.checkNotNull(
        filesize, r'GUserData_user_profile_image', 'filesize');
    BuiltValueNullFieldError.checkNotNull(
        width, r'GUserData_user_profile_image', 'width');
    BuiltValueNullFieldError.checkNotNull(
        height, r'GUserData_user_profile_image', 'height');
    BuiltValueNullFieldError.checkNotNull(
        extension, r'GUserData_user_profile_image', 'extension');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserData_user_profile_image', 'url');
  }

  @override
  GUserData_user_profile_image rebuild(
          void Function(GUserData_user_profile_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_profile_imageBuilder toBuilder() =>
      new GUserData_user_profile_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_profile_image &&
        G__typename == other.G__typename &&
        id == other.id &&
        filesize == other.filesize &&
        width == other.width &&
        height == other.height &&
        extension == other.extension &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filesize.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, extension.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user_profile_image')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('filesize', filesize)
          ..add('width', width)
          ..add('height', height)
          ..add('extension', extension)
          ..add('url', url))
        .toString();
  }
}

class GUserData_user_profile_imageBuilder
    implements
        Builder<GUserData_user_profile_image,
            GUserData_user_profile_imageBuilder> {
  _$GUserData_user_profile_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _filesize;
  int? get filesize => _$this._filesize;
  set filesize(int? filesize) => _$this._filesize = filesize;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  _i2.GImageExtension? _extension;
  _i2.GImageExtension? get extension => _$this._extension;
  set extension(_i2.GImageExtension? extension) =>
      _$this._extension = extension;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GUserData_user_profile_imageBuilder() {
    GUserData_user_profile_image._initializeBuilder(this);
  }

  GUserData_user_profile_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _filesize = $v.filesize;
      _width = $v.width;
      _height = $v.height;
      _extension = $v.extension;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_profile_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_profile_image;
  }

  @override
  void update(void Function(GUserData_user_profile_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_profile_image build() => _build();

  _$GUserData_user_profile_image _build() {
    final _$result = _$v ??
        new _$GUserData_user_profile_image._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GUserData_user_profile_image', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GUserData_user_profile_image', 'id'),
          filesize: BuiltValueNullFieldError.checkNotNull(
              filesize, r'GUserData_user_profile_image', 'filesize'),
          width: BuiltValueNullFieldError.checkNotNull(
              width, r'GUserData_user_profile_image', 'width'),
          height: BuiltValueNullFieldError.checkNotNull(
              height, r'GUserData_user_profile_image', 'height'),
          extension: BuiltValueNullFieldError.checkNotNull(
              extension, r'GUserData_user_profile_image', 'extension'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'GUserData_user_profile_image', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_addresses extends GUserData_user_addresses {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? pinCode;
  @override
  final String? address;
  @override
  final String? town;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final bool? Gdefault;

  factory _$GUserData_user_addresses(
          [void Function(GUserData_user_addressesBuilder)? updates]) =>
      (new GUserData_user_addressesBuilder()..update(updates))._build();

  _$GUserData_user_addresses._(
      {required this.G__typename,
      required this.id,
      this.createdAt,
      this.modifiedAt,
      this.name,
      this.phoneNumber,
      this.pinCode,
      this.address,
      this.town,
      this.district,
      this.state,
      this.Gdefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_addresses', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_user_addresses', 'id');
  }

  @override
  GUserData_user_addresses rebuild(
          void Function(GUserData_user_addressesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_addressesBuilder toBuilder() =>
      new GUserData_user_addressesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_addresses &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        pinCode == other.pinCode &&
        address == other.address &&
        town == other.town &&
        district == other.district &&
        state == other.state &&
        Gdefault == other.Gdefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, pinCode.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, town.hashCode);
    _$hash = $jc(_$hash, district.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, Gdefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user_addresses')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('pinCode', pinCode)
          ..add('address', address)
          ..add('town', town)
          ..add('district', district)
          ..add('state', state)
          ..add('Gdefault', Gdefault))
        .toString();
  }
}

class GUserData_user_addressesBuilder
    implements
        Builder<GUserData_user_addresses, GUserData_user_addressesBuilder> {
  _$GUserData_user_addresses? _$v;

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

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _pinCode;
  String? get pinCode => _$this._pinCode;
  set pinCode(String? pinCode) => _$this._pinCode = pinCode;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _town;
  String? get town => _$this._town;
  set town(String? town) => _$this._town = town;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  bool? _Gdefault;
  bool? get Gdefault => _$this._Gdefault;
  set Gdefault(bool? Gdefault) => _$this._Gdefault = Gdefault;

  GUserData_user_addressesBuilder() {
    GUserData_user_addresses._initializeBuilder(this);
  }

  GUserData_user_addressesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt?.toBuilder();
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _pinCode = $v.pinCode;
      _address = $v.address;
      _town = $v.town;
      _district = $v.district;
      _state = $v.state;
      _Gdefault = $v.Gdefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_addresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_addresses;
  }

  @override
  void update(void Function(GUserData_user_addressesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_addresses build() => _build();

  _$GUserData_user_addresses _build() {
    _$GUserData_user_addresses _$result;
    try {
      _$result = _$v ??
          new _$GUserData_user_addresses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData_user_addresses', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserData_user_addresses', 'id'),
            createdAt: _createdAt?.build(),
            modifiedAt: _modifiedAt?.build(),
            name: name,
            phoneNumber: phoneNumber,
            pinCode: pinCode,
            address: address,
            town: town,
            district: district,
            state: state,
            Gdefault: Gdefault,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_user_addresses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_referralCode extends GUserData_user_referralCode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? code;
  @override
  final _i2.GDateTime? modifiedAt;
  @override
  final _i2.GDateTime? createdAt;

  factory _$GUserData_user_referralCode(
          [void Function(GUserData_user_referralCodeBuilder)? updates]) =>
      (new GUserData_user_referralCodeBuilder()..update(updates))._build();

  _$GUserData_user_referralCode._(
      {required this.G__typename,
      required this.id,
      this.code,
      this.modifiedAt,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_referralCode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_user_referralCode', 'id');
  }

  @override
  GUserData_user_referralCode rebuild(
          void Function(GUserData_user_referralCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_referralCodeBuilder toBuilder() =>
      new GUserData_user_referralCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_referralCode &&
        G__typename == other.G__typename &&
        id == other.id &&
        code == other.code &&
        modifiedAt == other.modifiedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user_referralCode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('code', code)
          ..add('modifiedAt', modifiedAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GUserData_user_referralCodeBuilder
    implements
        Builder<GUserData_user_referralCode,
            GUserData_user_referralCodeBuilder> {
  _$GUserData_user_referralCode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  _i2.GDateTimeBuilder? _modifiedAt;
  _i2.GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new _i2.GDateTimeBuilder();
  set modifiedAt(_i2.GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GUserData_user_referralCodeBuilder() {
    GUserData_user_referralCode._initializeBuilder(this);
  }

  GUserData_user_referralCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _code = $v.code;
      _modifiedAt = $v.modifiedAt?.toBuilder();
      _createdAt = $v.createdAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_referralCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_referralCode;
  }

  @override
  void update(void Function(GUserData_user_referralCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_referralCode build() => _build();

  _$GUserData_user_referralCode _build() {
    _$GUserData_user_referralCode _$result;
    try {
      _$result = _$v ??
          new _$GUserData_user_referralCode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData_user_referralCode', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserData_user_referralCode', 'id'),
            code: code,
            modifiedAt: _modifiedAt?.build(),
            createdAt: _createdAt?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modifiedAt';
        _modifiedAt?.build();
        _$failedField = 'createdAt';
        _createdAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_user_referralCode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_favorites extends GUserData_user_favorites {
  @override
  final String G__typename;
  @override
  final GUserData_user_favorites_vehicleVariant? vehicleVariant;
  @override
  final String id;

  factory _$GUserData_user_favorites(
          [void Function(GUserData_user_favoritesBuilder)? updates]) =>
      (new GUserData_user_favoritesBuilder()..update(updates))._build();

  _$GUserData_user_favorites._(
      {required this.G__typename, this.vehicleVariant, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_favorites', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_user_favorites', 'id');
  }

  @override
  GUserData_user_favorites rebuild(
          void Function(GUserData_user_favoritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_favoritesBuilder toBuilder() =>
      new GUserData_user_favoritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_favorites &&
        G__typename == other.G__typename &&
        vehicleVariant == other.vehicleVariant &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vehicleVariant.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user_favorites')
          ..add('G__typename', G__typename)
          ..add('vehicleVariant', vehicleVariant)
          ..add('id', id))
        .toString();
  }
}

class GUserData_user_favoritesBuilder
    implements
        Builder<GUserData_user_favorites, GUserData_user_favoritesBuilder> {
  _$GUserData_user_favorites? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserData_user_favorites_vehicleVariantBuilder? _vehicleVariant;
  GUserData_user_favorites_vehicleVariantBuilder get vehicleVariant =>
      _$this._vehicleVariant ??=
          new GUserData_user_favorites_vehicleVariantBuilder();
  set vehicleVariant(
          GUserData_user_favorites_vehicleVariantBuilder? vehicleVariant) =>
      _$this._vehicleVariant = vehicleVariant;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUserData_user_favoritesBuilder() {
    GUserData_user_favorites._initializeBuilder(this);
  }

  GUserData_user_favoritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vehicleVariant = $v.vehicleVariant?.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_favorites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_favorites;
  }

  @override
  void update(void Function(GUserData_user_favoritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_favorites build() => _build();

  _$GUserData_user_favorites _build() {
    _$GUserData_user_favorites _$result;
    try {
      _$result = _$v ??
          new _$GUserData_user_favorites._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData_user_favorites', 'G__typename'),
            vehicleVariant: _vehicleVariant?.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserData_user_favorites', 'id'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vehicleVariant';
        _vehicleVariant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_user_favorites', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_favorites_vehicleVariant
    extends GUserData_user_favorites_vehicleVariant {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GUserData_user_favorites_vehicleVariant(
          [void Function(GUserData_user_favorites_vehicleVariantBuilder)?
              updates]) =>
      (new GUserData_user_favorites_vehicleVariantBuilder()..update(updates))
          ._build();

  _$GUserData_user_favorites_vehicleVariant._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_favorites_vehicleVariant', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_user_favorites_vehicleVariant', 'id');
  }

  @override
  GUserData_user_favorites_vehicleVariant rebuild(
          void Function(GUserData_user_favorites_vehicleVariantBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_favorites_vehicleVariantBuilder toBuilder() =>
      new GUserData_user_favorites_vehicleVariantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_favorites_vehicleVariant &&
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
    return (newBuiltValueToStringHelper(
            r'GUserData_user_favorites_vehicleVariant')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GUserData_user_favorites_vehicleVariantBuilder
    implements
        Builder<GUserData_user_favorites_vehicleVariant,
            GUserData_user_favorites_vehicleVariantBuilder> {
  _$GUserData_user_favorites_vehicleVariant? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUserData_user_favorites_vehicleVariantBuilder() {
    GUserData_user_favorites_vehicleVariant._initializeBuilder(this);
  }

  GUserData_user_favorites_vehicleVariantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_favorites_vehicleVariant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_favorites_vehicleVariant;
  }

  @override
  void update(
      void Function(GUserData_user_favorites_vehicleVariantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_favorites_vehicleVariant build() => _build();

  _$GUserData_user_favorites_vehicleVariant _build() {
    final _$result = _$v ??
        new _$GUserData_user_favorites_vehicleVariant._(
          G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
              r'GUserData_user_favorites_vehicleVariant', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GUserData_user_favorites_vehicleVariant', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_aadhaar extends GUserData_user_aadhaar {
  @override
  final String G__typename;
  @override
  final String url;
  @override
  final String filename;

  factory _$GUserData_user_aadhaar(
          [void Function(GUserData_user_aadhaarBuilder)? updates]) =>
      (new GUserData_user_aadhaarBuilder()..update(updates))._build();

  _$GUserData_user_aadhaar._(
      {required this.G__typename, required this.url, required this.filename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_aadhaar', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserData_user_aadhaar', 'url');
    BuiltValueNullFieldError.checkNotNull(
        filename, r'GUserData_user_aadhaar', 'filename');
  }

  @override
  GUserData_user_aadhaar rebuild(
          void Function(GUserData_user_aadhaarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_aadhaarBuilder toBuilder() =>
      new GUserData_user_aadhaarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_aadhaar &&
        G__typename == other.G__typename &&
        url == other.url &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user_aadhaar')
          ..add('G__typename', G__typename)
          ..add('url', url)
          ..add('filename', filename))
        .toString();
  }
}

class GUserData_user_aadhaarBuilder
    implements Builder<GUserData_user_aadhaar, GUserData_user_aadhaarBuilder> {
  _$GUserData_user_aadhaar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  GUserData_user_aadhaarBuilder() {
    GUserData_user_aadhaar._initializeBuilder(this);
  }

  GUserData_user_aadhaarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _url = $v.url;
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_aadhaar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_aadhaar;
  }

  @override
  void update(void Function(GUserData_user_aadhaarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_aadhaar build() => _build();

  _$GUserData_user_aadhaar _build() {
    final _$result = _$v ??
        new _$GUserData_user_aadhaar._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GUserData_user_aadhaar', 'G__typename'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'GUserData_user_aadhaar', 'url'),
          filename: BuiltValueNullFieldError.checkNotNull(
              filename, r'GUserData_user_aadhaar', 'filename'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_user_driving_license extends GUserData_user_driving_license {
  @override
  final String G__typename;
  @override
  final String url;
  @override
  final String filename;

  factory _$GUserData_user_driving_license(
          [void Function(GUserData_user_driving_licenseBuilder)? updates]) =>
      (new GUserData_user_driving_licenseBuilder()..update(updates))._build();

  _$GUserData_user_driving_license._(
      {required this.G__typename, required this.url, required this.filename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_user_driving_license', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserData_user_driving_license', 'url');
    BuiltValueNullFieldError.checkNotNull(
        filename, r'GUserData_user_driving_license', 'filename');
  }

  @override
  GUserData_user_driving_license rebuild(
          void Function(GUserData_user_driving_licenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_user_driving_licenseBuilder toBuilder() =>
      new GUserData_user_driving_licenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_user_driving_license &&
        G__typename == other.G__typename &&
        url == other.url &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_user_driving_license')
          ..add('G__typename', G__typename)
          ..add('url', url)
          ..add('filename', filename))
        .toString();
  }
}

class GUserData_user_driving_licenseBuilder
    implements
        Builder<GUserData_user_driving_license,
            GUserData_user_driving_licenseBuilder> {
  _$GUserData_user_driving_license? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  GUserData_user_driving_licenseBuilder() {
    GUserData_user_driving_license._initializeBuilder(this);
  }

  GUserData_user_driving_licenseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _url = $v.url;
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_user_driving_license other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_user_driving_license;
  }

  @override
  void update(void Function(GUserData_user_driving_licenseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_user_driving_license build() => _build();

  _$GUserData_user_driving_license _build() {
    final _$result = _$v ??
        new _$GUserData_user_driving_license._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GUserData_user_driving_license', 'G__typename'),
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'GUserData_user_driving_license', 'url'),
          filename: BuiltValueNullFieldError.checkNotNull(
              filename, r'GUserData_user_driving_license', 'filename'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData extends GUpdateUserData {
  @override
  final String G__typename;
  @override
  final GUpdateUserData_updateUser? updateUser;

  factory _$GUpdateUserData([void Function(GUpdateUserDataBuilder)? updates]) =>
      (new GUpdateUserDataBuilder()..update(updates))._build();

  _$GUpdateUserData._({required this.G__typename, this.updateUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData', 'G__typename');
  }

  @override
  GUpdateUserData rebuild(void Function(GUpdateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserDataBuilder toBuilder() =>
      new GUpdateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData &&
        G__typename == other.G__typename &&
        updateUser == other.updateUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData')
          ..add('G__typename', G__typename)
          ..add('updateUser', updateUser))
        .toString();
  }
}

class GUpdateUserDataBuilder
    implements Builder<GUpdateUserData, GUpdateUserDataBuilder> {
  _$GUpdateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserData_updateUserBuilder? _updateUser;
  GUpdateUserData_updateUserBuilder get updateUser =>
      _$this._updateUser ??= new GUpdateUserData_updateUserBuilder();
  set updateUser(GUpdateUserData_updateUserBuilder? updateUser) =>
      _$this._updateUser = updateUser;

  GUpdateUserDataBuilder() {
    GUpdateUserData._initializeBuilder(this);
  }

  GUpdateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateUser = $v.updateUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData;
  }

  @override
  void update(void Function(GUpdateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData build() => _build();

  _$GUpdateUserData _build() {
    _$GUpdateUserData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateUserData', 'G__typename'),
            updateUser: _updateUser?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUser';
        _updateUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_updateUser extends GUpdateUserData_updateUser {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GUpdateUserData_updateUser(
          [void Function(GUpdateUserData_updateUserBuilder)? updates]) =>
      (new GUpdateUserData_updateUserBuilder()..update(updates))._build();

  _$GUpdateUserData_updateUser._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_updateUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUpdateUserData_updateUser', 'id');
  }

  @override
  GUpdateUserData_updateUser rebuild(
          void Function(GUpdateUserData_updateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_updateUserBuilder toBuilder() =>
      new GUpdateUserData_updateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_updateUser &&
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
    return (newBuiltValueToStringHelper(r'GUpdateUserData_updateUser')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GUpdateUserData_updateUserBuilder
    implements
        Builder<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder> {
  _$GUpdateUserData_updateUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateUserData_updateUserBuilder() {
    GUpdateUserData_updateUser._initializeBuilder(this);
  }

  GUpdateUserData_updateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_updateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_updateUser;
  }

  @override
  void update(void Function(GUpdateUserData_updateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_updateUser build() => _build();

  _$GUpdateUserData_updateUser _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_updateUser._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GUpdateUserData_updateUser', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GUpdateUserData_updateUser', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDealerData extends GDealerData {
  @override
  final String G__typename;
  @override
  final BuiltList<GDealerData_dealers>? dealers;

  factory _$GDealerData([void Function(GDealerDataBuilder)? updates]) =>
      (new GDealerDataBuilder()..update(updates))._build();

  _$GDealerData._({required this.G__typename, this.dealers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDealerData', 'G__typename');
  }

  @override
  GDealerData rebuild(void Function(GDealerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDealerDataBuilder toBuilder() => new GDealerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDealerData &&
        G__typename == other.G__typename &&
        dealers == other.dealers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, dealers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDealerData')
          ..add('G__typename', G__typename)
          ..add('dealers', dealers))
        .toString();
  }
}

class GDealerDataBuilder implements Builder<GDealerData, GDealerDataBuilder> {
  _$GDealerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GDealerData_dealers>? _dealers;
  ListBuilder<GDealerData_dealers> get dealers =>
      _$this._dealers ??= new ListBuilder<GDealerData_dealers>();
  set dealers(ListBuilder<GDealerData_dealers>? dealers) =>
      _$this._dealers = dealers;

  GDealerDataBuilder() {
    GDealerData._initializeBuilder(this);
  }

  GDealerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _dealers = $v.dealers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDealerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDealerData;
  }

  @override
  void update(void Function(GDealerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDealerData build() => _build();

  _$GDealerData _build() {
    _$GDealerData _$result;
    try {
      _$result = _$v ??
          new _$GDealerData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDealerData', 'G__typename'),
            dealers: _dealers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dealers';
        _dealers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDealerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDealerData_dealers extends GDealerData_dealers {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final bool? approved;
  @override
  final bool? mouApproved;

  factory _$GDealerData_dealers(
          [void Function(GDealerData_dealersBuilder)? updates]) =>
      (new GDealerData_dealersBuilder()..update(updates))._build();

  _$GDealerData_dealers._(
      {required this.G__typename,
      required this.id,
      this.approved,
      this.mouApproved})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDealerData_dealers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GDealerData_dealers', 'id');
  }

  @override
  GDealerData_dealers rebuild(
          void Function(GDealerData_dealersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDealerData_dealersBuilder toBuilder() =>
      new GDealerData_dealersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDealerData_dealers &&
        G__typename == other.G__typename &&
        id == other.id &&
        approved == other.approved &&
        mouApproved == other.mouApproved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jc(_$hash, mouApproved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDealerData_dealers')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('approved', approved)
          ..add('mouApproved', mouApproved))
        .toString();
  }
}

class GDealerData_dealersBuilder
    implements Builder<GDealerData_dealers, GDealerData_dealersBuilder> {
  _$GDealerData_dealers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  bool? _mouApproved;
  bool? get mouApproved => _$this._mouApproved;
  set mouApproved(bool? mouApproved) => _$this._mouApproved = mouApproved;

  GDealerData_dealersBuilder() {
    GDealerData_dealers._initializeBuilder(this);
  }

  GDealerData_dealersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _approved = $v.approved;
      _mouApproved = $v.mouApproved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDealerData_dealers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDealerData_dealers;
  }

  @override
  void update(void Function(GDealerData_dealersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDealerData_dealers build() => _build();

  _$GDealerData_dealers _build() {
    final _$result = _$v ??
        new _$GDealerData_dealers._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GDealerData_dealers', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GDealerData_dealers', 'id'),
          approved: approved,
          mouApproved: mouApproved,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateDealerData extends GUpdateDealerData {
  @override
  final String G__typename;
  @override
  final GUpdateDealerData_updateDealer? updateDealer;

  factory _$GUpdateDealerData(
          [void Function(GUpdateDealerDataBuilder)? updates]) =>
      (new GUpdateDealerDataBuilder()..update(updates))._build();

  _$GUpdateDealerData._({required this.G__typename, this.updateDealer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateDealerData', 'G__typename');
  }

  @override
  GUpdateDealerData rebuild(void Function(GUpdateDealerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateDealerDataBuilder toBuilder() =>
      new GUpdateDealerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateDealerData &&
        G__typename == other.G__typename &&
        updateDealer == other.updateDealer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateDealer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateDealerData')
          ..add('G__typename', G__typename)
          ..add('updateDealer', updateDealer))
        .toString();
  }
}

class GUpdateDealerDataBuilder
    implements Builder<GUpdateDealerData, GUpdateDealerDataBuilder> {
  _$GUpdateDealerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateDealerData_updateDealerBuilder? _updateDealer;
  GUpdateDealerData_updateDealerBuilder get updateDealer =>
      _$this._updateDealer ??= new GUpdateDealerData_updateDealerBuilder();
  set updateDealer(GUpdateDealerData_updateDealerBuilder? updateDealer) =>
      _$this._updateDealer = updateDealer;

  GUpdateDealerDataBuilder() {
    GUpdateDealerData._initializeBuilder(this);
  }

  GUpdateDealerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateDealer = $v.updateDealer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateDealerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateDealerData;
  }

  @override
  void update(void Function(GUpdateDealerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateDealerData build() => _build();

  _$GUpdateDealerData _build() {
    _$GUpdateDealerData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateDealerData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateDealerData', 'G__typename'),
            updateDealer: _updateDealer?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateDealer';
        _updateDealer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateDealerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateDealerData_updateDealer extends GUpdateDealerData_updateDealer {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final double? lLat;
  @override
  final double? lLng;
  @override
  final BuiltList<double?>? location;

  factory _$GUpdateDealerData_updateDealer(
          [void Function(GUpdateDealerData_updateDealerBuilder)? updates]) =>
      (new GUpdateDealerData_updateDealerBuilder()..update(updates))._build();

  _$GUpdateDealerData_updateDealer._(
      {required this.G__typename,
      required this.id,
      this.lLat,
      this.lLng,
      this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateDealerData_updateDealer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUpdateDealerData_updateDealer', 'id');
  }

  @override
  GUpdateDealerData_updateDealer rebuild(
          void Function(GUpdateDealerData_updateDealerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateDealerData_updateDealerBuilder toBuilder() =>
      new GUpdateDealerData_updateDealerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateDealerData_updateDealer &&
        G__typename == other.G__typename &&
        id == other.id &&
        lLat == other.lLat &&
        lLng == other.lLng &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lLat.hashCode);
    _$hash = $jc(_$hash, lLng.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateDealerData_updateDealer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lLat', lLat)
          ..add('lLng', lLng)
          ..add('location', location))
        .toString();
  }
}

class GUpdateDealerData_updateDealerBuilder
    implements
        Builder<GUpdateDealerData_updateDealer,
            GUpdateDealerData_updateDealerBuilder> {
  _$GUpdateDealerData_updateDealer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _lLat;
  double? get lLat => _$this._lLat;
  set lLat(double? lLat) => _$this._lLat = lLat;

  double? _lLng;
  double? get lLng => _$this._lLng;
  set lLng(double? lLng) => _$this._lLng = lLng;

  ListBuilder<double?>? _location;
  ListBuilder<double?> get location =>
      _$this._location ??= new ListBuilder<double?>();
  set location(ListBuilder<double?>? location) => _$this._location = location;

  GUpdateDealerData_updateDealerBuilder() {
    GUpdateDealerData_updateDealer._initializeBuilder(this);
  }

  GUpdateDealerData_updateDealerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _lLat = $v.lLat;
      _lLng = $v.lLng;
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateDealerData_updateDealer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateDealerData_updateDealer;
  }

  @override
  void update(void Function(GUpdateDealerData_updateDealerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateDealerData_updateDealer build() => _build();

  _$GUpdateDealerData_updateDealer _build() {
    _$GUpdateDealerData_updateDealer _$result;
    try {
      _$result = _$v ??
          new _$GUpdateDealerData_updateDealer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateDealerData_updateDealer', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateDealerData_updateDealer', 'id'),
            lLat: lLat,
            lLng: lLng,
            location: _location?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateDealerData_updateDealer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendDealerMOUApprovalOTPData extends GSendDealerMOUApprovalOTPData {
  @override
  final String G__typename;
  @override
  final _i4.JsonObject? sendDealerMOUApprovalOTP;

  factory _$GSendDealerMOUApprovalOTPData(
          [void Function(GSendDealerMOUApprovalOTPDataBuilder)? updates]) =>
      (new GSendDealerMOUApprovalOTPDataBuilder()..update(updates))._build();

  _$GSendDealerMOUApprovalOTPData._(
      {required this.G__typename, this.sendDealerMOUApprovalOTP})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSendDealerMOUApprovalOTPData', 'G__typename');
  }

  @override
  GSendDealerMOUApprovalOTPData rebuild(
          void Function(GSendDealerMOUApprovalOTPDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendDealerMOUApprovalOTPDataBuilder toBuilder() =>
      new GSendDealerMOUApprovalOTPDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendDealerMOUApprovalOTPData &&
        G__typename == other.G__typename &&
        sendDealerMOUApprovalOTP == other.sendDealerMOUApprovalOTP;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendDealerMOUApprovalOTP.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendDealerMOUApprovalOTPData')
          ..add('G__typename', G__typename)
          ..add('sendDealerMOUApprovalOTP', sendDealerMOUApprovalOTP))
        .toString();
  }
}

class GSendDealerMOUApprovalOTPDataBuilder
    implements
        Builder<GSendDealerMOUApprovalOTPData,
            GSendDealerMOUApprovalOTPDataBuilder> {
  _$GSendDealerMOUApprovalOTPData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i4.JsonObject? _sendDealerMOUApprovalOTP;
  _i4.JsonObject? get sendDealerMOUApprovalOTP =>
      _$this._sendDealerMOUApprovalOTP;
  set sendDealerMOUApprovalOTP(_i4.JsonObject? sendDealerMOUApprovalOTP) =>
      _$this._sendDealerMOUApprovalOTP = sendDealerMOUApprovalOTP;

  GSendDealerMOUApprovalOTPDataBuilder() {
    GSendDealerMOUApprovalOTPData._initializeBuilder(this);
  }

  GSendDealerMOUApprovalOTPDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendDealerMOUApprovalOTP = $v.sendDealerMOUApprovalOTP;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendDealerMOUApprovalOTPData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendDealerMOUApprovalOTPData;
  }

  @override
  void update(void Function(GSendDealerMOUApprovalOTPDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendDealerMOUApprovalOTPData build() => _build();

  _$GSendDealerMOUApprovalOTPData _build() {
    final _$result = _$v ??
        new _$GSendDealerMOUApprovalOTPData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GSendDealerMOUApprovalOTPData', 'G__typename'),
          sendDealerMOUApprovalOTP: sendDealerMOUApprovalOTP,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
