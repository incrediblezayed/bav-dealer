// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/serializers.gql.dart'
    as _i2;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;
import 'package:http/http.dart' as _i3;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

class GImageExtension extends EnumClass {
  const GImageExtension._(String name) : super(name);

  static const GImageExtension jpg = _$gImageExtensionjpg;

  static const GImageExtension png = _$gImageExtensionpng;

  static const GImageExtension webp = _$gImageExtensionwebp;

  static const GImageExtension gif = _$gImageExtensiongif;

  static Serializer<GImageExtension> get serializer =>
      _$gImageExtensionSerializer;
  static BuiltSet<GImageExtension> get values => _$gImageExtensionValues;
  static GImageExtension valueOf(String name) => _$gImageExtensionValueOf(name);
}

abstract class GUserWhereUniqueInput
    implements Built<GUserWhereUniqueInput, GUserWhereUniqueInputBuilder> {
  GUserWhereUniqueInput._();

  factory GUserWhereUniqueInput(
          [Function(GUserWhereUniqueInputBuilder b) updates]) =
      _$GUserWhereUniqueInput;

  String? get id;
  String? get phoneNumber;
  String? get email;
  static Serializer<GUserWhereUniqueInput> get serializer =>
      _$gUserWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserWhereUniqueInput.serializer,
        json,
      );
}

abstract class GUserWhereInput
    implements Built<GUserWhereInput, GUserWhereInputBuilder> {
  GUserWhereInput._();

  factory GUserWhereInput([Function(GUserWhereInputBuilder b) updates]) =
      _$GUserWhereInput;

  BuiltList<GUserWhereInput>? get AND;
  BuiltList<GUserWhereInput>? get OR;
  BuiltList<GUserWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get phoneNumber;
  GStringFilter? get email;
  GStringFilter? get address;
  GBooleanFilter? get emailVerified;
  GBooleanFilter? get phoneNumberVerified;
  GBooleanFilter? get isAdmin;
  GAddressManyRelationFilter? get addresses;
  GFavoriteManyRelationFilter? get favorites;
  GCartItemManyRelationFilter? get cartItems;
  GWalletWhereInput? get wallet;
  GReferralCodeWhereInput? get referralCode;
  GPasswordFilter? get passwordResetToken;
  GDateTimeNullableFilter? get passwordResetIssuedAt;
  GDateTimeNullableFilter? get passwordResetRedeemedAt;
  static Serializer<GUserWhereInput> get serializer =>
      _$gUserWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserWhereInput.serializer,
        json,
      );
}

abstract class GIDFilter implements Built<GIDFilter, GIDFilterBuilder> {
  GIDFilter._();

  factory GIDFilter([Function(GIDFilterBuilder b) updates]) = _$GIDFilter;

  String? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<String>? get Gin;
  BuiltList<String>? get notIn;
  String? get lt;
  String? get lte;
  String? get gt;
  String? get gte;
  GIDFilter? get not;
  static Serializer<GIDFilter> get serializer => _$gIDFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GIDFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GIDFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GIDFilter.serializer,
        json,
      );
}

abstract class GDateTimeNullableFilter
    implements Built<GDateTimeNullableFilter, GDateTimeNullableFilterBuilder> {
  GDateTimeNullableFilter._();

  factory GDateTimeNullableFilter(
          [Function(GDateTimeNullableFilterBuilder b) updates]) =
      _$GDateTimeNullableFilter;

  GDateTime? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<GDateTime>? get Gin;
  BuiltList<GDateTime>? get notIn;
  GDateTime? get lt;
  GDateTime? get lte;
  GDateTime? get gt;
  GDateTime? get gte;
  GDateTimeNullableFilter? get not;
  static Serializer<GDateTimeNullableFilter> get serializer =>
      _$gDateTimeNullableFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDateTimeNullableFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDateTimeNullableFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDateTimeNullableFilter.serializer,
        json,
      );
}

abstract class GStringFilter
    implements Built<GStringFilter, GStringFilterBuilder> {
  GStringFilter._();

  factory GStringFilter([Function(GStringFilterBuilder b) updates]) =
      _$GStringFilter;

  String? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<String>? get Gin;
  BuiltList<String>? get notIn;
  String? get lt;
  String? get lte;
  String? get gt;
  String? get gte;
  String? get contains;
  String? get startsWith;
  String? get endsWith;
  GQueryMode? get mode;
  GNestedStringFilter? get not;
  static Serializer<GStringFilter> get serializer => _$gStringFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GStringFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStringFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GStringFilter.serializer,
        json,
      );
}

class GQueryMode extends EnumClass {
  const GQueryMode._(String name) : super(name);

  @BuiltValueEnumConst(wireName: 'default')
  static const GQueryMode Gdefault = _$gQueryModeGdefault;

  static const GQueryMode insensitive = _$gQueryModeinsensitive;

  static Serializer<GQueryMode> get serializer => _$gQueryModeSerializer;
  static BuiltSet<GQueryMode> get values => _$gQueryModeValues;
  static GQueryMode valueOf(String name) => _$gQueryModeValueOf(name);
}

abstract class GNestedStringFilter
    implements Built<GNestedStringFilter, GNestedStringFilterBuilder> {
  GNestedStringFilter._();

  factory GNestedStringFilter(
      [Function(GNestedStringFilterBuilder b) updates]) = _$GNestedStringFilter;

  String? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<String>? get Gin;
  BuiltList<String>? get notIn;
  String? get lt;
  String? get lte;
  String? get gt;
  String? get gte;
  String? get contains;
  String? get startsWith;
  String? get endsWith;
  GNestedStringFilter? get not;
  static Serializer<GNestedStringFilter> get serializer =>
      _$gNestedStringFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNestedStringFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedStringFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNestedStringFilter.serializer,
        json,
      );
}

abstract class GBooleanFilter
    implements Built<GBooleanFilter, GBooleanFilterBuilder> {
  GBooleanFilter._();

  factory GBooleanFilter([Function(GBooleanFilterBuilder b) updates]) =
      _$GBooleanFilter;

  bool? get equals;
  GBooleanFilter? get not;
  static Serializer<GBooleanFilter> get serializer =>
      _$gBooleanFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBooleanFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBooleanFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBooleanFilter.serializer,
        json,
      );
}

abstract class GAddressManyRelationFilter
    implements
        Built<GAddressManyRelationFilter, GAddressManyRelationFilterBuilder> {
  GAddressManyRelationFilter._();

  factory GAddressManyRelationFilter(
          [Function(GAddressManyRelationFilterBuilder b) updates]) =
      _$GAddressManyRelationFilter;

  GAddressWhereInput? get every;
  GAddressWhereInput? get some;
  GAddressWhereInput? get none;
  static Serializer<GAddressManyRelationFilter> get serializer =>
      _$gAddressManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressManyRelationFilter.serializer,
        json,
      );
}

abstract class GFavoriteManyRelationFilter
    implements
        Built<GFavoriteManyRelationFilter, GFavoriteManyRelationFilterBuilder> {
  GFavoriteManyRelationFilter._();

  factory GFavoriteManyRelationFilter(
          [Function(GFavoriteManyRelationFilterBuilder b) updates]) =
      _$GFavoriteManyRelationFilter;

  GFavoriteWhereInput? get every;
  GFavoriteWhereInput? get some;
  GFavoriteWhereInput? get none;
  static Serializer<GFavoriteManyRelationFilter> get serializer =>
      _$gFavoriteManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteManyRelationFilter.serializer,
        json,
      );
}

abstract class GCartItemManyRelationFilter
    implements
        Built<GCartItemManyRelationFilter, GCartItemManyRelationFilterBuilder> {
  GCartItemManyRelationFilter._();

  factory GCartItemManyRelationFilter(
          [Function(GCartItemManyRelationFilterBuilder b) updates]) =
      _$GCartItemManyRelationFilter;

  GCartItemWhereInput? get every;
  GCartItemWhereInput? get some;
  GCartItemWhereInput? get none;
  static Serializer<GCartItemManyRelationFilter> get serializer =>
      _$gCartItemManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemManyRelationFilter.serializer,
        json,
      );
}

abstract class GPasswordFilter
    implements Built<GPasswordFilter, GPasswordFilterBuilder> {
  GPasswordFilter._();

  factory GPasswordFilter([Function(GPasswordFilterBuilder b) updates]) =
      _$GPasswordFilter;

  bool get isSet;
  static Serializer<GPasswordFilter> get serializer =>
      _$gPasswordFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPasswordFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPasswordFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPasswordFilter.serializer,
        json,
      );
}

abstract class GUserOrderByInput
    implements Built<GUserOrderByInput, GUserOrderByInputBuilder> {
  GUserOrderByInput._();

  factory GUserOrderByInput([Function(GUserOrderByInputBuilder b) updates]) =
      _$GUserOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get phoneNumber;
  GOrderDirection? get email;
  GOrderDirection? get address;
  GOrderDirection? get emailVerified;
  GOrderDirection? get phoneNumberVerified;
  GOrderDirection? get isAdmin;
  GOrderDirection? get passwordResetIssuedAt;
  GOrderDirection? get passwordResetRedeemedAt;
  static Serializer<GUserOrderByInput> get serializer =>
      _$gUserOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserOrderByInput.serializer,
        json,
      );
}

class GOrderDirection extends EnumClass {
  const GOrderDirection._(String name) : super(name);

  static const GOrderDirection asc = _$gOrderDirectionasc;

  static const GOrderDirection desc = _$gOrderDirectiondesc;

  static Serializer<GOrderDirection> get serializer =>
      _$gOrderDirectionSerializer;
  static BuiltSet<GOrderDirection> get values => _$gOrderDirectionValues;
  static GOrderDirection valueOf(String name) => _$gOrderDirectionValueOf(name);
}

abstract class GUserUpdateInput
    implements Built<GUserUpdateInput, GUserUpdateInputBuilder> {
  GUserUpdateInput._();

  factory GUserUpdateInput([Function(GUserUpdateInputBuilder b) updates]) =
      _$GUserUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get email;
  String? get address;
  String? get password;
  bool? get emailVerified;
  bool? get phoneNumberVerified;
  bool? get isAdmin;
  GImageFieldInput? get profile_image;
  GFileFieldInput? get aadhaar;
  GFileFieldInput? get driving_license;
  GAddressRelateToManyForUpdateInput? get addresses;
  GFavoriteRelateToManyForUpdateInput? get favorites;
  GCartItemRelateToManyForUpdateInput? get cartItems;
  GWalletRelateToOneForUpdateInput? get wallet;
  GReferralCodeRelateToOneForUpdateInput? get referralCode;
  String? get passwordResetToken;
  GDateTime? get passwordResetIssuedAt;
  GDateTime? get passwordResetRedeemedAt;
  static Serializer<GUserUpdateInput> get serializer =>
      _$gUserUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserUpdateInput.serializer,
        json,
      );
}

abstract class GImageFieldInput
    implements Built<GImageFieldInput, GImageFieldInputBuilder> {
  GImageFieldInput._();

  factory GImageFieldInput([Function(GImageFieldInputBuilder b) updates]) =
      _$GImageFieldInput;

  _i3.MultipartFile get upload;
  static Serializer<GImageFieldInput> get serializer =>
      _$gImageFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GImageFieldInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GImageFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GImageFieldInput.serializer,
        json,
      );
}

abstract class GFileFieldInput
    implements Built<GFileFieldInput, GFileFieldInputBuilder> {
  GFileFieldInput._();

  factory GFileFieldInput([Function(GFileFieldInputBuilder b) updates]) =
      _$GFileFieldInput;

  _i3.MultipartFile get upload;
  static Serializer<GFileFieldInput> get serializer =>
      _$gFileFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFileFieldInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFileFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFileFieldInput.serializer,
        json,
      );
}

abstract class GAddressRelateToManyForUpdateInput
    implements
        Built<GAddressRelateToManyForUpdateInput,
            GAddressRelateToManyForUpdateInputBuilder> {
  GAddressRelateToManyForUpdateInput._();

  factory GAddressRelateToManyForUpdateInput(
          [Function(GAddressRelateToManyForUpdateInputBuilder b) updates]) =
      _$GAddressRelateToManyForUpdateInput;

  BuiltList<GAddressWhereUniqueInput>? get disconnect;
  BuiltList<GAddressWhereUniqueInput>? get set;
  BuiltList<GAddressCreateInput>? get create;
  BuiltList<GAddressWhereUniqueInput>? get connect;
  static Serializer<GAddressRelateToManyForUpdateInput> get serializer =>
      _$gAddressRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GFavoriteRelateToManyForUpdateInput
    implements
        Built<GFavoriteRelateToManyForUpdateInput,
            GFavoriteRelateToManyForUpdateInputBuilder> {
  GFavoriteRelateToManyForUpdateInput._();

  factory GFavoriteRelateToManyForUpdateInput(
          [Function(GFavoriteRelateToManyForUpdateInputBuilder b) updates]) =
      _$GFavoriteRelateToManyForUpdateInput;

  BuiltList<GFavoriteWhereUniqueInput>? get disconnect;
  BuiltList<GFavoriteWhereUniqueInput>? get set;
  BuiltList<GFavoriteCreateInput>? get create;
  BuiltList<GFavoriteWhereUniqueInput>? get connect;
  static Serializer<GFavoriteRelateToManyForUpdateInput> get serializer =>
      _$gFavoriteRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GCartItemRelateToManyForUpdateInput
    implements
        Built<GCartItemRelateToManyForUpdateInput,
            GCartItemRelateToManyForUpdateInputBuilder> {
  GCartItemRelateToManyForUpdateInput._();

  factory GCartItemRelateToManyForUpdateInput(
          [Function(GCartItemRelateToManyForUpdateInputBuilder b) updates]) =
      _$GCartItemRelateToManyForUpdateInput;

  BuiltList<GCartItemWhereUniqueInput>? get disconnect;
  BuiltList<GCartItemWhereUniqueInput>? get set;
  BuiltList<GCartItemCreateInput>? get create;
  BuiltList<GCartItemWhereUniqueInput>? get connect;
  static Serializer<GCartItemRelateToManyForUpdateInput> get serializer =>
      _$gCartItemRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GWalletRelateToOneForUpdateInput
    implements
        Built<GWalletRelateToOneForUpdateInput,
            GWalletRelateToOneForUpdateInputBuilder> {
  GWalletRelateToOneForUpdateInput._();

  factory GWalletRelateToOneForUpdateInput(
          [Function(GWalletRelateToOneForUpdateInputBuilder b) updates]) =
      _$GWalletRelateToOneForUpdateInput;

  GWalletCreateInput? get create;
  GWalletWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GWalletRelateToOneForUpdateInput> get serializer =>
      _$gWalletRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GReferralCodeRelateToOneForUpdateInput
    implements
        Built<GReferralCodeRelateToOneForUpdateInput,
            GReferralCodeRelateToOneForUpdateInputBuilder> {
  GReferralCodeRelateToOneForUpdateInput._();

  factory GReferralCodeRelateToOneForUpdateInput(
          [Function(GReferralCodeRelateToOneForUpdateInputBuilder b) updates]) =
      _$GReferralCodeRelateToOneForUpdateInput;

  GReferralCodeCreateInput? get create;
  GReferralCodeWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GReferralCodeRelateToOneForUpdateInput> get serializer =>
      _$gReferralCodeRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GUserUpdateArgs
    implements Built<GUserUpdateArgs, GUserUpdateArgsBuilder> {
  GUserUpdateArgs._();

  factory GUserUpdateArgs([Function(GUserUpdateArgsBuilder b) updates]) =
      _$GUserUpdateArgs;

  GUserWhereUniqueInput get where;
  GUserUpdateInput get data;
  static Serializer<GUserUpdateArgs> get serializer =>
      _$gUserUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserUpdateArgs.serializer,
        json,
      );
}

abstract class GUserCreateInput
    implements Built<GUserCreateInput, GUserCreateInputBuilder> {
  GUserCreateInput._();

  factory GUserCreateInput([Function(GUserCreateInputBuilder b) updates]) =
      _$GUserCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get email;
  String? get address;
  String? get password;
  bool? get emailVerified;
  bool? get phoneNumberVerified;
  bool? get isAdmin;
  GImageFieldInput? get profile_image;
  GFileFieldInput? get aadhaar;
  GFileFieldInput? get driving_license;
  GAddressRelateToManyForCreateInput? get addresses;
  GFavoriteRelateToManyForCreateInput? get favorites;
  GCartItemRelateToManyForCreateInput? get cartItems;
  GWalletRelateToOneForCreateInput? get wallet;
  GReferralCodeRelateToOneForCreateInput? get referralCode;
  String? get passwordResetToken;
  GDateTime? get passwordResetIssuedAt;
  GDateTime? get passwordResetRedeemedAt;
  static Serializer<GUserCreateInput> get serializer =>
      _$gUserCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserCreateInput.serializer,
        json,
      );
}

abstract class GAddressRelateToManyForCreateInput
    implements
        Built<GAddressRelateToManyForCreateInput,
            GAddressRelateToManyForCreateInputBuilder> {
  GAddressRelateToManyForCreateInput._();

  factory GAddressRelateToManyForCreateInput(
          [Function(GAddressRelateToManyForCreateInputBuilder b) updates]) =
      _$GAddressRelateToManyForCreateInput;

  BuiltList<GAddressCreateInput>? get create;
  BuiltList<GAddressWhereUniqueInput>? get connect;
  static Serializer<GAddressRelateToManyForCreateInput> get serializer =>
      _$gAddressRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GFavoriteRelateToManyForCreateInput
    implements
        Built<GFavoriteRelateToManyForCreateInput,
            GFavoriteRelateToManyForCreateInputBuilder> {
  GFavoriteRelateToManyForCreateInput._();

  factory GFavoriteRelateToManyForCreateInput(
          [Function(GFavoriteRelateToManyForCreateInputBuilder b) updates]) =
      _$GFavoriteRelateToManyForCreateInput;

  BuiltList<GFavoriteCreateInput>? get create;
  BuiltList<GFavoriteWhereUniqueInput>? get connect;
  static Serializer<GFavoriteRelateToManyForCreateInput> get serializer =>
      _$gFavoriteRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GCartItemRelateToManyForCreateInput
    implements
        Built<GCartItemRelateToManyForCreateInput,
            GCartItemRelateToManyForCreateInputBuilder> {
  GCartItemRelateToManyForCreateInput._();

  factory GCartItemRelateToManyForCreateInput(
          [Function(GCartItemRelateToManyForCreateInputBuilder b) updates]) =
      _$GCartItemRelateToManyForCreateInput;

  BuiltList<GCartItemCreateInput>? get create;
  BuiltList<GCartItemWhereUniqueInput>? get connect;
  static Serializer<GCartItemRelateToManyForCreateInput> get serializer =>
      _$gCartItemRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GWalletRelateToOneForCreateInput
    implements
        Built<GWalletRelateToOneForCreateInput,
            GWalletRelateToOneForCreateInputBuilder> {
  GWalletRelateToOneForCreateInput._();

  factory GWalletRelateToOneForCreateInput(
          [Function(GWalletRelateToOneForCreateInputBuilder b) updates]) =
      _$GWalletRelateToOneForCreateInput;

  GWalletCreateInput? get create;
  GWalletWhereUniqueInput? get connect;
  static Serializer<GWalletRelateToOneForCreateInput> get serializer =>
      _$gWalletRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GReferralCodeRelateToOneForCreateInput
    implements
        Built<GReferralCodeRelateToOneForCreateInput,
            GReferralCodeRelateToOneForCreateInputBuilder> {
  GReferralCodeRelateToOneForCreateInput._();

  factory GReferralCodeRelateToOneForCreateInput(
          [Function(GReferralCodeRelateToOneForCreateInputBuilder b) updates]) =
      _$GReferralCodeRelateToOneForCreateInput;

  GReferralCodeCreateInput? get create;
  GReferralCodeWhereUniqueInput? get connect;
  static Serializer<GReferralCodeRelateToOneForCreateInput> get serializer =>
      _$gReferralCodeRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GReferralCodeWhereUniqueInput
    implements
        Built<GReferralCodeWhereUniqueInput,
            GReferralCodeWhereUniqueInputBuilder> {
  GReferralCodeWhereUniqueInput._();

  factory GReferralCodeWhereUniqueInput(
          [Function(GReferralCodeWhereUniqueInputBuilder b) updates]) =
      _$GReferralCodeWhereUniqueInput;

  String? get id;
  String? get code;
  static Serializer<GReferralCodeWhereUniqueInput> get serializer =>
      _$gReferralCodeWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GReferralCodeWhereInput
    implements Built<GReferralCodeWhereInput, GReferralCodeWhereInputBuilder> {
  GReferralCodeWhereInput._();

  factory GReferralCodeWhereInput(
          [Function(GReferralCodeWhereInputBuilder b) updates]) =
      _$GReferralCodeWhereInput;

  BuiltList<GReferralCodeWhereInput>? get AND;
  BuiltList<GReferralCodeWhereInput>? get OR;
  BuiltList<GReferralCodeWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GStringFilter? get code;
  static Serializer<GReferralCodeWhereInput> get serializer =>
      _$gReferralCodeWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeWhereInput.serializer,
        json,
      );
}

abstract class GReferralCodeOrderByInput
    implements
        Built<GReferralCodeOrderByInput, GReferralCodeOrderByInputBuilder> {
  GReferralCodeOrderByInput._();

  factory GReferralCodeOrderByInput(
          [Function(GReferralCodeOrderByInputBuilder b) updates]) =
      _$GReferralCodeOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get code;
  static Serializer<GReferralCodeOrderByInput> get serializer =>
      _$gReferralCodeOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeOrderByInput.serializer,
        json,
      );
}

abstract class GReferralCodeUpdateInput
    implements
        Built<GReferralCodeUpdateInput, GReferralCodeUpdateInputBuilder> {
  GReferralCodeUpdateInput._();

  factory GReferralCodeUpdateInput(
          [Function(GReferralCodeUpdateInputBuilder b) updates]) =
      _$GReferralCodeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  String? get code;
  static Serializer<GReferralCodeUpdateInput> get serializer =>
      _$gReferralCodeUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeUpdateInput.serializer,
        json,
      );
}

abstract class GUserRelateToOneForUpdateInput
    implements
        Built<GUserRelateToOneForUpdateInput,
            GUserRelateToOneForUpdateInputBuilder> {
  GUserRelateToOneForUpdateInput._();

  factory GUserRelateToOneForUpdateInput(
          [Function(GUserRelateToOneForUpdateInputBuilder b) updates]) =
      _$GUserRelateToOneForUpdateInput;

  GUserCreateInput? get create;
  GUserWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GUserRelateToOneForUpdateInput> get serializer =>
      _$gUserRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserRelateToOneForUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GReferralCodeUpdateArgs
    implements Built<GReferralCodeUpdateArgs, GReferralCodeUpdateArgsBuilder> {
  GReferralCodeUpdateArgs._();

  factory GReferralCodeUpdateArgs(
          [Function(GReferralCodeUpdateArgsBuilder b) updates]) =
      _$GReferralCodeUpdateArgs;

  GReferralCodeWhereUniqueInput get where;
  GReferralCodeUpdateInput get data;
  static Serializer<GReferralCodeUpdateArgs> get serializer =>
      _$gReferralCodeUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeUpdateArgs.serializer,
        json,
      );
}

abstract class GReferralCodeCreateInput
    implements
        Built<GReferralCodeCreateInput, GReferralCodeCreateInputBuilder> {
  GReferralCodeCreateInput._();

  factory GReferralCodeCreateInput(
          [Function(GReferralCodeCreateInputBuilder b) updates]) =
      _$GReferralCodeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  String? get code;
  static Serializer<GReferralCodeCreateInput> get serializer =>
      _$gReferralCodeCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralCodeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralCodeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralCodeCreateInput.serializer,
        json,
      );
}

abstract class GUserRelateToOneForCreateInput
    implements
        Built<GUserRelateToOneForCreateInput,
            GUserRelateToOneForCreateInputBuilder> {
  GUserRelateToOneForCreateInput._();

  factory GUserRelateToOneForCreateInput(
          [Function(GUserRelateToOneForCreateInputBuilder b) updates]) =
      _$GUserRelateToOneForCreateInput;

  GUserCreateInput? get create;
  GUserWhereUniqueInput? get connect;
  static Serializer<GUserRelateToOneForCreateInput> get serializer =>
      _$gUserRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserRelateToOneForCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GReferralUserWhereUniqueInput
    implements
        Built<GReferralUserWhereUniqueInput,
            GReferralUserWhereUniqueInputBuilder> {
  GReferralUserWhereUniqueInput._();

  factory GReferralUserWhereUniqueInput(
          [Function(GReferralUserWhereUniqueInputBuilder b) updates]) =
      _$GReferralUserWhereUniqueInput;

  String? get id;
  static Serializer<GReferralUserWhereUniqueInput> get serializer =>
      _$gReferralUserWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralUserWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralUserWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralUserWhereUniqueInput.serializer,
        json,
      );
}

abstract class GReferralUserWhereInput
    implements Built<GReferralUserWhereInput, GReferralUserWhereInputBuilder> {
  GReferralUserWhereInput._();

  factory GReferralUserWhereInput(
          [Function(GReferralUserWhereInputBuilder b) updates]) =
      _$GReferralUserWhereInput;

  BuiltList<GReferralUserWhereInput>? get AND;
  BuiltList<GReferralUserWhereInput>? get OR;
  BuiltList<GReferralUserWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get referrer;
  GUserWhereInput? get referee;
  static Serializer<GReferralUserWhereInput> get serializer =>
      _$gReferralUserWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralUserWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralUserWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralUserWhereInput.serializer,
        json,
      );
}

abstract class GReferralUserOrderByInput
    implements
        Built<GReferralUserOrderByInput, GReferralUserOrderByInputBuilder> {
  GReferralUserOrderByInput._();

  factory GReferralUserOrderByInput(
          [Function(GReferralUserOrderByInputBuilder b) updates]) =
      _$GReferralUserOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GReferralUserOrderByInput> get serializer =>
      _$gReferralUserOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralUserOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralUserOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralUserOrderByInput.serializer,
        json,
      );
}

abstract class GReferralUserUpdateInput
    implements
        Built<GReferralUserUpdateInput, GReferralUserUpdateInputBuilder> {
  GReferralUserUpdateInput._();

  factory GReferralUserUpdateInput(
          [Function(GReferralUserUpdateInputBuilder b) updates]) =
      _$GReferralUserUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get referrer;
  GUserRelateToOneForUpdateInput? get referee;
  static Serializer<GReferralUserUpdateInput> get serializer =>
      _$gReferralUserUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralUserUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralUserUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralUserUpdateInput.serializer,
        json,
      );
}

abstract class GReferralUserUpdateArgs
    implements Built<GReferralUserUpdateArgs, GReferralUserUpdateArgsBuilder> {
  GReferralUserUpdateArgs._();

  factory GReferralUserUpdateArgs(
          [Function(GReferralUserUpdateArgsBuilder b) updates]) =
      _$GReferralUserUpdateArgs;

  GReferralUserWhereUniqueInput get where;
  GReferralUserUpdateInput get data;
  static Serializer<GReferralUserUpdateArgs> get serializer =>
      _$gReferralUserUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralUserUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralUserUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralUserUpdateArgs.serializer,
        json,
      );
}

abstract class GReferralUserCreateInput
    implements
        Built<GReferralUserCreateInput, GReferralUserCreateInputBuilder> {
  GReferralUserCreateInput._();

  factory GReferralUserCreateInput(
          [Function(GReferralUserCreateInputBuilder b) updates]) =
      _$GReferralUserCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get referrer;
  GUserRelateToOneForCreateInput? get referee;
  static Serializer<GReferralUserCreateInput> get serializer =>
      _$gReferralUserCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReferralUserCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReferralUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReferralUserCreateInput.serializer,
        json,
      );
}

abstract class GAddressWhereUniqueInput
    implements
        Built<GAddressWhereUniqueInput, GAddressWhereUniqueInputBuilder> {
  GAddressWhereUniqueInput._();

  factory GAddressWhereUniqueInput(
          [Function(GAddressWhereUniqueInputBuilder b) updates]) =
      _$GAddressWhereUniqueInput;

  String? get id;
  static Serializer<GAddressWhereUniqueInput> get serializer =>
      _$gAddressWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressWhereUniqueInput.serializer,
        json,
      );
}

abstract class GAddressWhereInput
    implements Built<GAddressWhereInput, GAddressWhereInputBuilder> {
  GAddressWhereInput._();

  factory GAddressWhereInput([Function(GAddressWhereInputBuilder b) updates]) =
      _$GAddressWhereInput;

  BuiltList<GAddressWhereInput>? get AND;
  BuiltList<GAddressWhereInput>? get OR;
  BuiltList<GAddressWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get phoneNumber;
  GStringFilter? get pinCode;
  GStringFilter? get address;
  GStringFilter? get town;
  GStringFilter? get district;
  GStringFilter? get state;
  @BuiltValueField(wireName: 'default')
  GBooleanFilter? get Gdefault;
  GUserWhereInput? get user;
  static Serializer<GAddressWhereInput> get serializer =>
      _$gAddressWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressWhereInput.serializer,
        json,
      );
}

abstract class GAddressOrderByInput
    implements Built<GAddressOrderByInput, GAddressOrderByInputBuilder> {
  GAddressOrderByInput._();

  factory GAddressOrderByInput(
          [Function(GAddressOrderByInputBuilder b) updates]) =
      _$GAddressOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get phoneNumber;
  GOrderDirection? get pinCode;
  GOrderDirection? get address;
  GOrderDirection? get town;
  GOrderDirection? get district;
  GOrderDirection? get state;
  @BuiltValueField(wireName: 'default')
  GOrderDirection? get Gdefault;
  static Serializer<GAddressOrderByInput> get serializer =>
      _$gAddressOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressOrderByInput.serializer,
        json,
      );
}

abstract class GAddressUpdateInput
    implements Built<GAddressUpdateInput, GAddressUpdateInputBuilder> {
  GAddressUpdateInput._();

  factory GAddressUpdateInput(
      [Function(GAddressUpdateInputBuilder b) updates]) = _$GAddressUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get pinCode;
  String? get address;
  String? get town;
  String? get district;
  String? get state;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GUserRelateToOneForUpdateInput? get user;
  static Serializer<GAddressUpdateInput> get serializer =>
      _$gAddressUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressUpdateInput.serializer,
        json,
      );
}

abstract class GAddressUpdateArgs
    implements Built<GAddressUpdateArgs, GAddressUpdateArgsBuilder> {
  GAddressUpdateArgs._();

  factory GAddressUpdateArgs([Function(GAddressUpdateArgsBuilder b) updates]) =
      _$GAddressUpdateArgs;

  GAddressWhereUniqueInput get where;
  GAddressUpdateInput get data;
  static Serializer<GAddressUpdateArgs> get serializer =>
      _$gAddressUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressUpdateArgs.serializer,
        json,
      );
}

abstract class GAddressCreateInput
    implements Built<GAddressCreateInput, GAddressCreateInputBuilder> {
  GAddressCreateInput._();

  factory GAddressCreateInput(
      [Function(GAddressCreateInputBuilder b) updates]) = _$GAddressCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get pinCode;
  String? get address;
  String? get town;
  String? get district;
  String? get state;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GUserRelateToOneForCreateInput? get user;
  static Serializer<GAddressCreateInput> get serializer =>
      _$gAddressCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAddressCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressCreateInput.serializer,
        json,
      );
}

abstract class GFavoriteWhereUniqueInput
    implements
        Built<GFavoriteWhereUniqueInput, GFavoriteWhereUniqueInputBuilder> {
  GFavoriteWhereUniqueInput._();

  factory GFavoriteWhereUniqueInput(
          [Function(GFavoriteWhereUniqueInputBuilder b) updates]) =
      _$GFavoriteWhereUniqueInput;

  String? get id;
  static Serializer<GFavoriteWhereUniqueInput> get serializer =>
      _$gFavoriteWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteWhereUniqueInput.serializer,
        json,
      );
}

abstract class GFavoriteWhereInput
    implements Built<GFavoriteWhereInput, GFavoriteWhereInputBuilder> {
  GFavoriteWhereInput._();

  factory GFavoriteWhereInput(
      [Function(GFavoriteWhereInputBuilder b) updates]) = _$GFavoriteWhereInput;

  BuiltList<GFavoriteWhereInput>? get AND;
  BuiltList<GFavoriteWhereInput>? get OR;
  BuiltList<GFavoriteWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleVariantWhereInput? get vehicleVariant;
  GUserWhereInput? get user;
  static Serializer<GFavoriteWhereInput> get serializer =>
      _$gFavoriteWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteWhereInput.serializer,
        json,
      );
}

abstract class GFavoriteOrderByInput
    implements Built<GFavoriteOrderByInput, GFavoriteOrderByInputBuilder> {
  GFavoriteOrderByInput._();

  factory GFavoriteOrderByInput(
          [Function(GFavoriteOrderByInputBuilder b) updates]) =
      _$GFavoriteOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GFavoriteOrderByInput> get serializer =>
      _$gFavoriteOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteOrderByInput.serializer,
        json,
      );
}

abstract class GFavoriteUpdateInput
    implements Built<GFavoriteUpdateInput, GFavoriteUpdateInputBuilder> {
  GFavoriteUpdateInput._();

  factory GFavoriteUpdateInput(
          [Function(GFavoriteUpdateInputBuilder b) updates]) =
      _$GFavoriteUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GUserRelateToOneForUpdateInput? get user;
  static Serializer<GFavoriteUpdateInput> get serializer =>
      _$gFavoriteUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantRelateToOneForUpdateInput
    implements
        Built<GVehicleVariantRelateToOneForUpdateInput,
            GVehicleVariantRelateToOneForUpdateInputBuilder> {
  GVehicleVariantRelateToOneForUpdateInput._();

  factory GVehicleVariantRelateToOneForUpdateInput(
      [Function(GVehicleVariantRelateToOneForUpdateInputBuilder b)
          updates]) = _$GVehicleVariantRelateToOneForUpdateInput;

  GVehicleVariantCreateInput? get create;
  GVehicleVariantWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GVehicleVariantRelateToOneForUpdateInput> get serializer =>
      _$gVehicleVariantRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GFavoriteUpdateArgs
    implements Built<GFavoriteUpdateArgs, GFavoriteUpdateArgsBuilder> {
  GFavoriteUpdateArgs._();

  factory GFavoriteUpdateArgs(
      [Function(GFavoriteUpdateArgsBuilder b) updates]) = _$GFavoriteUpdateArgs;

  GFavoriteWhereUniqueInput get where;
  GFavoriteUpdateInput get data;
  static Serializer<GFavoriteUpdateArgs> get serializer =>
      _$gFavoriteUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteUpdateArgs.serializer,
        json,
      );
}

abstract class GFavoriteCreateInput
    implements Built<GFavoriteCreateInput, GFavoriteCreateInputBuilder> {
  GFavoriteCreateInput._();

  factory GFavoriteCreateInput(
          [Function(GFavoriteCreateInputBuilder b) updates]) =
      _$GFavoriteCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GUserRelateToOneForCreateInput? get user;
  static Serializer<GFavoriteCreateInput> get serializer =>
      _$gFavoriteCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFavoriteCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFavoriteCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFavoriteCreateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantRelateToOneForCreateInput
    implements
        Built<GVehicleVariantRelateToOneForCreateInput,
            GVehicleVariantRelateToOneForCreateInputBuilder> {
  GVehicleVariantRelateToOneForCreateInput._();

  factory GVehicleVariantRelateToOneForCreateInput(
      [Function(GVehicleVariantRelateToOneForCreateInputBuilder b)
          updates]) = _$GVehicleVariantRelateToOneForCreateInput;

  GVehicleVariantCreateInput? get create;
  GVehicleVariantWhereUniqueInput? get connect;
  static Serializer<GVehicleVariantRelateToOneForCreateInput> get serializer =>
      _$gVehicleVariantRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GCartItemWhereUniqueInput
    implements
        Built<GCartItemWhereUniqueInput, GCartItemWhereUniqueInputBuilder> {
  GCartItemWhereUniqueInput._();

  factory GCartItemWhereUniqueInput(
          [Function(GCartItemWhereUniqueInputBuilder b) updates]) =
      _$GCartItemWhereUniqueInput;

  String? get id;
  static Serializer<GCartItemWhereUniqueInput> get serializer =>
      _$gCartItemWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemWhereUniqueInput.serializer,
        json,
      );
}

abstract class GCartItemWhereInput
    implements Built<GCartItemWhereInput, GCartItemWhereInputBuilder> {
  GCartItemWhereInput._();

  factory GCartItemWhereInput(
      [Function(GCartItemWhereInputBuilder b) updates]) = _$GCartItemWhereInput;

  BuiltList<GCartItemWhereInput>? get AND;
  BuiltList<GCartItemWhereInput>? get OR;
  BuiltList<GCartItemWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleDealerWhereInput? get dealer;
  GUserWhereInput? get user;
  static Serializer<GCartItemWhereInput> get serializer =>
      _$gCartItemWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemWhereInput.serializer,
        json,
      );
}

abstract class GCartItemOrderByInput
    implements Built<GCartItemOrderByInput, GCartItemOrderByInputBuilder> {
  GCartItemOrderByInput._();

  factory GCartItemOrderByInput(
          [Function(GCartItemOrderByInputBuilder b) updates]) =
      _$GCartItemOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GCartItemOrderByInput> get serializer =>
      _$gCartItemOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemOrderByInput.serializer,
        json,
      );
}

abstract class GCartItemUpdateInput
    implements Built<GCartItemUpdateInput, GCartItemUpdateInputBuilder> {
  GCartItemUpdateInput._();

  factory GCartItemUpdateInput(
          [Function(GCartItemUpdateInputBuilder b) updates]) =
      _$GCartItemUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleDealerRelateToOneForUpdateInput? get dealer;
  GUserRelateToOneForUpdateInput? get user;
  static Serializer<GCartItemUpdateInput> get serializer =>
      _$gCartItemUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerRelateToOneForUpdateInput
    implements
        Built<GVehicleDealerRelateToOneForUpdateInput,
            GVehicleDealerRelateToOneForUpdateInputBuilder> {
  GVehicleDealerRelateToOneForUpdateInput._();

  factory GVehicleDealerRelateToOneForUpdateInput(
      [Function(GVehicleDealerRelateToOneForUpdateInputBuilder b)
          updates]) = _$GVehicleDealerRelateToOneForUpdateInput;

  GVehicleDealerCreateInput? get create;
  GVehicleDealerWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GVehicleDealerRelateToOneForUpdateInput> get serializer =>
      _$gVehicleDealerRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GCartItemUpdateArgs
    implements Built<GCartItemUpdateArgs, GCartItemUpdateArgsBuilder> {
  GCartItemUpdateArgs._();

  factory GCartItemUpdateArgs(
      [Function(GCartItemUpdateArgsBuilder b) updates]) = _$GCartItemUpdateArgs;

  GCartItemWhereUniqueInput get where;
  GCartItemUpdateInput get data;
  static Serializer<GCartItemUpdateArgs> get serializer =>
      _$gCartItemUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemUpdateArgs.serializer,
        json,
      );
}

abstract class GCartItemCreateInput
    implements Built<GCartItemCreateInput, GCartItemCreateInputBuilder> {
  GCartItemCreateInput._();

  factory GCartItemCreateInput(
          [Function(GCartItemCreateInputBuilder b) updates]) =
      _$GCartItemCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleDealerRelateToOneForCreateInput? get dealer;
  GUserRelateToOneForCreateInput? get user;
  static Serializer<GCartItemCreateInput> get serializer =>
      _$gCartItemCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCartItemCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCartItemCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCartItemCreateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerRelateToOneForCreateInput
    implements
        Built<GVehicleDealerRelateToOneForCreateInput,
            GVehicleDealerRelateToOneForCreateInputBuilder> {
  GVehicleDealerRelateToOneForCreateInput._();

  factory GVehicleDealerRelateToOneForCreateInput(
      [Function(GVehicleDealerRelateToOneForCreateInputBuilder b)
          updates]) = _$GVehicleDealerRelateToOneForCreateInput;

  GVehicleDealerCreateInput? get create;
  GVehicleDealerWhereUniqueInput? get connect;
  static Serializer<GVehicleDealerRelateToOneForCreateInput> get serializer =>
      _$gVehicleDealerRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleTypeWhereUniqueInput
    implements
        Built<GVehicleTypeWhereUniqueInput,
            GVehicleTypeWhereUniqueInputBuilder> {
  GVehicleTypeWhereUniqueInput._();

  factory GVehicleTypeWhereUniqueInput(
          [Function(GVehicleTypeWhereUniqueInputBuilder b) updates]) =
      _$GVehicleTypeWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleTypeWhereUniqueInput> get serializer =>
      _$gVehicleTypeWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleTypeWhereInput
    implements Built<GVehicleTypeWhereInput, GVehicleTypeWhereInputBuilder> {
  GVehicleTypeWhereInput._();

  factory GVehicleTypeWhereInput(
          [Function(GVehicleTypeWhereInputBuilder b) updates]) =
      _$GVehicleTypeWhereInput;

  BuiltList<GVehicleTypeWhereInput>? get AND;
  BuiltList<GVehicleTypeWhereInput>? get OR;
  BuiltList<GVehicleTypeWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  static Serializer<GVehicleTypeWhereInput> get serializer =>
      _$gVehicleTypeWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeWhereInput.serializer,
        json,
      );
}

abstract class GVehicleTypeOrderByInput
    implements
        Built<GVehicleTypeOrderByInput, GVehicleTypeOrderByInputBuilder> {
  GVehicleTypeOrderByInput._();

  factory GVehicleTypeOrderByInput(
          [Function(GVehicleTypeOrderByInputBuilder b) updates]) =
      _$GVehicleTypeOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GVehicleTypeOrderByInput> get serializer =>
      _$gVehicleTypeOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleTypeUpdateInput
    implements Built<GVehicleTypeUpdateInput, GVehicleTypeUpdateInputBuilder> {
  GVehicleTypeUpdateInput._();

  factory GVehicleTypeUpdateInput(
          [Function(GVehicleTypeUpdateInputBuilder b) updates]) =
      _$GVehicleTypeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GVehicleTypeUpdateInput> get serializer =>
      _$gVehicleTypeUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleTypeUpdateArgs
    implements Built<GVehicleTypeUpdateArgs, GVehicleTypeUpdateArgsBuilder> {
  GVehicleTypeUpdateArgs._();

  factory GVehicleTypeUpdateArgs(
          [Function(GVehicleTypeUpdateArgsBuilder b) updates]) =
      _$GVehicleTypeUpdateArgs;

  GVehicleTypeWhereUniqueInput get where;
  GVehicleTypeUpdateInput get data;
  static Serializer<GVehicleTypeUpdateArgs> get serializer =>
      _$gVehicleTypeUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleTypeCreateInput
    implements Built<GVehicleTypeCreateInput, GVehicleTypeCreateInputBuilder> {
  GVehicleTypeCreateInput._();

  factory GVehicleTypeCreateInput(
          [Function(GVehicleTypeCreateInputBuilder b) updates]) =
      _$GVehicleTypeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GVehicleTypeCreateInput> get serializer =>
      _$gVehicleTypeCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeCreateInput.serializer,
        json,
      );
}

abstract class GBrandWhereUniqueInput
    implements Built<GBrandWhereUniqueInput, GBrandWhereUniqueInputBuilder> {
  GBrandWhereUniqueInput._();

  factory GBrandWhereUniqueInput(
          [Function(GBrandWhereUniqueInputBuilder b) updates]) =
      _$GBrandWhereUniqueInput;

  String? get id;
  static Serializer<GBrandWhereUniqueInput> get serializer =>
      _$gBrandWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandWhereUniqueInput.serializer,
        json,
      );
}

abstract class GBrandWhereInput
    implements Built<GBrandWhereInput, GBrandWhereInputBuilder> {
  GBrandWhereInput._();

  factory GBrandWhereInput([Function(GBrandWhereInputBuilder b) updates]) =
      _$GBrandWhereInput;

  BuiltList<GBrandWhereInput>? get AND;
  BuiltList<GBrandWhereInput>? get OR;
  BuiltList<GBrandWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  static Serializer<GBrandWhereInput> get serializer =>
      _$gBrandWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandWhereInput.serializer,
        json,
      );
}

abstract class GBrandOrderByInput
    implements Built<GBrandOrderByInput, GBrandOrderByInputBuilder> {
  GBrandOrderByInput._();

  factory GBrandOrderByInput([Function(GBrandOrderByInputBuilder b) updates]) =
      _$GBrandOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  static Serializer<GBrandOrderByInput> get serializer =>
      _$gBrandOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandOrderByInput.serializer,
        json,
      );
}

abstract class GBrandUpdateInput
    implements Built<GBrandUpdateInput, GBrandUpdateInputBuilder> {
  GBrandUpdateInput._();

  factory GBrandUpdateInput([Function(GBrandUpdateInputBuilder b) updates]) =
      _$GBrandUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  static Serializer<GBrandUpdateInput> get serializer =>
      _$gBrandUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandUpdateInput.serializer,
        json,
      );
}

abstract class GBrandUpdateArgs
    implements Built<GBrandUpdateArgs, GBrandUpdateArgsBuilder> {
  GBrandUpdateArgs._();

  factory GBrandUpdateArgs([Function(GBrandUpdateArgsBuilder b) updates]) =
      _$GBrandUpdateArgs;

  GBrandWhereUniqueInput get where;
  GBrandUpdateInput get data;
  static Serializer<GBrandUpdateArgs> get serializer =>
      _$gBrandUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandUpdateArgs.serializer,
        json,
      );
}

abstract class GBrandCreateInput
    implements Built<GBrandCreateInput, GBrandCreateInputBuilder> {
  GBrandCreateInput._();

  factory GBrandCreateInput([Function(GBrandCreateInputBuilder b) updates]) =
      _$GBrandCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  static Serializer<GBrandCreateInput> get serializer =>
      _$gBrandCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandCreateInput.serializer,
        json,
      );
}

abstract class GSpecificationWhereUniqueInput
    implements
        Built<GSpecificationWhereUniqueInput,
            GSpecificationWhereUniqueInputBuilder> {
  GSpecificationWhereUniqueInput._();

  factory GSpecificationWhereUniqueInput(
          [Function(GSpecificationWhereUniqueInputBuilder b) updates]) =
      _$GSpecificationWhereUniqueInput;

  String? get id;
  String? get name;
  static Serializer<GSpecificationWhereUniqueInput> get serializer =>
      _$gSpecificationWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationWhereUniqueInput.serializer,
        json,
      );
}

abstract class GSpecificationWhereInput
    implements
        Built<GSpecificationWhereInput, GSpecificationWhereInputBuilder> {
  GSpecificationWhereInput._();

  factory GSpecificationWhereInput(
          [Function(GSpecificationWhereInputBuilder b) updates]) =
      _$GSpecificationWhereInput;

  BuiltList<GSpecificationWhereInput>? get AND;
  BuiltList<GSpecificationWhereInput>? get OR;
  BuiltList<GSpecificationWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  GStringFilter? get unit;
  static Serializer<GSpecificationWhereInput> get serializer =>
      _$gSpecificationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationWhereInput.serializer,
        json,
      );
}

abstract class GSpecificationOrderByInput
    implements
        Built<GSpecificationOrderByInput, GSpecificationOrderByInputBuilder> {
  GSpecificationOrderByInput._();

  factory GSpecificationOrderByInput(
          [Function(GSpecificationOrderByInputBuilder b) updates]) =
      _$GSpecificationOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  GOrderDirection? get unit;
  static Serializer<GSpecificationOrderByInput> get serializer =>
      _$gSpecificationOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationOrderByInput.serializer,
        json,
      );
}

abstract class GSpecificationUpdateInput
    implements
        Built<GSpecificationUpdateInput, GSpecificationUpdateInputBuilder> {
  GSpecificationUpdateInput._();

  factory GSpecificationUpdateInput(
          [Function(GSpecificationUpdateInputBuilder b) updates]) =
      _$GSpecificationUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  String? get unit;
  static Serializer<GSpecificationUpdateInput> get serializer =>
      _$gSpecificationUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationUpdateInput.serializer,
        json,
      );
}

abstract class GSpecificationUpdateArgs
    implements
        Built<GSpecificationUpdateArgs, GSpecificationUpdateArgsBuilder> {
  GSpecificationUpdateArgs._();

  factory GSpecificationUpdateArgs(
          [Function(GSpecificationUpdateArgsBuilder b) updates]) =
      _$GSpecificationUpdateArgs;

  GSpecificationWhereUniqueInput get where;
  GSpecificationUpdateInput get data;
  static Serializer<GSpecificationUpdateArgs> get serializer =>
      _$gSpecificationUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationUpdateArgs.serializer,
        json,
      );
}

abstract class GSpecificationCreateInput
    implements
        Built<GSpecificationCreateInput, GSpecificationCreateInputBuilder> {
  GSpecificationCreateInput._();

  factory GSpecificationCreateInput(
          [Function(GSpecificationCreateInputBuilder b) updates]) =
      _$GSpecificationCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  String? get unit;
  static Serializer<GSpecificationCreateInput> get serializer =>
      _$gSpecificationCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCreateInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryWhereUniqueInput
    implements
        Built<GSpecificationCategoryWhereUniqueInput,
            GSpecificationCategoryWhereUniqueInputBuilder> {
  GSpecificationCategoryWhereUniqueInput._();

  factory GSpecificationCategoryWhereUniqueInput(
          [Function(GSpecificationCategoryWhereUniqueInputBuilder b) updates]) =
      _$GSpecificationCategoryWhereUniqueInput;

  String? get id;
  String? get name;
  static Serializer<GSpecificationCategoryWhereUniqueInput> get serializer =>
      _$gSpecificationCategoryWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryWhereUniqueInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryWhereInput
    implements
        Built<GSpecificationCategoryWhereInput,
            GSpecificationCategoryWhereInputBuilder> {
  GSpecificationCategoryWhereInput._();

  factory GSpecificationCategoryWhereInput(
          [Function(GSpecificationCategoryWhereInputBuilder b) updates]) =
      _$GSpecificationCategoryWhereInput;

  BuiltList<GSpecificationCategoryWhereInput>? get AND;
  BuiltList<GSpecificationCategoryWhereInput>? get OR;
  BuiltList<GSpecificationCategoryWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  static Serializer<GSpecificationCategoryWhereInput> get serializer =>
      _$gSpecificationCategoryWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryWhereInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryOrderByInput
    implements
        Built<GSpecificationCategoryOrderByInput,
            GSpecificationCategoryOrderByInputBuilder> {
  GSpecificationCategoryOrderByInput._();

  factory GSpecificationCategoryOrderByInput(
          [Function(GSpecificationCategoryOrderByInputBuilder b) updates]) =
      _$GSpecificationCategoryOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GSpecificationCategoryOrderByInput> get serializer =>
      _$gSpecificationCategoryOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryOrderByInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryUpdateInput
    implements
        Built<GSpecificationCategoryUpdateInput,
            GSpecificationCategoryUpdateInputBuilder> {
  GSpecificationCategoryUpdateInput._();

  factory GSpecificationCategoryUpdateInput(
          [Function(GSpecificationCategoryUpdateInputBuilder b) updates]) =
      _$GSpecificationCategoryUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GSpecificationCategoryUpdateInput> get serializer =>
      _$gSpecificationCategoryUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryUpdateInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryUpdateArgs
    implements
        Built<GSpecificationCategoryUpdateArgs,
            GSpecificationCategoryUpdateArgsBuilder> {
  GSpecificationCategoryUpdateArgs._();

  factory GSpecificationCategoryUpdateArgs(
          [Function(GSpecificationCategoryUpdateArgsBuilder b) updates]) =
      _$GSpecificationCategoryUpdateArgs;

  GSpecificationCategoryWhereUniqueInput get where;
  GSpecificationCategoryUpdateInput get data;
  static Serializer<GSpecificationCategoryUpdateArgs> get serializer =>
      _$gSpecificationCategoryUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryUpdateArgs.serializer,
        json,
      );
}

abstract class GSpecificationCategoryCreateInput
    implements
        Built<GSpecificationCategoryCreateInput,
            GSpecificationCategoryCreateInputBuilder> {
  GSpecificationCategoryCreateInput._();

  factory GSpecificationCategoryCreateInput(
          [Function(GSpecificationCategoryCreateInputBuilder b) updates]) =
      _$GSpecificationCategoryCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GSpecificationCategoryCreateInput> get serializer =>
      _$gSpecificationCategoryCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryCreateInput.serializer,
        json,
      );
}

abstract class GTestDriveDealerWhereUniqueInput
    implements
        Built<GTestDriveDealerWhereUniqueInput,
            GTestDriveDealerWhereUniqueInputBuilder> {
  GTestDriveDealerWhereUniqueInput._();

  factory GTestDriveDealerWhereUniqueInput(
          [Function(GTestDriveDealerWhereUniqueInputBuilder b) updates]) =
      _$GTestDriveDealerWhereUniqueInput;

  String? get id;
  static Serializer<GTestDriveDealerWhereUniqueInput> get serializer =>
      _$gTestDriveDealerWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GTestDriveDealerWhereInput
    implements
        Built<GTestDriveDealerWhereInput, GTestDriveDealerWhereInputBuilder> {
  GTestDriveDealerWhereInput._();

  factory GTestDriveDealerWhereInput(
          [Function(GTestDriveDealerWhereInputBuilder b) updates]) =
      _$GTestDriveDealerWhereInput;

  BuiltList<GTestDriveDealerWhereInput>? get AND;
  BuiltList<GTestDriveDealerWhereInput>? get OR;
  BuiltList<GTestDriveDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GVehicleVariantWhereInput? get vehicleVariant;
  GVehicleColorWhereInput? get vehicleColor;
  GIntFilter? get price;
  GBooleanFilter? get available;
  static Serializer<GTestDriveDealerWhereInput> get serializer =>
      _$gTestDriveDealerWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerWhereInput.serializer,
        json,
      );
}

abstract class GIntFilter implements Built<GIntFilter, GIntFilterBuilder> {
  GIntFilter._();

  factory GIntFilter([Function(GIntFilterBuilder b) updates]) = _$GIntFilter;

  int? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<int>? get Gin;
  BuiltList<int>? get notIn;
  int? get lt;
  int? get lte;
  int? get gt;
  int? get gte;
  GIntFilter? get not;
  static Serializer<GIntFilter> get serializer => _$gIntFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GIntFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GIntFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GIntFilter.serializer,
        json,
      );
}

abstract class GTestDriveDealerOrderByInput
    implements
        Built<GTestDriveDealerOrderByInput,
            GTestDriveDealerOrderByInputBuilder> {
  GTestDriveDealerOrderByInput._();

  factory GTestDriveDealerOrderByInput(
          [Function(GTestDriveDealerOrderByInputBuilder b) updates]) =
      _$GTestDriveDealerOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get price;
  GOrderDirection? get available;
  static Serializer<GTestDriveDealerOrderByInput> get serializer =>
      _$gTestDriveDealerOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerOrderByInput.serializer,
        json,
      );
}

abstract class GTestDriveDealerUpdateInput
    implements
        Built<GTestDriveDealerUpdateInput, GTestDriveDealerUpdateInputBuilder> {
  GTestDriveDealerUpdateInput._();

  factory GTestDriveDealerUpdateInput(
          [Function(GTestDriveDealerUpdateInputBuilder b) updates]) =
      _$GTestDriveDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GVehicleColorRelateToOneForUpdateInput? get vehicleColor;
  int? get price;
  bool? get available;
  static Serializer<GTestDriveDealerUpdateInput> get serializer =>
      _$gTestDriveDealerUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerUpdateInput.serializer,
        json,
      );
}

abstract class GDealerRelateToOneForUpdateInput
    implements
        Built<GDealerRelateToOneForUpdateInput,
            GDealerRelateToOneForUpdateInputBuilder> {
  GDealerRelateToOneForUpdateInput._();

  factory GDealerRelateToOneForUpdateInput(
          [Function(GDealerRelateToOneForUpdateInputBuilder b) updates]) =
      _$GDealerRelateToOneForUpdateInput;

  GDealerCreateInput? get create;
  GDealerWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GDealerRelateToOneForUpdateInput> get serializer =>
      _$gDealerRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleColorRelateToOneForUpdateInput
    implements
        Built<GVehicleColorRelateToOneForUpdateInput,
            GVehicleColorRelateToOneForUpdateInputBuilder> {
  GVehicleColorRelateToOneForUpdateInput._();

  factory GVehicleColorRelateToOneForUpdateInput(
          [Function(GVehicleColorRelateToOneForUpdateInputBuilder b) updates]) =
      _$GVehicleColorRelateToOneForUpdateInput;

  GVehicleColorCreateInput? get create;
  GVehicleColorWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GVehicleColorRelateToOneForUpdateInput> get serializer =>
      _$gVehicleColorRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GTestDriveDealerUpdateArgs
    implements
        Built<GTestDriveDealerUpdateArgs, GTestDriveDealerUpdateArgsBuilder> {
  GTestDriveDealerUpdateArgs._();

  factory GTestDriveDealerUpdateArgs(
          [Function(GTestDriveDealerUpdateArgsBuilder b) updates]) =
      _$GTestDriveDealerUpdateArgs;

  GTestDriveDealerWhereUniqueInput get where;
  GTestDriveDealerUpdateInput get data;
  static Serializer<GTestDriveDealerUpdateArgs> get serializer =>
      _$gTestDriveDealerUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerUpdateArgs.serializer,
        json,
      );
}

abstract class GTestDriveDealerCreateInput
    implements
        Built<GTestDriveDealerCreateInput, GTestDriveDealerCreateInputBuilder> {
  GTestDriveDealerCreateInput._();

  factory GTestDriveDealerCreateInput(
          [Function(GTestDriveDealerCreateInputBuilder b) updates]) =
      _$GTestDriveDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GVehicleColorRelateToOneForCreateInput? get vehicleColor;
  int? get price;
  bool? get available;
  static Serializer<GTestDriveDealerCreateInput> get serializer =>
      _$gTestDriveDealerCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerCreateInput.serializer,
        json,
      );
}

abstract class GDealerRelateToOneForCreateInput
    implements
        Built<GDealerRelateToOneForCreateInput,
            GDealerRelateToOneForCreateInputBuilder> {
  GDealerRelateToOneForCreateInput._();

  factory GDealerRelateToOneForCreateInput(
          [Function(GDealerRelateToOneForCreateInputBuilder b) updates]) =
      _$GDealerRelateToOneForCreateInput;

  GDealerCreateInput? get create;
  GDealerWhereUniqueInput? get connect;
  static Serializer<GDealerRelateToOneForCreateInput> get serializer =>
      _$gDealerRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleColorRelateToOneForCreateInput
    implements
        Built<GVehicleColorRelateToOneForCreateInput,
            GVehicleColorRelateToOneForCreateInputBuilder> {
  GVehicleColorRelateToOneForCreateInput._();

  factory GVehicleColorRelateToOneForCreateInput(
          [Function(GVehicleColorRelateToOneForCreateInputBuilder b) updates]) =
      _$GVehicleColorRelateToOneForCreateInput;

  GVehicleColorCreateInput? get create;
  GVehicleColorWhereUniqueInput? get connect;
  static Serializer<GVehicleColorRelateToOneForCreateInput> get serializer =>
      _$gVehicleColorRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleWhereUniqueInput
    implements
        Built<GVehicleWhereUniqueInput, GVehicleWhereUniqueInputBuilder> {
  GVehicleWhereUniqueInput._();

  factory GVehicleWhereUniqueInput(
          [Function(GVehicleWhereUniqueInputBuilder b) updates]) =
      _$GVehicleWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleWhereUniqueInput> get serializer =>
      _$gVehicleWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleWhereInput
    implements Built<GVehicleWhereInput, GVehicleWhereInputBuilder> {
  GVehicleWhereInput._();

  factory GVehicleWhereInput([Function(GVehicleWhereInputBuilder b) updates]) =
      _$GVehicleWhereInput;

  BuiltList<GVehicleWhereInput>? get AND;
  BuiltList<GVehicleWhereInput>? get OR;
  BuiltList<GVehicleWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  GVehicleTypeWhereInput? get type;
  GBrandWhereInput? get brand;
  GVehicleVariantManyRelationFilter? get variants;
  GVehicleSpecificationManyRelationFilter? get specifications;
  GVehicleColorManyRelationFilter? get colors;
  static Serializer<GVehicleWhereInput> get serializer =>
      _$gVehicleWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleWhereInput.serializer,
        json,
      );
}

abstract class GVehicleVariantManyRelationFilter
    implements
        Built<GVehicleVariantManyRelationFilter,
            GVehicleVariantManyRelationFilterBuilder> {
  GVehicleVariantManyRelationFilter._();

  factory GVehicleVariantManyRelationFilter(
          [Function(GVehicleVariantManyRelationFilterBuilder b) updates]) =
      _$GVehicleVariantManyRelationFilter;

  GVehicleVariantWhereInput? get every;
  GVehicleVariantWhereInput? get some;
  GVehicleVariantWhereInput? get none;
  static Serializer<GVehicleVariantManyRelationFilter> get serializer =>
      _$gVehicleVariantManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleSpecificationManyRelationFilter
    implements
        Built<GVehicleSpecificationManyRelationFilter,
            GVehicleSpecificationManyRelationFilterBuilder> {
  GVehicleSpecificationManyRelationFilter._();

  factory GVehicleSpecificationManyRelationFilter(
      [Function(GVehicleSpecificationManyRelationFilterBuilder b)
          updates]) = _$GVehicleSpecificationManyRelationFilter;

  GVehicleSpecificationWhereInput? get every;
  GVehicleSpecificationWhereInput? get some;
  GVehicleSpecificationWhereInput? get none;
  static Serializer<GVehicleSpecificationManyRelationFilter> get serializer =>
      _$gVehicleSpecificationManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleColorManyRelationFilter
    implements
        Built<GVehicleColorManyRelationFilter,
            GVehicleColorManyRelationFilterBuilder> {
  GVehicleColorManyRelationFilter._();

  factory GVehicleColorManyRelationFilter(
          [Function(GVehicleColorManyRelationFilterBuilder b) updates]) =
      _$GVehicleColorManyRelationFilter;

  GVehicleColorWhereInput? get every;
  GVehicleColorWhereInput? get some;
  GVehicleColorWhereInput? get none;
  static Serializer<GVehicleColorManyRelationFilter> get serializer =>
      _$gVehicleColorManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleOrderByInput
    implements Built<GVehicleOrderByInput, GVehicleOrderByInputBuilder> {
  GVehicleOrderByInput._();

  factory GVehicleOrderByInput(
          [Function(GVehicleOrderByInputBuilder b) updates]) =
      _$GVehicleOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GVehicleOrderByInput> get serializer =>
      _$gVehicleOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleUpdateInput
    implements Built<GVehicleUpdateInput, GVehicleUpdateInputBuilder> {
  GVehicleUpdateInput._();

  factory GVehicleUpdateInput(
      [Function(GVehicleUpdateInputBuilder b) updates]) = _$GVehicleUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  GVehicleTypeRelateToOneForUpdateInput? get type;
  GBrandRelateToOneForUpdateInput? get brand;
  GVehicleVariantRelateToManyForUpdateInput? get variants;
  GVehicleSpecificationRelateToManyForUpdateInput? get specifications;
  GVehicleColorRelateToManyForUpdateInput? get colors;
  static Serializer<GVehicleUpdateInput> get serializer =>
      _$gVehicleUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleTypeRelateToOneForUpdateInput
    implements
        Built<GVehicleTypeRelateToOneForUpdateInput,
            GVehicleTypeRelateToOneForUpdateInputBuilder> {
  GVehicleTypeRelateToOneForUpdateInput._();

  factory GVehicleTypeRelateToOneForUpdateInput(
          [Function(GVehicleTypeRelateToOneForUpdateInputBuilder b) updates]) =
      _$GVehicleTypeRelateToOneForUpdateInput;

  GVehicleTypeCreateInput? get create;
  GVehicleTypeWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GVehicleTypeRelateToOneForUpdateInput> get serializer =>
      _$gVehicleTypeRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GBrandRelateToOneForUpdateInput
    implements
        Built<GBrandRelateToOneForUpdateInput,
            GBrandRelateToOneForUpdateInputBuilder> {
  GBrandRelateToOneForUpdateInput._();

  factory GBrandRelateToOneForUpdateInput(
          [Function(GBrandRelateToOneForUpdateInputBuilder b) updates]) =
      _$GBrandRelateToOneForUpdateInput;

  GBrandCreateInput? get create;
  GBrandWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GBrandRelateToOneForUpdateInput> get serializer =>
      _$gBrandRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandRelateToOneForUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantRelateToManyForUpdateInput
    implements
        Built<GVehicleVariantRelateToManyForUpdateInput,
            GVehicleVariantRelateToManyForUpdateInputBuilder> {
  GVehicleVariantRelateToManyForUpdateInput._();

  factory GVehicleVariantRelateToManyForUpdateInput(
      [Function(GVehicleVariantRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleVariantRelateToManyForUpdateInput;

  BuiltList<GVehicleVariantWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleVariantWhereUniqueInput>? get set;
  BuiltList<GVehicleVariantCreateInput>? get create;
  BuiltList<GVehicleVariantWhereUniqueInput>? get connect;
  static Serializer<GVehicleVariantRelateToManyForUpdateInput> get serializer =>
      _$gVehicleVariantRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationRelateToManyForUpdateInput
    implements
        Built<GVehicleSpecificationRelateToManyForUpdateInput,
            GVehicleSpecificationRelateToManyForUpdateInputBuilder> {
  GVehicleSpecificationRelateToManyForUpdateInput._();

  factory GVehicleSpecificationRelateToManyForUpdateInput(
      [Function(GVehicleSpecificationRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleSpecificationRelateToManyForUpdateInput;

  BuiltList<GVehicleSpecificationWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleSpecificationWhereUniqueInput>? get set;
  BuiltList<GVehicleSpecificationCreateInput>? get create;
  BuiltList<GVehicleSpecificationWhereUniqueInput>? get connect;
  static Serializer<GVehicleSpecificationRelateToManyForUpdateInput>
      get serializer =>
          _$gVehicleSpecificationRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleColorRelateToManyForUpdateInput
    implements
        Built<GVehicleColorRelateToManyForUpdateInput,
            GVehicleColorRelateToManyForUpdateInputBuilder> {
  GVehicleColorRelateToManyForUpdateInput._();

  factory GVehicleColorRelateToManyForUpdateInput(
      [Function(GVehicleColorRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleColorRelateToManyForUpdateInput;

  BuiltList<GVehicleColorWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleColorWhereUniqueInput>? get set;
  BuiltList<GVehicleColorCreateInput>? get create;
  BuiltList<GVehicleColorWhereUniqueInput>? get connect;
  static Serializer<GVehicleColorRelateToManyForUpdateInput> get serializer =>
      _$gVehicleColorRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleUpdateArgs
    implements Built<GVehicleUpdateArgs, GVehicleUpdateArgsBuilder> {
  GVehicleUpdateArgs._();

  factory GVehicleUpdateArgs([Function(GVehicleUpdateArgsBuilder b) updates]) =
      _$GVehicleUpdateArgs;

  GVehicleWhereUniqueInput get where;
  GVehicleUpdateInput get data;
  static Serializer<GVehicleUpdateArgs> get serializer =>
      _$gVehicleUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleCreateInput
    implements Built<GVehicleCreateInput, GVehicleCreateInputBuilder> {
  GVehicleCreateInput._();

  factory GVehicleCreateInput(
      [Function(GVehicleCreateInputBuilder b) updates]) = _$GVehicleCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  GVehicleTypeRelateToOneForCreateInput? get type;
  GBrandRelateToOneForCreateInput? get brand;
  GVehicleVariantRelateToManyForCreateInput? get variants;
  GVehicleSpecificationRelateToManyForCreateInput? get specifications;
  GVehicleColorRelateToManyForCreateInput? get colors;
  static Serializer<GVehicleCreateInput> get serializer =>
      _$gVehicleCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleCreateInput.serializer,
        json,
      );
}

abstract class GVehicleTypeRelateToOneForCreateInput
    implements
        Built<GVehicleTypeRelateToOneForCreateInput,
            GVehicleTypeRelateToOneForCreateInputBuilder> {
  GVehicleTypeRelateToOneForCreateInput._();

  factory GVehicleTypeRelateToOneForCreateInput(
          [Function(GVehicleTypeRelateToOneForCreateInputBuilder b) updates]) =
      _$GVehicleTypeRelateToOneForCreateInput;

  GVehicleTypeCreateInput? get create;
  GVehicleTypeWhereUniqueInput? get connect;
  static Serializer<GVehicleTypeRelateToOneForCreateInput> get serializer =>
      _$gVehicleTypeRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleTypeRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleTypeRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleTypeRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GBrandRelateToOneForCreateInput
    implements
        Built<GBrandRelateToOneForCreateInput,
            GBrandRelateToOneForCreateInputBuilder> {
  GBrandRelateToOneForCreateInput._();

  factory GBrandRelateToOneForCreateInput(
          [Function(GBrandRelateToOneForCreateInputBuilder b) updates]) =
      _$GBrandRelateToOneForCreateInput;

  GBrandCreateInput? get create;
  GBrandWhereUniqueInput? get connect;
  static Serializer<GBrandRelateToOneForCreateInput> get serializer =>
      _$gBrandRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBrandRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBrandRelateToOneForCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBrandRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantRelateToManyForCreateInput
    implements
        Built<GVehicleVariantRelateToManyForCreateInput,
            GVehicleVariantRelateToManyForCreateInputBuilder> {
  GVehicleVariantRelateToManyForCreateInput._();

  factory GVehicleVariantRelateToManyForCreateInput(
      [Function(GVehicleVariantRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleVariantRelateToManyForCreateInput;

  BuiltList<GVehicleVariantCreateInput>? get create;
  BuiltList<GVehicleVariantWhereUniqueInput>? get connect;
  static Serializer<GVehicleVariantRelateToManyForCreateInput> get serializer =>
      _$gVehicleVariantRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationRelateToManyForCreateInput
    implements
        Built<GVehicleSpecificationRelateToManyForCreateInput,
            GVehicleSpecificationRelateToManyForCreateInputBuilder> {
  GVehicleSpecificationRelateToManyForCreateInput._();

  factory GVehicleSpecificationRelateToManyForCreateInput(
      [Function(GVehicleSpecificationRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleSpecificationRelateToManyForCreateInput;

  BuiltList<GVehicleSpecificationCreateInput>? get create;
  BuiltList<GVehicleSpecificationWhereUniqueInput>? get connect;
  static Serializer<GVehicleSpecificationRelateToManyForCreateInput>
      get serializer =>
          _$gVehicleSpecificationRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleColorRelateToManyForCreateInput
    implements
        Built<GVehicleColorRelateToManyForCreateInput,
            GVehicleColorRelateToManyForCreateInputBuilder> {
  GVehicleColorRelateToManyForCreateInput._();

  factory GVehicleColorRelateToManyForCreateInput(
      [Function(GVehicleColorRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleColorRelateToManyForCreateInput;

  BuiltList<GVehicleColorCreateInput>? get create;
  BuiltList<GVehicleColorWhereUniqueInput>? get connect;
  static Serializer<GVehicleColorRelateToManyForCreateInput> get serializer =>
      _$gVehicleColorRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleColorWhereUniqueInput
    implements
        Built<GVehicleColorWhereUniqueInput,
            GVehicleColorWhereUniqueInputBuilder> {
  GVehicleColorWhereUniqueInput._();

  factory GVehicleColorWhereUniqueInput(
          [Function(GVehicleColorWhereUniqueInputBuilder b) updates]) =
      _$GVehicleColorWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleColorWhereUniqueInput> get serializer =>
      _$gVehicleColorWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleColorWhereInput
    implements Built<GVehicleColorWhereInput, GVehicleColorWhereInputBuilder> {
  GVehicleColorWhereInput._();

  factory GVehicleColorWhereInput(
          [Function(GVehicleColorWhereInputBuilder b) updates]) =
      _$GVehicleColorWhereInput;

  BuiltList<GVehicleColorWhereInput>? get AND;
  BuiltList<GVehicleColorWhereInput>? get OR;
  BuiltList<GVehicleColorWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get code;
  GVehicleWhereInput? get vehicle;
  GVehicleVariantManyRelationFilter? get vehicleVariant;
  GVehicleImageManyRelationFilter? get images;
  static Serializer<GVehicleColorWhereInput> get serializer =>
      _$gVehicleColorWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorWhereInput.serializer,
        json,
      );
}

abstract class GVehicleImageManyRelationFilter
    implements
        Built<GVehicleImageManyRelationFilter,
            GVehicleImageManyRelationFilterBuilder> {
  GVehicleImageManyRelationFilter._();

  factory GVehicleImageManyRelationFilter(
          [Function(GVehicleImageManyRelationFilterBuilder b) updates]) =
      _$GVehicleImageManyRelationFilter;

  GVehicleImageWhereInput? get every;
  GVehicleImageWhereInput? get some;
  GVehicleImageWhereInput? get none;
  static Serializer<GVehicleImageManyRelationFilter> get serializer =>
      _$gVehicleImageManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleColorOrderByInput
    implements
        Built<GVehicleColorOrderByInput, GVehicleColorOrderByInputBuilder> {
  GVehicleColorOrderByInput._();

  factory GVehicleColorOrderByInput(
          [Function(GVehicleColorOrderByInputBuilder b) updates]) =
      _$GVehicleColorOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get code;
  static Serializer<GVehicleColorOrderByInput> get serializer =>
      _$gVehicleColorOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleColorUpdateInput
    implements
        Built<GVehicleColorUpdateInput, GVehicleColorUpdateInputBuilder> {
  GVehicleColorUpdateInput._();

  factory GVehicleColorUpdateInput(
          [Function(GVehicleColorUpdateInputBuilder b) updates]) =
      _$GVehicleColorUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get code;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  GVehicleVariantRelateToManyForUpdateInput? get vehicleVariant;
  GVehicleImageRelateToManyForUpdateInput? get images;
  static Serializer<GVehicleColorUpdateInput> get serializer =>
      _$gVehicleColorUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleRelateToOneForUpdateInput
    implements
        Built<GVehicleRelateToOneForUpdateInput,
            GVehicleRelateToOneForUpdateInputBuilder> {
  GVehicleRelateToOneForUpdateInput._();

  factory GVehicleRelateToOneForUpdateInput(
          [Function(GVehicleRelateToOneForUpdateInputBuilder b) updates]) =
      _$GVehicleRelateToOneForUpdateInput;

  GVehicleCreateInput? get create;
  GVehicleWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GVehicleRelateToOneForUpdateInput> get serializer =>
      _$gVehicleRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleImageRelateToManyForUpdateInput
    implements
        Built<GVehicleImageRelateToManyForUpdateInput,
            GVehicleImageRelateToManyForUpdateInputBuilder> {
  GVehicleImageRelateToManyForUpdateInput._();

  factory GVehicleImageRelateToManyForUpdateInput(
      [Function(GVehicleImageRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleImageRelateToManyForUpdateInput;

  BuiltList<GVehicleImageWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleImageWhereUniqueInput>? get set;
  BuiltList<GVehicleImageCreateInput>? get create;
  BuiltList<GVehicleImageWhereUniqueInput>? get connect;
  static Serializer<GVehicleImageRelateToManyForUpdateInput> get serializer =>
      _$gVehicleImageRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleColorUpdateArgs
    implements Built<GVehicleColorUpdateArgs, GVehicleColorUpdateArgsBuilder> {
  GVehicleColorUpdateArgs._();

  factory GVehicleColorUpdateArgs(
          [Function(GVehicleColorUpdateArgsBuilder b) updates]) =
      _$GVehicleColorUpdateArgs;

  GVehicleColorWhereUniqueInput get where;
  GVehicleColorUpdateInput get data;
  static Serializer<GVehicleColorUpdateArgs> get serializer =>
      _$gVehicleColorUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleColorCreateInput
    implements
        Built<GVehicleColorCreateInput, GVehicleColorCreateInputBuilder> {
  GVehicleColorCreateInput._();

  factory GVehicleColorCreateInput(
          [Function(GVehicleColorCreateInputBuilder b) updates]) =
      _$GVehicleColorCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get code;
  GVehicleRelateToOneForCreateInput? get vehicle;
  GVehicleVariantRelateToManyForCreateInput? get vehicleVariant;
  GVehicleImageRelateToManyForCreateInput? get images;
  static Serializer<GVehicleColorCreateInput> get serializer =>
      _$gVehicleColorCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleColorCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleColorCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleColorCreateInput.serializer,
        json,
      );
}

abstract class GVehicleRelateToOneForCreateInput
    implements
        Built<GVehicleRelateToOneForCreateInput,
            GVehicleRelateToOneForCreateInputBuilder> {
  GVehicleRelateToOneForCreateInput._();

  factory GVehicleRelateToOneForCreateInput(
          [Function(GVehicleRelateToOneForCreateInputBuilder b) updates]) =
      _$GVehicleRelateToOneForCreateInput;

  GVehicleCreateInput? get create;
  GVehicleWhereUniqueInput? get connect;
  static Serializer<GVehicleRelateToOneForCreateInput> get serializer =>
      _$gVehicleRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleImageRelateToManyForCreateInput
    implements
        Built<GVehicleImageRelateToManyForCreateInput,
            GVehicleImageRelateToManyForCreateInputBuilder> {
  GVehicleImageRelateToManyForCreateInput._();

  factory GVehicleImageRelateToManyForCreateInput(
      [Function(GVehicleImageRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleImageRelateToManyForCreateInput;

  BuiltList<GVehicleImageCreateInput>? get create;
  BuiltList<GVehicleImageWhereUniqueInput>? get connect;
  static Serializer<GVehicleImageRelateToManyForCreateInput> get serializer =>
      _$gVehicleImageRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerWhereUniqueInput
    implements
        Built<GVehicleDealerWhereUniqueInput,
            GVehicleDealerWhereUniqueInputBuilder> {
  GVehicleDealerWhereUniqueInput._();

  factory GVehicleDealerWhereUniqueInput(
          [Function(GVehicleDealerWhereUniqueInputBuilder b) updates]) =
      _$GVehicleDealerWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleDealerWhereUniqueInput> get serializer =>
      _$gVehicleDealerWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleDealerWhereInput
    implements
        Built<GVehicleDealerWhereInput, GVehicleDealerWhereInputBuilder> {
  GVehicleDealerWhereInput._();

  factory GVehicleDealerWhereInput(
          [Function(GVehicleDealerWhereInputBuilder b) updates]) =
      _$GVehicleDealerWhereInput;

  BuiltList<GVehicleDealerWhereInput>? get AND;
  BuiltList<GVehicleDealerWhereInput>? get OR;
  BuiltList<GVehicleDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GVehicleVariantWhereInput? get vehicleVariant;
  GVehicleColorWhereInput? get vehicleColor;
  GPriceManyRelationFilter? get prices;
  GIntNullableFilter? get stock;
  static Serializer<GVehicleDealerWhereInput> get serializer =>
      _$gVehicleDealerWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerWhereInput.serializer,
        json,
      );
}

abstract class GPriceManyRelationFilter
    implements
        Built<GPriceManyRelationFilter, GPriceManyRelationFilterBuilder> {
  GPriceManyRelationFilter._();

  factory GPriceManyRelationFilter(
          [Function(GPriceManyRelationFilterBuilder b) updates]) =
      _$GPriceManyRelationFilter;

  GPriceWhereInput? get every;
  GPriceWhereInput? get some;
  GPriceWhereInput? get none;
  static Serializer<GPriceManyRelationFilter> get serializer =>
      _$gPriceManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceManyRelationFilter.serializer,
        json,
      );
}

abstract class GIntNullableFilter
    implements Built<GIntNullableFilter, GIntNullableFilterBuilder> {
  GIntNullableFilter._();

  factory GIntNullableFilter([Function(GIntNullableFilterBuilder b) updates]) =
      _$GIntNullableFilter;

  int? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<int>? get Gin;
  BuiltList<int>? get notIn;
  int? get lt;
  int? get lte;
  int? get gt;
  int? get gte;
  GIntNullableFilter? get not;
  static Serializer<GIntNullableFilter> get serializer =>
      _$gIntNullableFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GIntNullableFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GIntNullableFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GIntNullableFilter.serializer,
        json,
      );
}

abstract class GVehicleDealerOrderByInput
    implements
        Built<GVehicleDealerOrderByInput, GVehicleDealerOrderByInputBuilder> {
  GVehicleDealerOrderByInput._();

  factory GVehicleDealerOrderByInput(
          [Function(GVehicleDealerOrderByInputBuilder b) updates]) =
      _$GVehicleDealerOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get stock;
  static Serializer<GVehicleDealerOrderByInput> get serializer =>
      _$gVehicleDealerOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleDealerUpdateInput
    implements
        Built<GVehicleDealerUpdateInput, GVehicleDealerUpdateInputBuilder> {
  GVehicleDealerUpdateInput._();

  factory GVehicleDealerUpdateInput(
          [Function(GVehicleDealerUpdateInputBuilder b) updates]) =
      _$GVehicleDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GVehicleColorRelateToOneForUpdateInput? get vehicleColor;
  GPriceRelateToManyForUpdateInput? get prices;
  int? get stock;
  static Serializer<GVehicleDealerUpdateInput> get serializer =>
      _$gVehicleDealerUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerUpdateInput.serializer,
        json,
      );
}

abstract class GPriceRelateToManyForUpdateInput
    implements
        Built<GPriceRelateToManyForUpdateInput,
            GPriceRelateToManyForUpdateInputBuilder> {
  GPriceRelateToManyForUpdateInput._();

  factory GPriceRelateToManyForUpdateInput(
          [Function(GPriceRelateToManyForUpdateInputBuilder b) updates]) =
      _$GPriceRelateToManyForUpdateInput;

  BuiltList<GPriceWhereUniqueInput>? get disconnect;
  BuiltList<GPriceWhereUniqueInput>? get set;
  BuiltList<GPriceCreateInput>? get create;
  BuiltList<GPriceWhereUniqueInput>? get connect;
  static Serializer<GPriceRelateToManyForUpdateInput> get serializer =>
      _$gPriceRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerUpdateArgs
    implements
        Built<GVehicleDealerUpdateArgs, GVehicleDealerUpdateArgsBuilder> {
  GVehicleDealerUpdateArgs._();

  factory GVehicleDealerUpdateArgs(
          [Function(GVehicleDealerUpdateArgsBuilder b) updates]) =
      _$GVehicleDealerUpdateArgs;

  GVehicleDealerWhereUniqueInput get where;
  GVehicleDealerUpdateInput get data;
  static Serializer<GVehicleDealerUpdateArgs> get serializer =>
      _$gVehicleDealerUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleDealerCreateInput
    implements
        Built<GVehicleDealerCreateInput, GVehicleDealerCreateInputBuilder> {
  GVehicleDealerCreateInput._();

  factory GVehicleDealerCreateInput(
          [Function(GVehicleDealerCreateInputBuilder b) updates]) =
      _$GVehicleDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GVehicleColorRelateToOneForCreateInput? get vehicleColor;
  GPriceRelateToManyForCreateInput? get prices;
  int? get stock;
  static Serializer<GVehicleDealerCreateInput> get serializer =>
      _$gVehicleDealerCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerCreateInput.serializer,
        json,
      );
}

abstract class GPriceRelateToManyForCreateInput
    implements
        Built<GPriceRelateToManyForCreateInput,
            GPriceRelateToManyForCreateInputBuilder> {
  GPriceRelateToManyForCreateInput._();

  factory GPriceRelateToManyForCreateInput(
          [Function(GPriceRelateToManyForCreateInputBuilder b) updates]) =
      _$GPriceRelateToManyForCreateInput;

  BuiltList<GPriceCreateInput>? get create;
  BuiltList<GPriceWhereUniqueInput>? get connect;
  static Serializer<GPriceRelateToManyForCreateInput> get serializer =>
      _$gPriceRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleImageWhereUniqueInput
    implements
        Built<GVehicleImageWhereUniqueInput,
            GVehicleImageWhereUniqueInputBuilder> {
  GVehicleImageWhereUniqueInput._();

  factory GVehicleImageWhereUniqueInput(
          [Function(GVehicleImageWhereUniqueInputBuilder b) updates]) =
      _$GVehicleImageWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleImageWhereUniqueInput> get serializer =>
      _$gVehicleImageWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleImageWhereInput
    implements Built<GVehicleImageWhereInput, GVehicleImageWhereInputBuilder> {
  GVehicleImageWhereInput._();

  factory GVehicleImageWhereInput(
          [Function(GVehicleImageWhereInputBuilder b) updates]) =
      _$GVehicleImageWhereInput;

  BuiltList<GVehicleImageWhereInput>? get AND;
  BuiltList<GVehicleImageWhereInput>? get OR;
  BuiltList<GVehicleImageWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleColorWhereInput? get color;
  static Serializer<GVehicleImageWhereInput> get serializer =>
      _$gVehicleImageWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageWhereInput.serializer,
        json,
      );
}

abstract class GVehicleImageOrderByInput
    implements
        Built<GVehicleImageOrderByInput, GVehicleImageOrderByInputBuilder> {
  GVehicleImageOrderByInput._();

  factory GVehicleImageOrderByInput(
          [Function(GVehicleImageOrderByInputBuilder b) updates]) =
      _$GVehicleImageOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GVehicleImageOrderByInput> get serializer =>
      _$gVehicleImageOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleImageUpdateInput
    implements
        Built<GVehicleImageUpdateInput, GVehicleImageUpdateInputBuilder> {
  GVehicleImageUpdateInput._();

  factory GVehicleImageUpdateInput(
          [Function(GVehicleImageUpdateInputBuilder b) updates]) =
      _$GVehicleImageUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GImageFieldInput? get image;
  GVehicleColorRelateToOneForUpdateInput? get color;
  static Serializer<GVehicleImageUpdateInput> get serializer =>
      _$gVehicleImageUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleImageUpdateArgs
    implements Built<GVehicleImageUpdateArgs, GVehicleImageUpdateArgsBuilder> {
  GVehicleImageUpdateArgs._();

  factory GVehicleImageUpdateArgs(
          [Function(GVehicleImageUpdateArgsBuilder b) updates]) =
      _$GVehicleImageUpdateArgs;

  GVehicleImageWhereUniqueInput get where;
  GVehicleImageUpdateInput get data;
  static Serializer<GVehicleImageUpdateArgs> get serializer =>
      _$gVehicleImageUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleImageCreateInput
    implements
        Built<GVehicleImageCreateInput, GVehicleImageCreateInputBuilder> {
  GVehicleImageCreateInput._();

  factory GVehicleImageCreateInput(
          [Function(GVehicleImageCreateInputBuilder b) updates]) =
      _$GVehicleImageCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GImageFieldInput? get image;
  GVehicleColorRelateToOneForCreateInput? get color;
  static Serializer<GVehicleImageCreateInput> get serializer =>
      _$gVehicleImageCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleImageCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleImageCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleImageCreateInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationWhereUniqueInput
    implements
        Built<GVehicleSpecificationWhereUniqueInput,
            GVehicleSpecificationWhereUniqueInputBuilder> {
  GVehicleSpecificationWhereUniqueInput._();

  factory GVehicleSpecificationWhereUniqueInput(
          [Function(GVehicleSpecificationWhereUniqueInputBuilder b) updates]) =
      _$GVehicleSpecificationWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleSpecificationWhereUniqueInput> get serializer =>
      _$gVehicleSpecificationWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationWhereInput
    implements
        Built<GVehicleSpecificationWhereInput,
            GVehicleSpecificationWhereInputBuilder> {
  GVehicleSpecificationWhereInput._();

  factory GVehicleSpecificationWhereInput(
          [Function(GVehicleSpecificationWhereInputBuilder b) updates]) =
      _$GVehicleSpecificationWhereInput;

  BuiltList<GVehicleSpecificationWhereInput>? get AND;
  BuiltList<GVehicleSpecificationWhereInput>? get OR;
  BuiltList<GVehicleSpecificationWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GSpecificationWhereInput? get specification;
  GStringFilter? get type;
  GIntNullableFilter? get intValue;
  GStringFilter? get stringValue;
  GSpecificationCategoryWhereInput? get category;
  GVehicleWhereInput? get vehicle;
  static Serializer<GVehicleSpecificationWhereInput> get serializer =>
      _$gVehicleSpecificationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationWhereInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationOrderByInput
    implements
        Built<GVehicleSpecificationOrderByInput,
            GVehicleSpecificationOrderByInputBuilder> {
  GVehicleSpecificationOrderByInput._();

  factory GVehicleSpecificationOrderByInput(
          [Function(GVehicleSpecificationOrderByInputBuilder b) updates]) =
      _$GVehicleSpecificationOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get intValue;
  GOrderDirection? get stringValue;
  static Serializer<GVehicleSpecificationOrderByInput> get serializer =>
      _$gVehicleSpecificationOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationUpdateInput
    implements
        Built<GVehicleSpecificationUpdateInput,
            GVehicleSpecificationUpdateInputBuilder> {
  GVehicleSpecificationUpdateInput._();

  factory GVehicleSpecificationUpdateInput(
          [Function(GVehicleSpecificationUpdateInputBuilder b) updates]) =
      _$GVehicleSpecificationUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GSpecificationRelateToOneForUpdateInput? get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GSpecificationCategoryRelateToOneForUpdateInput? get category;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  static Serializer<GVehicleSpecificationUpdateInput> get serializer =>
      _$gVehicleSpecificationUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationUpdateInput.serializer,
        json,
      );
}

abstract class GSpecificationRelateToOneForUpdateInput
    implements
        Built<GSpecificationRelateToOneForUpdateInput,
            GSpecificationRelateToOneForUpdateInputBuilder> {
  GSpecificationRelateToOneForUpdateInput._();

  factory GSpecificationRelateToOneForUpdateInput(
      [Function(GSpecificationRelateToOneForUpdateInputBuilder b)
          updates]) = _$GSpecificationRelateToOneForUpdateInput;

  GSpecificationCreateInput? get create;
  GSpecificationWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GSpecificationRelateToOneForUpdateInput> get serializer =>
      _$gSpecificationRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryRelateToOneForUpdateInput
    implements
        Built<GSpecificationCategoryRelateToOneForUpdateInput,
            GSpecificationCategoryRelateToOneForUpdateInputBuilder> {
  GSpecificationCategoryRelateToOneForUpdateInput._();

  factory GSpecificationCategoryRelateToOneForUpdateInput(
      [Function(GSpecificationCategoryRelateToOneForUpdateInputBuilder b)
          updates]) = _$GSpecificationCategoryRelateToOneForUpdateInput;

  GSpecificationCategoryCreateInput? get create;
  GSpecificationCategoryWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GSpecificationCategoryRelateToOneForUpdateInput>
      get serializer =>
          _$gSpecificationCategoryRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationUpdateArgs
    implements
        Built<GVehicleSpecificationUpdateArgs,
            GVehicleSpecificationUpdateArgsBuilder> {
  GVehicleSpecificationUpdateArgs._();

  factory GVehicleSpecificationUpdateArgs(
          [Function(GVehicleSpecificationUpdateArgsBuilder b) updates]) =
      _$GVehicleSpecificationUpdateArgs;

  GVehicleSpecificationWhereUniqueInput get where;
  GVehicleSpecificationUpdateInput get data;
  static Serializer<GVehicleSpecificationUpdateArgs> get serializer =>
      _$gVehicleSpecificationUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleSpecificationCreateInput
    implements
        Built<GVehicleSpecificationCreateInput,
            GVehicleSpecificationCreateInputBuilder> {
  GVehicleSpecificationCreateInput._();

  factory GVehicleSpecificationCreateInput(
          [Function(GVehicleSpecificationCreateInputBuilder b) updates]) =
      _$GVehicleSpecificationCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GSpecificationRelateToOneForCreateInput? get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GSpecificationCategoryRelateToOneForCreateInput? get category;
  GVehicleRelateToOneForCreateInput? get vehicle;
  static Serializer<GVehicleSpecificationCreateInput> get serializer =>
      _$gVehicleSpecificationCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSpecificationCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleSpecificationCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSpecificationCreateInput.serializer,
        json,
      );
}

abstract class GSpecificationRelateToOneForCreateInput
    implements
        Built<GSpecificationRelateToOneForCreateInput,
            GSpecificationRelateToOneForCreateInputBuilder> {
  GSpecificationRelateToOneForCreateInput._();

  factory GSpecificationRelateToOneForCreateInput(
      [Function(GSpecificationRelateToOneForCreateInputBuilder b)
          updates]) = _$GSpecificationRelateToOneForCreateInput;

  GSpecificationCreateInput? get create;
  GSpecificationWhereUniqueInput? get connect;
  static Serializer<GSpecificationRelateToOneForCreateInput> get serializer =>
      _$gSpecificationRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GSpecificationCategoryRelateToOneForCreateInput
    implements
        Built<GSpecificationCategoryRelateToOneForCreateInput,
            GSpecificationCategoryRelateToOneForCreateInputBuilder> {
  GSpecificationCategoryRelateToOneForCreateInput._();

  factory GSpecificationCategoryRelateToOneForCreateInput(
      [Function(GSpecificationCategoryRelateToOneForCreateInputBuilder b)
          updates]) = _$GSpecificationCategoryRelateToOneForCreateInput;

  GSpecificationCategoryCreateInput? get create;
  GSpecificationCategoryWhereUniqueInput? get connect;
  static Serializer<GSpecificationCategoryRelateToOneForCreateInput>
      get serializer =>
          _$gSpecificationCategoryRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSpecificationCategoryRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSpecificationCategoryRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSpecificationCategoryRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantWhereUniqueInput
    implements
        Built<GVehicleVariantWhereUniqueInput,
            GVehicleVariantWhereUniqueInputBuilder> {
  GVehicleVariantWhereUniqueInput._();

  factory GVehicleVariantWhereUniqueInput(
          [Function(GVehicleVariantWhereUniqueInputBuilder b) updates]) =
      _$GVehicleVariantWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleVariantWhereUniqueInput> get serializer =>
      _$gVehicleVariantWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleVariantWhereInput
    implements
        Built<GVehicleVariantWhereInput, GVehicleVariantWhereInputBuilder> {
  GVehicleVariantWhereInput._();

  factory GVehicleVariantWhereInput(
          [Function(GVehicleVariantWhereInputBuilder b) updates]) =
      _$GVehicleVariantWhereInput;

  BuiltList<GVehicleVariantWhereInput>? get AND;
  BuiltList<GVehicleVariantWhereInput>? get OR;
  BuiltList<GVehicleVariantWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GVehicleWhereInput? get vehicle;
  @BuiltValueField(wireName: 'default')
  GBooleanFilter? get Gdefault;
  GVehicleSpecificationManyRelationFilter? get specifications;
  GVehicleColorManyRelationFilter? get colors;
  static Serializer<GVehicleVariantWhereInput> get serializer =>
      _$gVehicleVariantWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantWhereInput.serializer,
        json,
      );
}

abstract class GVehicleVariantOrderByInput
    implements
        Built<GVehicleVariantOrderByInput, GVehicleVariantOrderByInputBuilder> {
  GVehicleVariantOrderByInput._();

  factory GVehicleVariantOrderByInput(
          [Function(GVehicleVariantOrderByInputBuilder b) updates]) =
      _$GVehicleVariantOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  @BuiltValueField(wireName: 'default')
  GOrderDirection? get Gdefault;
  static Serializer<GVehicleVariantOrderByInput> get serializer =>
      _$gVehicleVariantOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleVariantUpdateInput
    implements
        Built<GVehicleVariantUpdateInput, GVehicleVariantUpdateInputBuilder> {
  GVehicleVariantUpdateInput._();

  factory GVehicleVariantUpdateInput(
          [Function(GVehicleVariantUpdateInputBuilder b) updates]) =
      _$GVehicleVariantUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GVehicleSpecificationRelateToManyForUpdateInput? get specifications;
  GVehicleColorRelateToManyForUpdateInput? get colors;
  static Serializer<GVehicleVariantUpdateInput> get serializer =>
      _$gVehicleVariantUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantUpdateArgs
    implements
        Built<GVehicleVariantUpdateArgs, GVehicleVariantUpdateArgsBuilder> {
  GVehicleVariantUpdateArgs._();

  factory GVehicleVariantUpdateArgs(
          [Function(GVehicleVariantUpdateArgsBuilder b) updates]) =
      _$GVehicleVariantUpdateArgs;

  GVehicleVariantWhereUniqueInput get where;
  GVehicleVariantUpdateInput get data;
  static Serializer<GVehicleVariantUpdateArgs> get serializer =>
      _$gVehicleVariantUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleVariantCreateInput
    implements
        Built<GVehicleVariantCreateInput, GVehicleVariantCreateInputBuilder> {
  GVehicleVariantCreateInput._();

  factory GVehicleVariantCreateInput(
          [Function(GVehicleVariantCreateInputBuilder b) updates]) =
      _$GVehicleVariantCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  GVehicleRelateToOneForCreateInput? get vehicle;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GVehicleSpecificationRelateToManyForCreateInput? get specifications;
  GVehicleColorRelateToManyForCreateInput? get colors;
  static Serializer<GVehicleVariantCreateInput> get serializer =>
      _$gVehicleVariantCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVariantCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleVariantCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVariantCreateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestWhereUniqueInput
    implements
        Built<GVehicleDealerStockRequestWhereUniqueInput,
            GVehicleDealerStockRequestWhereUniqueInputBuilder> {
  GVehicleDealerStockRequestWhereUniqueInput._();

  factory GVehicleDealerStockRequestWhereUniqueInput(
      [Function(GVehicleDealerStockRequestWhereUniqueInputBuilder b)
          updates]) = _$GVehicleDealerStockRequestWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleDealerStockRequestWhereUniqueInput>
      get serializer => _$gVehicleDealerStockRequestWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerStockRequestWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestWhereInput
    implements
        Built<GVehicleDealerStockRequestWhereInput,
            GVehicleDealerStockRequestWhereInputBuilder> {
  GVehicleDealerStockRequestWhereInput._();

  factory GVehicleDealerStockRequestWhereInput(
          [Function(GVehicleDealerStockRequestWhereInputBuilder b) updates]) =
      _$GVehicleDealerStockRequestWhereInput;

  BuiltList<GVehicleDealerStockRequestWhereInput>? get AND;
  BuiltList<GVehicleDealerStockRequestWhereInput>? get OR;
  BuiltList<GVehicleDealerStockRequestWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GVehicleVariantWhereInput? get vehicleVariant;
  GVehicleColorWhereInput? get vehicleColor;
  GIntNullableFilter? get stock;
  GBooleanFilter? get accepted;
  GStringNullableFilter? get type;
  static Serializer<GVehicleDealerStockRequestWhereInput> get serializer =>
      _$gVehicleDealerStockRequestWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerStockRequestWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestWhereInput.serializer,
        json,
      );
}

abstract class GStringNullableFilter
    implements Built<GStringNullableFilter, GStringNullableFilterBuilder> {
  GStringNullableFilter._();

  factory GStringNullableFilter(
          [Function(GStringNullableFilterBuilder b) updates]) =
      _$GStringNullableFilter;

  String? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<String>? get Gin;
  BuiltList<String>? get notIn;
  String? get lt;
  String? get lte;
  String? get gt;
  String? get gte;
  String? get contains;
  String? get startsWith;
  String? get endsWith;
  GQueryMode? get mode;
  GNestedStringNullableFilter? get not;
  static Serializer<GStringNullableFilter> get serializer =>
      _$gStringNullableFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GStringNullableFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GStringNullableFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GStringNullableFilter.serializer,
        json,
      );
}

abstract class GNestedStringNullableFilter
    implements
        Built<GNestedStringNullableFilter, GNestedStringNullableFilterBuilder> {
  GNestedStringNullableFilter._();

  factory GNestedStringNullableFilter(
          [Function(GNestedStringNullableFilterBuilder b) updates]) =
      _$GNestedStringNullableFilter;

  String? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<String>? get Gin;
  BuiltList<String>? get notIn;
  String? get lt;
  String? get lte;
  String? get gt;
  String? get gte;
  String? get contains;
  String? get startsWith;
  String? get endsWith;
  GNestedStringNullableFilter? get not;
  static Serializer<GNestedStringNullableFilter> get serializer =>
      _$gNestedStringNullableFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNestedStringNullableFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNestedStringNullableFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNestedStringNullableFilter.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestOrderByInput
    implements
        Built<GVehicleDealerStockRequestOrderByInput,
            GVehicleDealerStockRequestOrderByInputBuilder> {
  GVehicleDealerStockRequestOrderByInput._();

  factory GVehicleDealerStockRequestOrderByInput(
          [Function(GVehicleDealerStockRequestOrderByInputBuilder b) updates]) =
      _$GVehicleDealerStockRequestOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get stock;
  GOrderDirection? get accepted;
  GOrderDirection? get type;
  static Serializer<GVehicleDealerStockRequestOrderByInput> get serializer =>
      _$gVehicleDealerStockRequestOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerStockRequestOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestUpdateInput
    implements
        Built<GVehicleDealerStockRequestUpdateInput,
            GVehicleDealerStockRequestUpdateInputBuilder> {
  GVehicleDealerStockRequestUpdateInput._();

  factory GVehicleDealerStockRequestUpdateInput(
          [Function(GVehicleDealerStockRequestUpdateInputBuilder b) updates]) =
      _$GVehicleDealerStockRequestUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GVehicleColorRelateToOneForUpdateInput? get vehicleColor;
  int? get stock;
  bool? get accepted;
  String? get type;
  static Serializer<GVehicleDealerStockRequestUpdateInput> get serializer =>
      _$gVehicleDealerStockRequestUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerStockRequestUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestUpdateArgs
    implements
        Built<GVehicleDealerStockRequestUpdateArgs,
            GVehicleDealerStockRequestUpdateArgsBuilder> {
  GVehicleDealerStockRequestUpdateArgs._();

  factory GVehicleDealerStockRequestUpdateArgs(
          [Function(GVehicleDealerStockRequestUpdateArgsBuilder b) updates]) =
      _$GVehicleDealerStockRequestUpdateArgs;

  GVehicleDealerStockRequestWhereUniqueInput get where;
  GVehicleDealerStockRequestUpdateInput get data;
  static Serializer<GVehicleDealerStockRequestUpdateArgs> get serializer =>
      _$gVehicleDealerStockRequestUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerStockRequestUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestCreateInput
    implements
        Built<GVehicleDealerStockRequestCreateInput,
            GVehicleDealerStockRequestCreateInputBuilder> {
  GVehicleDealerStockRequestCreateInput._();

  factory GVehicleDealerStockRequestCreateInput(
          [Function(GVehicleDealerStockRequestCreateInputBuilder b) updates]) =
      _$GVehicleDealerStockRequestCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GVehicleColorRelateToOneForCreateInput? get vehicleColor;
  int? get stock;
  bool? get accepted;
  String? get type;
  static Serializer<GVehicleDealerStockRequestCreateInput> get serializer =>
      _$gVehicleDealerStockRequestCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleDealerStockRequestCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleDealerStockRequestCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleDealerStockRequestCreateInput.serializer,
        json,
      );
}

abstract class GPriceCategoryWhereUniqueInput
    implements
        Built<GPriceCategoryWhereUniqueInput,
            GPriceCategoryWhereUniqueInputBuilder> {
  GPriceCategoryWhereUniqueInput._();

  factory GPriceCategoryWhereUniqueInput(
          [Function(GPriceCategoryWhereUniqueInputBuilder b) updates]) =
      _$GPriceCategoryWhereUniqueInput;

  String? get id;
  static Serializer<GPriceCategoryWhereUniqueInput> get serializer =>
      _$gPriceCategoryWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryWhereUniqueInput.serializer,
        json,
      );
}

abstract class GPriceCategoryWhereInput
    implements
        Built<GPriceCategoryWhereInput, GPriceCategoryWhereInputBuilder> {
  GPriceCategoryWhereInput._();

  factory GPriceCategoryWhereInput(
          [Function(GPriceCategoryWhereInputBuilder b) updates]) =
      _$GPriceCategoryWhereInput;

  BuiltList<GPriceCategoryWhereInput>? get AND;
  BuiltList<GPriceCategoryWhereInput>? get OR;
  BuiltList<GPriceCategoryWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  static Serializer<GPriceCategoryWhereInput> get serializer =>
      _$gPriceCategoryWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryWhereInput.serializer,
        json,
      );
}

abstract class GPriceCategoryOrderByInput
    implements
        Built<GPriceCategoryOrderByInput, GPriceCategoryOrderByInputBuilder> {
  GPriceCategoryOrderByInput._();

  factory GPriceCategoryOrderByInput(
          [Function(GPriceCategoryOrderByInputBuilder b) updates]) =
      _$GPriceCategoryOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GPriceCategoryOrderByInput> get serializer =>
      _$gPriceCategoryOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryOrderByInput.serializer,
        json,
      );
}

abstract class GPriceCategoryUpdateInput
    implements
        Built<GPriceCategoryUpdateInput, GPriceCategoryUpdateInputBuilder> {
  GPriceCategoryUpdateInput._();

  factory GPriceCategoryUpdateInput(
          [Function(GPriceCategoryUpdateInputBuilder b) updates]) =
      _$GPriceCategoryUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GPriceCategoryUpdateInput> get serializer =>
      _$gPriceCategoryUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryUpdateInput.serializer,
        json,
      );
}

abstract class GPriceCategoryUpdateArgs
    implements
        Built<GPriceCategoryUpdateArgs, GPriceCategoryUpdateArgsBuilder> {
  GPriceCategoryUpdateArgs._();

  factory GPriceCategoryUpdateArgs(
          [Function(GPriceCategoryUpdateArgsBuilder b) updates]) =
      _$GPriceCategoryUpdateArgs;

  GPriceCategoryWhereUniqueInput get where;
  GPriceCategoryUpdateInput get data;
  static Serializer<GPriceCategoryUpdateArgs> get serializer =>
      _$gPriceCategoryUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryUpdateArgs.serializer,
        json,
      );
}

abstract class GPriceCategoryCreateInput
    implements
        Built<GPriceCategoryCreateInput, GPriceCategoryCreateInputBuilder> {
  GPriceCategoryCreateInput._();

  factory GPriceCategoryCreateInput(
          [Function(GPriceCategoryCreateInputBuilder b) updates]) =
      _$GPriceCategoryCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GPriceCategoryCreateInput> get serializer =>
      _$gPriceCategoryCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryCreateInput.serializer,
        json,
      );
}

abstract class GPriceWhereUniqueInput
    implements Built<GPriceWhereUniqueInput, GPriceWhereUniqueInputBuilder> {
  GPriceWhereUniqueInput._();

  factory GPriceWhereUniqueInput(
          [Function(GPriceWhereUniqueInputBuilder b) updates]) =
      _$GPriceWhereUniqueInput;

  String? get id;
  static Serializer<GPriceWhereUniqueInput> get serializer =>
      _$gPriceWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceWhereUniqueInput.serializer,
        json,
      );
}

abstract class GPriceWhereInput
    implements Built<GPriceWhereInput, GPriceWhereInputBuilder> {
  GPriceWhereInput._();

  factory GPriceWhereInput([Function(GPriceWhereInputBuilder b) updates]) =
      _$GPriceWhereInput;

  BuiltList<GPriceWhereInput>? get AND;
  BuiltList<GPriceWhereInput>? get OR;
  BuiltList<GPriceWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GPriceCategoryWhereInput? get category;
  GIntFilter? get amount;
  static Serializer<GPriceWhereInput> get serializer =>
      _$gPriceWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceWhereInput.serializer,
        json,
      );
}

abstract class GPriceOrderByInput
    implements Built<GPriceOrderByInput, GPriceOrderByInputBuilder> {
  GPriceOrderByInput._();

  factory GPriceOrderByInput([Function(GPriceOrderByInputBuilder b) updates]) =
      _$GPriceOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get amount;
  static Serializer<GPriceOrderByInput> get serializer =>
      _$gPriceOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceOrderByInput.serializer,
        json,
      );
}

abstract class GPriceUpdateInput
    implements Built<GPriceUpdateInput, GPriceUpdateInputBuilder> {
  GPriceUpdateInput._();

  factory GPriceUpdateInput([Function(GPriceUpdateInputBuilder b) updates]) =
      _$GPriceUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GPriceCategoryRelateToOneForUpdateInput? get category;
  int? get amount;
  static Serializer<GPriceUpdateInput> get serializer =>
      _$gPriceUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceUpdateInput.serializer,
        json,
      );
}

abstract class GPriceCategoryRelateToOneForUpdateInput
    implements
        Built<GPriceCategoryRelateToOneForUpdateInput,
            GPriceCategoryRelateToOneForUpdateInputBuilder> {
  GPriceCategoryRelateToOneForUpdateInput._();

  factory GPriceCategoryRelateToOneForUpdateInput(
      [Function(GPriceCategoryRelateToOneForUpdateInputBuilder b)
          updates]) = _$GPriceCategoryRelateToOneForUpdateInput;

  GPriceCategoryCreateInput? get create;
  GPriceCategoryWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GPriceCategoryRelateToOneForUpdateInput> get serializer =>
      _$gPriceCategoryRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GPriceUpdateArgs
    implements Built<GPriceUpdateArgs, GPriceUpdateArgsBuilder> {
  GPriceUpdateArgs._();

  factory GPriceUpdateArgs([Function(GPriceUpdateArgsBuilder b) updates]) =
      _$GPriceUpdateArgs;

  GPriceWhereUniqueInput get where;
  GPriceUpdateInput get data;
  static Serializer<GPriceUpdateArgs> get serializer =>
      _$gPriceUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceUpdateArgs.serializer,
        json,
      );
}

abstract class GPriceCreateInput
    implements Built<GPriceCreateInput, GPriceCreateInputBuilder> {
  GPriceCreateInput._();

  factory GPriceCreateInput([Function(GPriceCreateInputBuilder b) updates]) =
      _$GPriceCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GPriceCategoryRelateToOneForCreateInput? get category;
  int? get amount;
  static Serializer<GPriceCreateInput> get serializer =>
      _$gPriceCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCreateInput.serializer,
        json,
      );
}

abstract class GPriceCategoryRelateToOneForCreateInput
    implements
        Built<GPriceCategoryRelateToOneForCreateInput,
            GPriceCategoryRelateToOneForCreateInputBuilder> {
  GPriceCategoryRelateToOneForCreateInput._();

  factory GPriceCategoryRelateToOneForCreateInput(
      [Function(GPriceCategoryRelateToOneForCreateInputBuilder b)
          updates]) = _$GPriceCategoryRelateToOneForCreateInput;

  GPriceCategoryCreateInput? get create;
  GPriceCategoryWhereUniqueInput? get connect;
  static Serializer<GPriceCategoryRelateToOneForCreateInput> get serializer =>
      _$gPriceCategoryRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPriceCategoryRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPriceCategoryRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPriceCategoryRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GWalletWhereUniqueInput
    implements Built<GWalletWhereUniqueInput, GWalletWhereUniqueInputBuilder> {
  GWalletWhereUniqueInput._();

  factory GWalletWhereUniqueInput(
          [Function(GWalletWhereUniqueInputBuilder b) updates]) =
      _$GWalletWhereUniqueInput;

  String? get id;
  static Serializer<GWalletWhereUniqueInput> get serializer =>
      _$gWalletWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletWhereUniqueInput.serializer,
        json,
      );
}

abstract class GWalletWhereInput
    implements Built<GWalletWhereInput, GWalletWhereInputBuilder> {
  GWalletWhereInput._();

  factory GWalletWhereInput([Function(GWalletWhereInputBuilder b) updates]) =
      _$GWalletWhereInput;

  BuiltList<GWalletWhereInput>? get AND;
  BuiltList<GWalletWhereInput>? get OR;
  BuiltList<GWalletWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GFloatNullableFilter? get amount;
  static Serializer<GWalletWhereInput> get serializer =>
      _$gWalletWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletWhereInput.serializer,
        json,
      );
}

abstract class GFloatNullableFilter
    implements Built<GFloatNullableFilter, GFloatNullableFilterBuilder> {
  GFloatNullableFilter._();

  factory GFloatNullableFilter(
          [Function(GFloatNullableFilterBuilder b) updates]) =
      _$GFloatNullableFilter;

  double? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<double>? get Gin;
  BuiltList<double>? get notIn;
  double? get lt;
  double? get lte;
  double? get gt;
  double? get gte;
  GFloatNullableFilter? get not;
  static Serializer<GFloatNullableFilter> get serializer =>
      _$gFloatNullableFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFloatNullableFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFloatNullableFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFloatNullableFilter.serializer,
        json,
      );
}

abstract class GWalletOrderByInput
    implements Built<GWalletOrderByInput, GWalletOrderByInputBuilder> {
  GWalletOrderByInput._();

  factory GWalletOrderByInput(
      [Function(GWalletOrderByInputBuilder b) updates]) = _$GWalletOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get amount;
  static Serializer<GWalletOrderByInput> get serializer =>
      _$gWalletOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletOrderByInput.serializer,
        json,
      );
}

abstract class GWalletUpdateInput
    implements Built<GWalletUpdateInput, GWalletUpdateInputBuilder> {
  GWalletUpdateInput._();

  factory GWalletUpdateInput([Function(GWalletUpdateInputBuilder b) updates]) =
      _$GWalletUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  double? get amount;
  static Serializer<GWalletUpdateInput> get serializer =>
      _$gWalletUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletUpdateInput.serializer,
        json,
      );
}

abstract class GWalletUpdateArgs
    implements Built<GWalletUpdateArgs, GWalletUpdateArgsBuilder> {
  GWalletUpdateArgs._();

  factory GWalletUpdateArgs([Function(GWalletUpdateArgsBuilder b) updates]) =
      _$GWalletUpdateArgs;

  GWalletWhereUniqueInput get where;
  GWalletUpdateInput get data;
  static Serializer<GWalletUpdateArgs> get serializer =>
      _$gWalletUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletUpdateArgs.serializer,
        json,
      );
}

abstract class GWalletCreateInput
    implements Built<GWalletCreateInput, GWalletCreateInputBuilder> {
  GWalletCreateInput._();

  factory GWalletCreateInput([Function(GWalletCreateInputBuilder b) updates]) =
      _$GWalletCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  double? get amount;
  static Serializer<GWalletCreateInput> get serializer =>
      _$gWalletCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletCreateInput.serializer,
        json,
      );
}

abstract class GWalletTransactionWhereUniqueInput
    implements
        Built<GWalletTransactionWhereUniqueInput,
            GWalletTransactionWhereUniqueInputBuilder> {
  GWalletTransactionWhereUniqueInput._();

  factory GWalletTransactionWhereUniqueInput(
          [Function(GWalletTransactionWhereUniqueInputBuilder b) updates]) =
      _$GWalletTransactionWhereUniqueInput;

  String? get id;
  static Serializer<GWalletTransactionWhereUniqueInput> get serializer =>
      _$gWalletTransactionWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletTransactionWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletTransactionWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletTransactionWhereUniqueInput.serializer,
        json,
      );
}

abstract class GWalletTransactionWhereInput
    implements
        Built<GWalletTransactionWhereInput,
            GWalletTransactionWhereInputBuilder> {
  GWalletTransactionWhereInput._();

  factory GWalletTransactionWhereInput(
          [Function(GWalletTransactionWhereInputBuilder b) updates]) =
      _$GWalletTransactionWhereInput;

  BuiltList<GWalletTransactionWhereInput>? get AND;
  BuiltList<GWalletTransactionWhereInput>? get OR;
  BuiltList<GWalletTransactionWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GWalletWhereInput? get wallet;
  GStringFilter? get externalTransactionName;
  GStringFilter? get externalTransactionId;
  GStringFilter? get from;
  GStringFilter? get to;
  GStringFilter? get mode;
  GStringNullableFilter? get type;
  GStringNullableFilter? get status;
  GFloatNullableFilter? get amount;
  GStringFilter? get message;
  static Serializer<GWalletTransactionWhereInput> get serializer =>
      _$gWalletTransactionWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletTransactionWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletTransactionWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletTransactionWhereInput.serializer,
        json,
      );
}

abstract class GWalletTransactionOrderByInput
    implements
        Built<GWalletTransactionOrderByInput,
            GWalletTransactionOrderByInputBuilder> {
  GWalletTransactionOrderByInput._();

  factory GWalletTransactionOrderByInput(
          [Function(GWalletTransactionOrderByInputBuilder b) updates]) =
      _$GWalletTransactionOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get externalTransactionName;
  GOrderDirection? get externalTransactionId;
  GOrderDirection? get from;
  GOrderDirection? get to;
  GOrderDirection? get mode;
  GOrderDirection? get type;
  GOrderDirection? get status;
  GOrderDirection? get amount;
  GOrderDirection? get message;
  static Serializer<GWalletTransactionOrderByInput> get serializer =>
      _$gWalletTransactionOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletTransactionOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletTransactionOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletTransactionOrderByInput.serializer,
        json,
      );
}

abstract class GWalletTransactionUpdateInput
    implements
        Built<GWalletTransactionUpdateInput,
            GWalletTransactionUpdateInputBuilder> {
  GWalletTransactionUpdateInput._();

  factory GWalletTransactionUpdateInput(
          [Function(GWalletTransactionUpdateInputBuilder b) updates]) =
      _$GWalletTransactionUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GWalletRelateToOneForUpdateInput? get wallet;
  String? get externalTransactionName;
  String? get externalTransactionId;
  String? get from;
  String? get to;
  String? get mode;
  String? get type;
  String? get status;
  double? get amount;
  String? get message;
  static Serializer<GWalletTransactionUpdateInput> get serializer =>
      _$gWalletTransactionUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletTransactionUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletTransactionUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletTransactionUpdateInput.serializer,
        json,
      );
}

abstract class GWalletTransactionUpdateArgs
    implements
        Built<GWalletTransactionUpdateArgs,
            GWalletTransactionUpdateArgsBuilder> {
  GWalletTransactionUpdateArgs._();

  factory GWalletTransactionUpdateArgs(
          [Function(GWalletTransactionUpdateArgsBuilder b) updates]) =
      _$GWalletTransactionUpdateArgs;

  GWalletTransactionWhereUniqueInput get where;
  GWalletTransactionUpdateInput get data;
  static Serializer<GWalletTransactionUpdateArgs> get serializer =>
      _$gWalletTransactionUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletTransactionUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletTransactionUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletTransactionUpdateArgs.serializer,
        json,
      );
}

abstract class GWalletTransactionCreateInput
    implements
        Built<GWalletTransactionCreateInput,
            GWalletTransactionCreateInputBuilder> {
  GWalletTransactionCreateInput._();

  factory GWalletTransactionCreateInput(
          [Function(GWalletTransactionCreateInputBuilder b) updates]) =
      _$GWalletTransactionCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GWalletRelateToOneForCreateInput? get wallet;
  String? get externalTransactionName;
  String? get externalTransactionId;
  String? get from;
  String? get to;
  String? get mode;
  String? get type;
  String? get status;
  double? get amount;
  String? get message;
  static Serializer<GWalletTransactionCreateInput> get serializer =>
      _$gWalletTransactionCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GWalletTransactionCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWalletTransactionCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GWalletTransactionCreateInput.serializer,
        json,
      );
}

abstract class GOrderWhereUniqueInput
    implements Built<GOrderWhereUniqueInput, GOrderWhereUniqueInputBuilder> {
  GOrderWhereUniqueInput._();

  factory GOrderWhereUniqueInput(
          [Function(GOrderWhereUniqueInputBuilder b) updates]) =
      _$GOrderWhereUniqueInput;

  String? get id;
  static Serializer<GOrderWhereUniqueInput> get serializer =>
      _$gOrderWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderWhereUniqueInput.serializer,
        json,
      );
}

abstract class GOrderWhereInput
    implements Built<GOrderWhereInput, GOrderWhereInputBuilder> {
  GOrderWhereInput._();

  factory GOrderWhereInput([Function(GOrderWhereInputBuilder b) updates]) =
      _$GOrderWhereInput;

  BuiltList<GOrderWhereInput>? get AND;
  BuiltList<GOrderWhereInput>? get OR;
  BuiltList<GOrderWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GVehicleOrderManyRelationFilter? get vehicleOrders;
  GTestDriveOrderManyRelationFilter? get testDriveOrders;
  GPaymentManyRelationFilter? get payments;
  static Serializer<GOrderWhereInput> get serializer =>
      _$gOrderWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderWhereInput.serializer,
        json,
      );
}

abstract class GVehicleOrderManyRelationFilter
    implements
        Built<GVehicleOrderManyRelationFilter,
            GVehicleOrderManyRelationFilterBuilder> {
  GVehicleOrderManyRelationFilter._();

  factory GVehicleOrderManyRelationFilter(
          [Function(GVehicleOrderManyRelationFilterBuilder b) updates]) =
      _$GVehicleOrderManyRelationFilter;

  GVehicleOrderWhereInput? get every;
  GVehicleOrderWhereInput? get some;
  GVehicleOrderWhereInput? get none;
  static Serializer<GVehicleOrderManyRelationFilter> get serializer =>
      _$gVehicleOrderManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderManyRelationFilter.serializer,
        json,
      );
}

abstract class GTestDriveOrderManyRelationFilter
    implements
        Built<GTestDriveOrderManyRelationFilter,
            GTestDriveOrderManyRelationFilterBuilder> {
  GTestDriveOrderManyRelationFilter._();

  factory GTestDriveOrderManyRelationFilter(
          [Function(GTestDriveOrderManyRelationFilterBuilder b) updates]) =
      _$GTestDriveOrderManyRelationFilter;

  GTestDriveOrderWhereInput? get every;
  GTestDriveOrderWhereInput? get some;
  GTestDriveOrderWhereInput? get none;
  static Serializer<GTestDriveOrderManyRelationFilter> get serializer =>
      _$gTestDriveOrderManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderManyRelationFilter.serializer,
        json,
      );
}

abstract class GPaymentManyRelationFilter
    implements
        Built<GPaymentManyRelationFilter, GPaymentManyRelationFilterBuilder> {
  GPaymentManyRelationFilter._();

  factory GPaymentManyRelationFilter(
          [Function(GPaymentManyRelationFilterBuilder b) updates]) =
      _$GPaymentManyRelationFilter;

  GPaymentWhereInput? get every;
  GPaymentWhereInput? get some;
  GPaymentWhereInput? get none;
  static Serializer<GPaymentManyRelationFilter> get serializer =>
      _$gPaymentManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentManyRelationFilter.serializer,
        json,
      );
}

abstract class GOrderOrderByInput
    implements Built<GOrderOrderByInput, GOrderOrderByInputBuilder> {
  GOrderOrderByInput._();

  factory GOrderOrderByInput([Function(GOrderOrderByInputBuilder b) updates]) =
      _$GOrderOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GOrderOrderByInput> get serializer =>
      _$gOrderOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderOrderByInput.serializer,
        json,
      );
}

abstract class GOrderUpdateInput
    implements Built<GOrderUpdateInput, GOrderUpdateInputBuilder> {
  GOrderUpdateInput._();

  factory GOrderUpdateInput([Function(GOrderUpdateInputBuilder b) updates]) =
      _$GOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForUpdateInput? get testDriveOrders;
  GPaymentRelateToManyForUpdateInput? get payments;
  static Serializer<GOrderUpdateInput> get serializer =>
      _$gOrderUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderRelateToManyForUpdateInput
    implements
        Built<GVehicleOrderRelateToManyForUpdateInput,
            GVehicleOrderRelateToManyForUpdateInputBuilder> {
  GVehicleOrderRelateToManyForUpdateInput._();

  factory GVehicleOrderRelateToManyForUpdateInput(
      [Function(GVehicleOrderRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleOrderRelateToManyForUpdateInput;

  BuiltList<GVehicleOrderWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleOrderWhereUniqueInput>? get set;
  BuiltList<GVehicleOrderCreateInput>? get create;
  BuiltList<GVehicleOrderWhereUniqueInput>? get connect;
  static Serializer<GVehicleOrderRelateToManyForUpdateInput> get serializer =>
      _$gVehicleOrderRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderRelateToManyForUpdateInput
    implements
        Built<GTestDriveOrderRelateToManyForUpdateInput,
            GTestDriveOrderRelateToManyForUpdateInputBuilder> {
  GTestDriveOrderRelateToManyForUpdateInput._();

  factory GTestDriveOrderRelateToManyForUpdateInput(
      [Function(GTestDriveOrderRelateToManyForUpdateInputBuilder b)
          updates]) = _$GTestDriveOrderRelateToManyForUpdateInput;

  BuiltList<GTestDriveOrderWhereUniqueInput>? get disconnect;
  BuiltList<GTestDriveOrderWhereUniqueInput>? get set;
  BuiltList<GTestDriveOrderCreateInput>? get create;
  BuiltList<GTestDriveOrderWhereUniqueInput>? get connect;
  static Serializer<GTestDriveOrderRelateToManyForUpdateInput> get serializer =>
      _$gTestDriveOrderRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GPaymentRelateToManyForUpdateInput
    implements
        Built<GPaymentRelateToManyForUpdateInput,
            GPaymentRelateToManyForUpdateInputBuilder> {
  GPaymentRelateToManyForUpdateInput._();

  factory GPaymentRelateToManyForUpdateInput(
          [Function(GPaymentRelateToManyForUpdateInputBuilder b) updates]) =
      _$GPaymentRelateToManyForUpdateInput;

  BuiltList<GPaymentWhereUniqueInput>? get disconnect;
  BuiltList<GPaymentWhereUniqueInput>? get set;
  BuiltList<GPaymentCreateInput>? get create;
  BuiltList<GPaymentWhereUniqueInput>? get connect;
  static Serializer<GPaymentRelateToManyForUpdateInput> get serializer =>
      _$gPaymentRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GOrderUpdateArgs
    implements Built<GOrderUpdateArgs, GOrderUpdateArgsBuilder> {
  GOrderUpdateArgs._();

  factory GOrderUpdateArgs([Function(GOrderUpdateArgsBuilder b) updates]) =
      _$GOrderUpdateArgs;

  GOrderWhereUniqueInput get where;
  GOrderUpdateInput get data;
  static Serializer<GOrderUpdateArgs> get serializer =>
      _$gOrderUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderUpdateArgs.serializer,
        json,
      );
}

abstract class GOrderCreateInput
    implements Built<GOrderCreateInput, GOrderCreateInputBuilder> {
  GOrderCreateInput._();

  factory GOrderCreateInput([Function(GOrderCreateInputBuilder b) updates]) =
      _$GOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForCreateInput? get testDriveOrders;
  GPaymentRelateToManyForCreateInput? get payments;
  static Serializer<GOrderCreateInput> get serializer =>
      _$gOrderCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCreateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderRelateToManyForCreateInput
    implements
        Built<GVehicleOrderRelateToManyForCreateInput,
            GVehicleOrderRelateToManyForCreateInputBuilder> {
  GVehicleOrderRelateToManyForCreateInput._();

  factory GVehicleOrderRelateToManyForCreateInput(
      [Function(GVehicleOrderRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleOrderRelateToManyForCreateInput;

  BuiltList<GVehicleOrderCreateInput>? get create;
  BuiltList<GVehicleOrderWhereUniqueInput>? get connect;
  static Serializer<GVehicleOrderRelateToManyForCreateInput> get serializer =>
      _$gVehicleOrderRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderRelateToManyForCreateInput
    implements
        Built<GTestDriveOrderRelateToManyForCreateInput,
            GTestDriveOrderRelateToManyForCreateInputBuilder> {
  GTestDriveOrderRelateToManyForCreateInput._();

  factory GTestDriveOrderRelateToManyForCreateInput(
      [Function(GTestDriveOrderRelateToManyForCreateInputBuilder b)
          updates]) = _$GTestDriveOrderRelateToManyForCreateInput;

  BuiltList<GTestDriveOrderCreateInput>? get create;
  BuiltList<GTestDriveOrderWhereUniqueInput>? get connect;
  static Serializer<GTestDriveOrderRelateToManyForCreateInput> get serializer =>
      _$gTestDriveOrderRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GPaymentRelateToManyForCreateInput
    implements
        Built<GPaymentRelateToManyForCreateInput,
            GPaymentRelateToManyForCreateInputBuilder> {
  GPaymentRelateToManyForCreateInput._();

  factory GPaymentRelateToManyForCreateInput(
          [Function(GPaymentRelateToManyForCreateInputBuilder b) updates]) =
      _$GPaymentRelateToManyForCreateInput;

  BuiltList<GPaymentCreateInput>? get create;
  BuiltList<GPaymentWhereUniqueInput>? get connect;
  static Serializer<GPaymentRelateToManyForCreateInput> get serializer =>
      _$gPaymentRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GPaymentWhereUniqueInput
    implements
        Built<GPaymentWhereUniqueInput, GPaymentWhereUniqueInputBuilder> {
  GPaymentWhereUniqueInput._();

  factory GPaymentWhereUniqueInput(
          [Function(GPaymentWhereUniqueInputBuilder b) updates]) =
      _$GPaymentWhereUniqueInput;

  String? get id;
  static Serializer<GPaymentWhereUniqueInput> get serializer =>
      _$gPaymentWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentWhereUniqueInput.serializer,
        json,
      );
}

abstract class GPaymentWhereInput
    implements Built<GPaymentWhereInput, GPaymentWhereInputBuilder> {
  GPaymentWhereInput._();

  factory GPaymentWhereInput([Function(GPaymentWhereInputBuilder b) updates]) =
      _$GPaymentWhereInput;

  BuiltList<GPaymentWhereInput>? get AND;
  BuiltList<GPaymentWhereInput>? get OR;
  BuiltList<GPaymentWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GOrderWhereInput? get order;
  GStringFilter? get transactionId;
  GStringFilter? get name;
  GStringNullableFilter? get type;
  GStringNullableFilter? get status;
  GFloatFilter? get amount;
  GStringFilter? get comment;
  GStringFilter? get mode;
  static Serializer<GPaymentWhereInput> get serializer =>
      _$gPaymentWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentWhereInput.serializer,
        json,
      );
}

abstract class GFloatFilter
    implements Built<GFloatFilter, GFloatFilterBuilder> {
  GFloatFilter._();

  factory GFloatFilter([Function(GFloatFilterBuilder b) updates]) =
      _$GFloatFilter;

  double? get equals;
  @BuiltValueField(wireName: 'in')
  BuiltList<double>? get Gin;
  BuiltList<double>? get notIn;
  double? get lt;
  double? get lte;
  double? get gt;
  double? get gte;
  GFloatFilter? get not;
  static Serializer<GFloatFilter> get serializer => _$gFloatFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFloatFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFloatFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFloatFilter.serializer,
        json,
      );
}

abstract class GPaymentOrderByInput
    implements Built<GPaymentOrderByInput, GPaymentOrderByInputBuilder> {
  GPaymentOrderByInput._();

  factory GPaymentOrderByInput(
          [Function(GPaymentOrderByInputBuilder b) updates]) =
      _$GPaymentOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get transactionId;
  GOrderDirection? get name;
  GOrderDirection? get type;
  GOrderDirection? get status;
  GOrderDirection? get amount;
  GOrderDirection? get comment;
  GOrderDirection? get mode;
  static Serializer<GPaymentOrderByInput> get serializer =>
      _$gPaymentOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentOrderByInput.serializer,
        json,
      );
}

abstract class GPaymentUpdateInput
    implements Built<GPaymentUpdateInput, GPaymentUpdateInputBuilder> {
  GPaymentUpdateInput._();

  factory GPaymentUpdateInput(
      [Function(GPaymentUpdateInputBuilder b) updates]) = _$GPaymentUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GOrderRelateToOneForUpdateInput? get order;
  String? get transactionId;
  String? get name;
  String? get type;
  String? get status;
  double? get amount;
  String? get comment;
  String? get mode;
  static Serializer<GPaymentUpdateInput> get serializer =>
      _$gPaymentUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentUpdateInput.serializer,
        json,
      );
}

abstract class GOrderRelateToOneForUpdateInput
    implements
        Built<GOrderRelateToOneForUpdateInput,
            GOrderRelateToOneForUpdateInputBuilder> {
  GOrderRelateToOneForUpdateInput._();

  factory GOrderRelateToOneForUpdateInput(
          [Function(GOrderRelateToOneForUpdateInputBuilder b) updates]) =
      _$GOrderRelateToOneForUpdateInput;

  GOrderCreateInput? get create;
  GOrderWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GOrderRelateToOneForUpdateInput> get serializer =>
      _$gOrderRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRelateToOneForUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GPaymentUpdateArgs
    implements Built<GPaymentUpdateArgs, GPaymentUpdateArgsBuilder> {
  GPaymentUpdateArgs._();

  factory GPaymentUpdateArgs([Function(GPaymentUpdateArgsBuilder b) updates]) =
      _$GPaymentUpdateArgs;

  GPaymentWhereUniqueInput get where;
  GPaymentUpdateInput get data;
  static Serializer<GPaymentUpdateArgs> get serializer =>
      _$gPaymentUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentUpdateArgs.serializer,
        json,
      );
}

abstract class GPaymentCreateInput
    implements Built<GPaymentCreateInput, GPaymentCreateInputBuilder> {
  GPaymentCreateInput._();

  factory GPaymentCreateInput(
      [Function(GPaymentCreateInputBuilder b) updates]) = _$GPaymentCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GOrderRelateToOneForCreateInput? get order;
  String? get transactionId;
  String? get name;
  String? get type;
  String? get status;
  double? get amount;
  String? get comment;
  String? get mode;
  static Serializer<GPaymentCreateInput> get serializer =>
      _$gPaymentCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentCreateInput.serializer,
        json,
      );
}

abstract class GOrderRelateToOneForCreateInput
    implements
        Built<GOrderRelateToOneForCreateInput,
            GOrderRelateToOneForCreateInputBuilder> {
  GOrderRelateToOneForCreateInput._();

  factory GOrderRelateToOneForCreateInput(
          [Function(GOrderRelateToOneForCreateInputBuilder b) updates]) =
      _$GOrderRelateToOneForCreateInput;

  GOrderCreateInput? get create;
  GOrderWhereUniqueInput? get connect;
  static Serializer<GOrderRelateToOneForCreateInput> get serializer =>
      _$gOrderRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRelateToOneForCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderWhereUniqueInput
    implements
        Built<GVehicleOrderWhereUniqueInput,
            GVehicleOrderWhereUniqueInputBuilder> {
  GVehicleOrderWhereUniqueInput._();

  factory GVehicleOrderWhereUniqueInput(
          [Function(GVehicleOrderWhereUniqueInputBuilder b) updates]) =
      _$GVehicleOrderWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleOrderWhereUniqueInput> get serializer =>
      _$gVehicleOrderWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleOrderWhereInput
    implements Built<GVehicleOrderWhereInput, GVehicleOrderWhereInputBuilder> {
  GVehicleOrderWhereInput._();

  factory GVehicleOrderWhereInput(
          [Function(GVehicleOrderWhereInputBuilder b) updates]) =
      _$GVehicleOrderWhereInput;

  BuiltList<GVehicleOrderWhereInput>? get AND;
  BuiltList<GVehicleOrderWhereInput>? get OR;
  BuiltList<GVehicleOrderWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleDealerWhereInput? get dealer;
  GOrderWhereInput? get order;
  GIntNullableFilter? get price;
  GStringNullableFilter? get status;
  static Serializer<GVehicleOrderWhereInput> get serializer =>
      _$gVehicleOrderWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderWhereInput.serializer,
        json,
      );
}

abstract class GVehicleOrderOrderByInput
    implements
        Built<GVehicleOrderOrderByInput, GVehicleOrderOrderByInputBuilder> {
  GVehicleOrderOrderByInput._();

  factory GVehicleOrderOrderByInput(
          [Function(GVehicleOrderOrderByInputBuilder b) updates]) =
      _$GVehicleOrderOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get price;
  GOrderDirection? get status;
  static Serializer<GVehicleOrderOrderByInput> get serializer =>
      _$gVehicleOrderOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleOrderUpdateInput
    implements
        Built<GVehicleOrderUpdateInput, GVehicleOrderUpdateInputBuilder> {
  GVehicleOrderUpdateInput._();

  factory GVehicleOrderUpdateInput(
          [Function(GVehicleOrderUpdateInputBuilder b) updates]) =
      _$GVehicleOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleDealerRelateToOneForUpdateInput? get dealer;
  GOrderRelateToOneForUpdateInput? get order;
  int? get price;
  String? get status;
  static Serializer<GVehicleOrderUpdateInput> get serializer =>
      _$gVehicleOrderUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderUpdateArgs
    implements Built<GVehicleOrderUpdateArgs, GVehicleOrderUpdateArgsBuilder> {
  GVehicleOrderUpdateArgs._();

  factory GVehicleOrderUpdateArgs(
          [Function(GVehicleOrderUpdateArgsBuilder b) updates]) =
      _$GVehicleOrderUpdateArgs;

  GVehicleOrderWhereUniqueInput get where;
  GVehicleOrderUpdateInput get data;
  static Serializer<GVehicleOrderUpdateArgs> get serializer =>
      _$gVehicleOrderUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleOrderCreateInput
    implements
        Built<GVehicleOrderCreateInput, GVehicleOrderCreateInputBuilder> {
  GVehicleOrderCreateInput._();

  factory GVehicleOrderCreateInput(
          [Function(GVehicleOrderCreateInputBuilder b) updates]) =
      _$GVehicleOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleDealerRelateToOneForCreateInput? get dealer;
  GOrderRelateToOneForCreateInput? get order;
  int? get price;
  String? get status;
  static Serializer<GVehicleOrderCreateInput> get serializer =>
      _$gVehicleOrderCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleOrderCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderCreateInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderWhereUniqueInput
    implements
        Built<GTestDriveOrderWhereUniqueInput,
            GTestDriveOrderWhereUniqueInputBuilder> {
  GTestDriveOrderWhereUniqueInput._();

  factory GTestDriveOrderWhereUniqueInput(
          [Function(GTestDriveOrderWhereUniqueInputBuilder b) updates]) =
      _$GTestDriveOrderWhereUniqueInput;

  String? get id;
  static Serializer<GTestDriveOrderWhereUniqueInput> get serializer =>
      _$gTestDriveOrderWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderWhereUniqueInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderWhereInput
    implements
        Built<GTestDriveOrderWhereInput, GTestDriveOrderWhereInputBuilder> {
  GTestDriveOrderWhereInput._();

  factory GTestDriveOrderWhereInput(
          [Function(GTestDriveOrderWhereInputBuilder b) updates]) =
      _$GTestDriveOrderWhereInput;

  BuiltList<GTestDriveOrderWhereInput>? get AND;
  BuiltList<GTestDriveOrderWhereInput>? get OR;
  BuiltList<GTestDriveOrderWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GTestDriveDealerWhereInput? get dealer;
  GOrderWhereInput? get order;
  GIntNullableFilter? get price;
  GStringNullableFilter? get status;
  static Serializer<GTestDriveOrderWhereInput> get serializer =>
      _$gTestDriveOrderWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderWhereInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderOrderByInput
    implements
        Built<GTestDriveOrderOrderByInput, GTestDriveOrderOrderByInputBuilder> {
  GTestDriveOrderOrderByInput._();

  factory GTestDriveOrderOrderByInput(
          [Function(GTestDriveOrderOrderByInputBuilder b) updates]) =
      _$GTestDriveOrderOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get price;
  GOrderDirection? get status;
  static Serializer<GTestDriveOrderOrderByInput> get serializer =>
      _$gTestDriveOrderOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderOrderByInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderUpdateInput
    implements
        Built<GTestDriveOrderUpdateInput, GTestDriveOrderUpdateInputBuilder> {
  GTestDriveOrderUpdateInput._();

  factory GTestDriveOrderUpdateInput(
          [Function(GTestDriveOrderUpdateInputBuilder b) updates]) =
      _$GTestDriveOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GTestDriveDealerRelateToOneForUpdateInput? get dealer;
  GOrderRelateToOneForUpdateInput? get order;
  int? get price;
  String? get status;
  static Serializer<GTestDriveOrderUpdateInput> get serializer =>
      _$gTestDriveOrderUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderUpdateInput.serializer,
        json,
      );
}

abstract class GTestDriveDealerRelateToOneForUpdateInput
    implements
        Built<GTestDriveDealerRelateToOneForUpdateInput,
            GTestDriveDealerRelateToOneForUpdateInputBuilder> {
  GTestDriveDealerRelateToOneForUpdateInput._();

  factory GTestDriveDealerRelateToOneForUpdateInput(
      [Function(GTestDriveDealerRelateToOneForUpdateInputBuilder b)
          updates]) = _$GTestDriveDealerRelateToOneForUpdateInput;

  GTestDriveDealerCreateInput? get create;
  GTestDriveDealerWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GTestDriveDealerRelateToOneForUpdateInput> get serializer =>
      _$gTestDriveDealerRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderUpdateArgs
    implements
        Built<GTestDriveOrderUpdateArgs, GTestDriveOrderUpdateArgsBuilder> {
  GTestDriveOrderUpdateArgs._();

  factory GTestDriveOrderUpdateArgs(
          [Function(GTestDriveOrderUpdateArgsBuilder b) updates]) =
      _$GTestDriveOrderUpdateArgs;

  GTestDriveOrderWhereUniqueInput get where;
  GTestDriveOrderUpdateInput get data;
  static Serializer<GTestDriveOrderUpdateArgs> get serializer =>
      _$gTestDriveOrderUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderUpdateArgs.serializer,
        json,
      );
}

abstract class GTestDriveOrderCreateInput
    implements
        Built<GTestDriveOrderCreateInput, GTestDriveOrderCreateInputBuilder> {
  GTestDriveOrderCreateInput._();

  factory GTestDriveOrderCreateInput(
          [Function(GTestDriveOrderCreateInputBuilder b) updates]) =
      _$GTestDriveOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GTestDriveDealerRelateToOneForCreateInput? get dealer;
  GOrderRelateToOneForCreateInput? get order;
  int? get price;
  String? get status;
  static Serializer<GTestDriveOrderCreateInput> get serializer =>
      _$gTestDriveOrderCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveOrderCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveOrderCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveOrderCreateInput.serializer,
        json,
      );
}

abstract class GTestDriveDealerRelateToOneForCreateInput
    implements
        Built<GTestDriveDealerRelateToOneForCreateInput,
            GTestDriveDealerRelateToOneForCreateInputBuilder> {
  GTestDriveDealerRelateToOneForCreateInput._();

  factory GTestDriveDealerRelateToOneForCreateInput(
      [Function(GTestDriveDealerRelateToOneForCreateInputBuilder b)
          updates]) = _$GTestDriveDealerRelateToOneForCreateInput;

  GTestDriveDealerCreateInput? get create;
  GTestDriveDealerWhereUniqueInput? get connect;
  static Serializer<GTestDriveDealerRelateToOneForCreateInput> get serializer =>
      _$gTestDriveDealerRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTestDriveDealerRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTestDriveDealerRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTestDriveDealerRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestWhereUniqueInput
    implements
        Built<GOrderCancellationRequestWhereUniqueInput,
            GOrderCancellationRequestWhereUniqueInputBuilder> {
  GOrderCancellationRequestWhereUniqueInput._();

  factory GOrderCancellationRequestWhereUniqueInput(
      [Function(GOrderCancellationRequestWhereUniqueInputBuilder b)
          updates]) = _$GOrderCancellationRequestWhereUniqueInput;

  String? get id;
  static Serializer<GOrderCancellationRequestWhereUniqueInput> get serializer =>
      _$gOrderCancellationRequestWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCancellationRequestWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCancellationRequestWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCancellationRequestWhereUniqueInput.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestWhereInput
    implements
        Built<GOrderCancellationRequestWhereInput,
            GOrderCancellationRequestWhereInputBuilder> {
  GOrderCancellationRequestWhereInput._();

  factory GOrderCancellationRequestWhereInput(
          [Function(GOrderCancellationRequestWhereInputBuilder b) updates]) =
      _$GOrderCancellationRequestWhereInput;

  BuiltList<GOrderCancellationRequestWhereInput>? get AND;
  BuiltList<GOrderCancellationRequestWhereInput>? get OR;
  BuiltList<GOrderCancellationRequestWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleOrderManyRelationFilter? get vehicleOrders;
  GTestDriveOrderManyRelationFilter? get testDriveOrders;
  GBooleanFilter? get approved;
  GStringFilter? get reason;
  GStringFilter? get description;
  static Serializer<GOrderCancellationRequestWhereInput> get serializer =>
      _$gOrderCancellationRequestWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCancellationRequestWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCancellationRequestWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCancellationRequestWhereInput.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestOrderByInput
    implements
        Built<GOrderCancellationRequestOrderByInput,
            GOrderCancellationRequestOrderByInputBuilder> {
  GOrderCancellationRequestOrderByInput._();

  factory GOrderCancellationRequestOrderByInput(
          [Function(GOrderCancellationRequestOrderByInputBuilder b) updates]) =
      _$GOrderCancellationRequestOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get approved;
  GOrderDirection? get reason;
  GOrderDirection? get description;
  static Serializer<GOrderCancellationRequestOrderByInput> get serializer =>
      _$gOrderCancellationRequestOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCancellationRequestOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCancellationRequestOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCancellationRequestOrderByInput.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestUpdateInput
    implements
        Built<GOrderCancellationRequestUpdateInput,
            GOrderCancellationRequestUpdateInputBuilder> {
  GOrderCancellationRequestUpdateInput._();

  factory GOrderCancellationRequestUpdateInput(
          [Function(GOrderCancellationRequestUpdateInputBuilder b) updates]) =
      _$GOrderCancellationRequestUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForUpdateInput? get testDriveOrders;
  bool? get approved;
  String? get reason;
  String? get description;
  static Serializer<GOrderCancellationRequestUpdateInput> get serializer =>
      _$gOrderCancellationRequestUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCancellationRequestUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCancellationRequestUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCancellationRequestUpdateInput.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestUpdateArgs
    implements
        Built<GOrderCancellationRequestUpdateArgs,
            GOrderCancellationRequestUpdateArgsBuilder> {
  GOrderCancellationRequestUpdateArgs._();

  factory GOrderCancellationRequestUpdateArgs(
          [Function(GOrderCancellationRequestUpdateArgsBuilder b) updates]) =
      _$GOrderCancellationRequestUpdateArgs;

  GOrderCancellationRequestWhereUniqueInput get where;
  GOrderCancellationRequestUpdateInput get data;
  static Serializer<GOrderCancellationRequestUpdateArgs> get serializer =>
      _$gOrderCancellationRequestUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCancellationRequestUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCancellationRequestUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCancellationRequestUpdateArgs.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestCreateInput
    implements
        Built<GOrderCancellationRequestCreateInput,
            GOrderCancellationRequestCreateInputBuilder> {
  GOrderCancellationRequestCreateInput._();

  factory GOrderCancellationRequestCreateInput(
          [Function(GOrderCancellationRequestCreateInputBuilder b) updates]) =
      _$GOrderCancellationRequestCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForCreateInput? get testDriveOrders;
  bool? get approved;
  String? get reason;
  String? get description;
  static Serializer<GOrderCancellationRequestCreateInput> get serializer =>
      _$gOrderCancellationRequestCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderCancellationRequestCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderCancellationRequestCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderCancellationRequestCreateInput.serializer,
        json,
      );
}

abstract class GOrderRejectionByDealerWhereUniqueInput
    implements
        Built<GOrderRejectionByDealerWhereUniqueInput,
            GOrderRejectionByDealerWhereUniqueInputBuilder> {
  GOrderRejectionByDealerWhereUniqueInput._();

  factory GOrderRejectionByDealerWhereUniqueInput(
      [Function(GOrderRejectionByDealerWhereUniqueInputBuilder b)
          updates]) = _$GOrderRejectionByDealerWhereUniqueInput;

  String? get id;
  static Serializer<GOrderRejectionByDealerWhereUniqueInput> get serializer =>
      _$gOrderRejectionByDealerWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRejectionByDealerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRejectionByDealerWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRejectionByDealerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GOrderRejectionByDealerWhereInput
    implements
        Built<GOrderRejectionByDealerWhereInput,
            GOrderRejectionByDealerWhereInputBuilder> {
  GOrderRejectionByDealerWhereInput._();

  factory GOrderRejectionByDealerWhereInput(
          [Function(GOrderRejectionByDealerWhereInputBuilder b) updates]) =
      _$GOrderRejectionByDealerWhereInput;

  BuiltList<GOrderRejectionByDealerWhereInput>? get AND;
  BuiltList<GOrderRejectionByDealerWhereInput>? get OR;
  BuiltList<GOrderRejectionByDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleOrderManyRelationFilter? get vehicleOrders;
  GTestDriveOrderManyRelationFilter? get testDriveOrders;
  GBooleanFilter? get approved;
  GStringFilter? get reason;
  GStringFilter? get description;
  static Serializer<GOrderRejectionByDealerWhereInput> get serializer =>
      _$gOrderRejectionByDealerWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRejectionByDealerWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRejectionByDealerWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRejectionByDealerWhereInput.serializer,
        json,
      );
}

abstract class GOrderRejectionByDealerOrderByInput
    implements
        Built<GOrderRejectionByDealerOrderByInput,
            GOrderRejectionByDealerOrderByInputBuilder> {
  GOrderRejectionByDealerOrderByInput._();

  factory GOrderRejectionByDealerOrderByInput(
          [Function(GOrderRejectionByDealerOrderByInputBuilder b) updates]) =
      _$GOrderRejectionByDealerOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get approved;
  GOrderDirection? get reason;
  GOrderDirection? get description;
  static Serializer<GOrderRejectionByDealerOrderByInput> get serializer =>
      _$gOrderRejectionByDealerOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRejectionByDealerOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRejectionByDealerOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRejectionByDealerOrderByInput.serializer,
        json,
      );
}

abstract class GOrderRejectionByDealerUpdateInput
    implements
        Built<GOrderRejectionByDealerUpdateInput,
            GOrderRejectionByDealerUpdateInputBuilder> {
  GOrderRejectionByDealerUpdateInput._();

  factory GOrderRejectionByDealerUpdateInput(
          [Function(GOrderRejectionByDealerUpdateInputBuilder b) updates]) =
      _$GOrderRejectionByDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForUpdateInput? get testDriveOrders;
  bool? get approved;
  String? get reason;
  String? get description;
  static Serializer<GOrderRejectionByDealerUpdateInput> get serializer =>
      _$gOrderRejectionByDealerUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRejectionByDealerUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRejectionByDealerUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRejectionByDealerUpdateInput.serializer,
        json,
      );
}

abstract class GOrderRejectionByDealerUpdateArgs
    implements
        Built<GOrderRejectionByDealerUpdateArgs,
            GOrderRejectionByDealerUpdateArgsBuilder> {
  GOrderRejectionByDealerUpdateArgs._();

  factory GOrderRejectionByDealerUpdateArgs(
          [Function(GOrderRejectionByDealerUpdateArgsBuilder b) updates]) =
      _$GOrderRejectionByDealerUpdateArgs;

  GOrderRejectionByDealerWhereUniqueInput get where;
  GOrderRejectionByDealerUpdateInput get data;
  static Serializer<GOrderRejectionByDealerUpdateArgs> get serializer =>
      _$gOrderRejectionByDealerUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRejectionByDealerUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRejectionByDealerUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRejectionByDealerUpdateArgs.serializer,
        json,
      );
}

abstract class GOrderRejectionByDealerCreateInput
    implements
        Built<GOrderRejectionByDealerCreateInput,
            GOrderRejectionByDealerCreateInputBuilder> {
  GOrderRejectionByDealerCreateInput._();

  factory GOrderRejectionByDealerCreateInput(
          [Function(GOrderRejectionByDealerCreateInputBuilder b) updates]) =
      _$GOrderRejectionByDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForCreateInput? get testDriveOrders;
  bool? get approved;
  String? get reason;
  String? get description;
  static Serializer<GOrderRejectionByDealerCreateInput> get serializer =>
      _$gOrderRejectionByDealerCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderRejectionByDealerCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderRejectionByDealerCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderRejectionByDealerCreateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewWhereUniqueInput
    implements
        Built<GUserVehicleReviewWhereUniqueInput,
            GUserVehicleReviewWhereUniqueInputBuilder> {
  GUserVehicleReviewWhereUniqueInput._();

  factory GUserVehicleReviewWhereUniqueInput(
          [Function(GUserVehicleReviewWhereUniqueInputBuilder b) updates]) =
      _$GUserVehicleReviewWhereUniqueInput;

  String? get id;
  static Serializer<GUserVehicleReviewWhereUniqueInput> get serializer =>
      _$gUserVehicleReviewWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVehicleReviewWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewWhereUniqueInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewWhereInput
    implements
        Built<GUserVehicleReviewWhereInput,
            GUserVehicleReviewWhereInputBuilder> {
  GUserVehicleReviewWhereInput._();

  factory GUserVehicleReviewWhereInput(
          [Function(GUserVehicleReviewWhereInputBuilder b) updates]) =
      _$GUserVehicleReviewWhereInput;

  BuiltList<GUserVehicleReviewWhereInput>? get AND;
  BuiltList<GUserVehicleReviewWhereInput>? get OR;
  BuiltList<GUserVehicleReviewWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GVehicleWhereInput? get vehicle;
  GStringFilter? get review;
  GIntFilter? get rating;
  static Serializer<GUserVehicleReviewWhereInput> get serializer =>
      _$gUserVehicleReviewWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVehicleReviewWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewWhereInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewOrderByInput
    implements
        Built<GUserVehicleReviewOrderByInput,
            GUserVehicleReviewOrderByInputBuilder> {
  GUserVehicleReviewOrderByInput._();

  factory GUserVehicleReviewOrderByInput(
          [Function(GUserVehicleReviewOrderByInputBuilder b) updates]) =
      _$GUserVehicleReviewOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get review;
  GOrderDirection? get rating;
  static Serializer<GUserVehicleReviewOrderByInput> get serializer =>
      _$gUserVehicleReviewOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVehicleReviewOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewOrderByInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewUpdateInput
    implements
        Built<GUserVehicleReviewUpdateInput,
            GUserVehicleReviewUpdateInputBuilder> {
  GUserVehicleReviewUpdateInput._();

  factory GUserVehicleReviewUpdateInput(
          [Function(GUserVehicleReviewUpdateInputBuilder b) updates]) =
      _$GUserVehicleReviewUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  String? get review;
  int? get rating;
  static Serializer<GUserVehicleReviewUpdateInput> get serializer =>
      _$gUserVehicleReviewUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVehicleReviewUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewUpdateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewUpdateArgs
    implements
        Built<GUserVehicleReviewUpdateArgs,
            GUserVehicleReviewUpdateArgsBuilder> {
  GUserVehicleReviewUpdateArgs._();

  factory GUserVehicleReviewUpdateArgs(
          [Function(GUserVehicleReviewUpdateArgsBuilder b) updates]) =
      _$GUserVehicleReviewUpdateArgs;

  GUserVehicleReviewWhereUniqueInput get where;
  GUserVehicleReviewUpdateInput get data;
  static Serializer<GUserVehicleReviewUpdateArgs> get serializer =>
      _$gUserVehicleReviewUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVehicleReviewUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewUpdateArgs.serializer,
        json,
      );
}

abstract class GUserVehicleReviewCreateInput
    implements
        Built<GUserVehicleReviewCreateInput,
            GUserVehicleReviewCreateInputBuilder> {
  GUserVehicleReviewCreateInput._();

  factory GUserVehicleReviewCreateInput(
          [Function(GUserVehicleReviewCreateInputBuilder b) updates]) =
      _$GUserVehicleReviewCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GVehicleRelateToOneForCreateInput? get vehicle;
  String? get review;
  int? get rating;
  static Serializer<GUserVehicleReviewCreateInput> get serializer =>
      _$gUserVehicleReviewCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVehicleReviewCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewCreateInput.serializer,
        json,
      );
}

abstract class GExpertReviewWhereUniqueInput
    implements
        Built<GExpertReviewWhereUniqueInput,
            GExpertReviewWhereUniqueInputBuilder> {
  GExpertReviewWhereUniqueInput._();

  factory GExpertReviewWhereUniqueInput(
          [Function(GExpertReviewWhereUniqueInputBuilder b) updates]) =
      _$GExpertReviewWhereUniqueInput;

  String? get id;
  static Serializer<GExpertReviewWhereUniqueInput> get serializer =>
      _$gExpertReviewWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExpertReviewWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExpertReviewWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExpertReviewWhereUniqueInput.serializer,
        json,
      );
}

abstract class GExpertReviewWhereInput
    implements Built<GExpertReviewWhereInput, GExpertReviewWhereInputBuilder> {
  GExpertReviewWhereInput._();

  factory GExpertReviewWhereInput(
          [Function(GExpertReviewWhereInputBuilder b) updates]) =
      _$GExpertReviewWhereInput;

  BuiltList<GExpertReviewWhereInput>? get AND;
  BuiltList<GExpertReviewWhereInput>? get OR;
  BuiltList<GExpertReviewWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get title;
  GStringFilter? get description;
  GUserWhereInput? get user;
  GIntNullableFilter? get likes;
  static Serializer<GExpertReviewWhereInput> get serializer =>
      _$gExpertReviewWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExpertReviewWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExpertReviewWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExpertReviewWhereInput.serializer,
        json,
      );
}

abstract class GExpertReviewOrderByInput
    implements
        Built<GExpertReviewOrderByInput, GExpertReviewOrderByInputBuilder> {
  GExpertReviewOrderByInput._();

  factory GExpertReviewOrderByInput(
          [Function(GExpertReviewOrderByInputBuilder b) updates]) =
      _$GExpertReviewOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get description;
  GOrderDirection? get likes;
  static Serializer<GExpertReviewOrderByInput> get serializer =>
      _$gExpertReviewOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExpertReviewOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExpertReviewOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExpertReviewOrderByInput.serializer,
        json,
      );
}

abstract class GExpertReviewUpdateInput
    implements
        Built<GExpertReviewUpdateInput, GExpertReviewUpdateInputBuilder> {
  GExpertReviewUpdateInput._();

  factory GExpertReviewUpdateInput(
          [Function(GExpertReviewUpdateInputBuilder b) updates]) =
      _$GExpertReviewUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  GUserRelateToOneForUpdateInput? get user;
  int? get likes;
  static Serializer<GExpertReviewUpdateInput> get serializer =>
      _$gExpertReviewUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExpertReviewUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExpertReviewUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExpertReviewUpdateInput.serializer,
        json,
      );
}

abstract class GExpertReviewUpdateArgs
    implements Built<GExpertReviewUpdateArgs, GExpertReviewUpdateArgsBuilder> {
  GExpertReviewUpdateArgs._();

  factory GExpertReviewUpdateArgs(
          [Function(GExpertReviewUpdateArgsBuilder b) updates]) =
      _$GExpertReviewUpdateArgs;

  GExpertReviewWhereUniqueInput get where;
  GExpertReviewUpdateInput get data;
  static Serializer<GExpertReviewUpdateArgs> get serializer =>
      _$gExpertReviewUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExpertReviewUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExpertReviewUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExpertReviewUpdateArgs.serializer,
        json,
      );
}

abstract class GExpertReviewCreateInput
    implements
        Built<GExpertReviewCreateInput, GExpertReviewCreateInputBuilder> {
  GExpertReviewCreateInput._();

  factory GExpertReviewCreateInput(
          [Function(GExpertReviewCreateInputBuilder b) updates]) =
      _$GExpertReviewCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  GUserRelateToOneForCreateInput? get user;
  int? get likes;
  static Serializer<GExpertReviewCreateInput> get serializer =>
      _$gExpertReviewCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExpertReviewCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GExpertReviewCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExpertReviewCreateInput.serializer,
        json,
      );
}

abstract class GDealerWhereUniqueInput
    implements Built<GDealerWhereUniqueInput, GDealerWhereUniqueInputBuilder> {
  GDealerWhereUniqueInput._();

  factory GDealerWhereUniqueInput(
          [Function(GDealerWhereUniqueInputBuilder b) updates]) =
      _$GDealerWhereUniqueInput;

  String? get id;
  static Serializer<GDealerWhereUniqueInput> get serializer =>
      _$gDealerWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GDealerWhereInput
    implements Built<GDealerWhereInput, GDealerWhereInputBuilder> {
  GDealerWhereInput._();

  factory GDealerWhereInput([Function(GDealerWhereInputBuilder b) updates]) =
      _$GDealerWhereInput;

  BuiltList<GDealerWhereInput>? get AND;
  BuiltList<GDealerWhereInput>? get OR;
  BuiltList<GDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GBooleanFilter? get approved;
  static Serializer<GDealerWhereInput> get serializer =>
      _$gDealerWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerWhereInput.serializer,
        json,
      );
}

abstract class GDealerOrderByInput
    implements Built<GDealerOrderByInput, GDealerOrderByInputBuilder> {
  GDealerOrderByInput._();

  factory GDealerOrderByInput(
      [Function(GDealerOrderByInputBuilder b) updates]) = _$GDealerOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get approved;
  static Serializer<GDealerOrderByInput> get serializer =>
      _$gDealerOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerOrderByInput.serializer,
        json,
      );
}

abstract class GDealerUpdateInput
    implements Built<GDealerUpdateInput, GDealerUpdateInputBuilder> {
  GDealerUpdateInput._();

  factory GDealerUpdateInput([Function(GDealerUpdateInputBuilder b) updates]) =
      _$GDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  bool? get approved;
  static Serializer<GDealerUpdateInput> get serializer =>
      _$gDealerUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerUpdateInput.serializer,
        json,
      );
}

abstract class GDealerUpdateArgs
    implements Built<GDealerUpdateArgs, GDealerUpdateArgsBuilder> {
  GDealerUpdateArgs._();

  factory GDealerUpdateArgs([Function(GDealerUpdateArgsBuilder b) updates]) =
      _$GDealerUpdateArgs;

  GDealerWhereUniqueInput get where;
  GDealerUpdateInput get data;
  static Serializer<GDealerUpdateArgs> get serializer =>
      _$gDealerUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerUpdateArgs.serializer,
        json,
      );
}

abstract class GDealerCreateInput
    implements Built<GDealerCreateInput, GDealerCreateInputBuilder> {
  GDealerCreateInput._();

  factory GDealerCreateInput([Function(GDealerCreateInputBuilder b) updates]) =
      _$GDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  bool? get approved;
  static Serializer<GDealerCreateInput> get serializer =>
      _$gDealerCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDealerCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerCreateInput.serializer,
        json,
      );
}

abstract class GNotificationTypeWhereUniqueInput
    implements
        Built<GNotificationTypeWhereUniqueInput,
            GNotificationTypeWhereUniqueInputBuilder> {
  GNotificationTypeWhereUniqueInput._();

  factory GNotificationTypeWhereUniqueInput(
          [Function(GNotificationTypeWhereUniqueInputBuilder b) updates]) =
      _$GNotificationTypeWhereUniqueInput;

  String? get id;
  String? get name;
  static Serializer<GNotificationTypeWhereUniqueInput> get serializer =>
      _$gNotificationTypeWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GNotificationTypeWhereInput
    implements
        Built<GNotificationTypeWhereInput, GNotificationTypeWhereInputBuilder> {
  GNotificationTypeWhereInput._();

  factory GNotificationTypeWhereInput(
          [Function(GNotificationTypeWhereInputBuilder b) updates]) =
      _$GNotificationTypeWhereInput;

  BuiltList<GNotificationTypeWhereInput>? get AND;
  BuiltList<GNotificationTypeWhereInput>? get OR;
  BuiltList<GNotificationTypeWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  static Serializer<GNotificationTypeWhereInput> get serializer =>
      _$gNotificationTypeWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeWhereInput.serializer,
        json,
      );
}

abstract class GNotificationTypeOrderByInput
    implements
        Built<GNotificationTypeOrderByInput,
            GNotificationTypeOrderByInputBuilder> {
  GNotificationTypeOrderByInput._();

  factory GNotificationTypeOrderByInput(
          [Function(GNotificationTypeOrderByInputBuilder b) updates]) =
      _$GNotificationTypeOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  static Serializer<GNotificationTypeOrderByInput> get serializer =>
      _$gNotificationTypeOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeOrderByInput.serializer,
        json,
      );
}

abstract class GNotificationTypeUpdateInput
    implements
        Built<GNotificationTypeUpdateInput,
            GNotificationTypeUpdateInputBuilder> {
  GNotificationTypeUpdateInput._();

  factory GNotificationTypeUpdateInput(
          [Function(GNotificationTypeUpdateInputBuilder b) updates]) =
      _$GNotificationTypeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  static Serializer<GNotificationTypeUpdateInput> get serializer =>
      _$gNotificationTypeUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeUpdateInput.serializer,
        json,
      );
}

abstract class GNotificationTypeUpdateArgs
    implements
        Built<GNotificationTypeUpdateArgs, GNotificationTypeUpdateArgsBuilder> {
  GNotificationTypeUpdateArgs._();

  factory GNotificationTypeUpdateArgs(
          [Function(GNotificationTypeUpdateArgsBuilder b) updates]) =
      _$GNotificationTypeUpdateArgs;

  GNotificationTypeWhereUniqueInput get where;
  GNotificationTypeUpdateInput get data;
  static Serializer<GNotificationTypeUpdateArgs> get serializer =>
      _$gNotificationTypeUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeUpdateArgs.serializer,
        json,
      );
}

abstract class GNotificationTypeCreateInput
    implements
        Built<GNotificationTypeCreateInput,
            GNotificationTypeCreateInputBuilder> {
  GNotificationTypeCreateInput._();

  factory GNotificationTypeCreateInput(
          [Function(GNotificationTypeCreateInputBuilder b) updates]) =
      _$GNotificationTypeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  static Serializer<GNotificationTypeCreateInput> get serializer =>
      _$gNotificationTypeCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeCreateInput.serializer,
        json,
      );
}

abstract class GEmailNotificationTemplateWhereUniqueInput
    implements
        Built<GEmailNotificationTemplateWhereUniqueInput,
            GEmailNotificationTemplateWhereUniqueInputBuilder> {
  GEmailNotificationTemplateWhereUniqueInput._();

  factory GEmailNotificationTemplateWhereUniqueInput(
      [Function(GEmailNotificationTemplateWhereUniqueInputBuilder b)
          updates]) = _$GEmailNotificationTemplateWhereUniqueInput;

  String? get id;
  static Serializer<GEmailNotificationTemplateWhereUniqueInput>
      get serializer => _$gEmailNotificationTemplateWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEmailNotificationTemplateWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEmailNotificationTemplateWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEmailNotificationTemplateWhereUniqueInput.serializer,
        json,
      );
}

abstract class GEmailNotificationTemplateWhereInput
    implements
        Built<GEmailNotificationTemplateWhereInput,
            GEmailNotificationTemplateWhereInputBuilder> {
  GEmailNotificationTemplateWhereInput._();

  factory GEmailNotificationTemplateWhereInput(
          [Function(GEmailNotificationTemplateWhereInputBuilder b) updates]) =
      _$GEmailNotificationTemplateWhereInput;

  BuiltList<GEmailNotificationTemplateWhereInput>? get AND;
  BuiltList<GEmailNotificationTemplateWhereInput>? get OR;
  BuiltList<GEmailNotificationTemplateWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GNotificationTypeWhereInput? get notificationType;
  GStringFilter? get subject;
  GStringFilter? get body;
  static Serializer<GEmailNotificationTemplateWhereInput> get serializer =>
      _$gEmailNotificationTemplateWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEmailNotificationTemplateWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEmailNotificationTemplateWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEmailNotificationTemplateWhereInput.serializer,
        json,
      );
}

abstract class GEmailNotificationTemplateOrderByInput
    implements
        Built<GEmailNotificationTemplateOrderByInput,
            GEmailNotificationTemplateOrderByInputBuilder> {
  GEmailNotificationTemplateOrderByInput._();

  factory GEmailNotificationTemplateOrderByInput(
          [Function(GEmailNotificationTemplateOrderByInputBuilder b) updates]) =
      _$GEmailNotificationTemplateOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get subject;
  GOrderDirection? get body;
  static Serializer<GEmailNotificationTemplateOrderByInput> get serializer =>
      _$gEmailNotificationTemplateOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEmailNotificationTemplateOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEmailNotificationTemplateOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEmailNotificationTemplateOrderByInput.serializer,
        json,
      );
}

abstract class GEmailNotificationTemplateUpdateInput
    implements
        Built<GEmailNotificationTemplateUpdateInput,
            GEmailNotificationTemplateUpdateInputBuilder> {
  GEmailNotificationTemplateUpdateInput._();

  factory GEmailNotificationTemplateUpdateInput(
          [Function(GEmailNotificationTemplateUpdateInputBuilder b) updates]) =
      _$GEmailNotificationTemplateUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForUpdateInput? get notificationType;
  String? get subject;
  String? get body;
  static Serializer<GEmailNotificationTemplateUpdateInput> get serializer =>
      _$gEmailNotificationTemplateUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEmailNotificationTemplateUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEmailNotificationTemplateUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEmailNotificationTemplateUpdateInput.serializer,
        json,
      );
}

abstract class GNotificationTypeRelateToOneForUpdateInput
    implements
        Built<GNotificationTypeRelateToOneForUpdateInput,
            GNotificationTypeRelateToOneForUpdateInputBuilder> {
  GNotificationTypeRelateToOneForUpdateInput._();

  factory GNotificationTypeRelateToOneForUpdateInput(
      [Function(GNotificationTypeRelateToOneForUpdateInputBuilder b)
          updates]) = _$GNotificationTypeRelateToOneForUpdateInput;

  GNotificationTypeCreateInput? get create;
  GNotificationTypeWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GNotificationTypeRelateToOneForUpdateInput>
      get serializer => _$gNotificationTypeRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GEmailNotificationTemplateUpdateArgs
    implements
        Built<GEmailNotificationTemplateUpdateArgs,
            GEmailNotificationTemplateUpdateArgsBuilder> {
  GEmailNotificationTemplateUpdateArgs._();

  factory GEmailNotificationTemplateUpdateArgs(
          [Function(GEmailNotificationTemplateUpdateArgsBuilder b) updates]) =
      _$GEmailNotificationTemplateUpdateArgs;

  GEmailNotificationTemplateWhereUniqueInput get where;
  GEmailNotificationTemplateUpdateInput get data;
  static Serializer<GEmailNotificationTemplateUpdateArgs> get serializer =>
      _$gEmailNotificationTemplateUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEmailNotificationTemplateUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEmailNotificationTemplateUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEmailNotificationTemplateUpdateArgs.serializer,
        json,
      );
}

abstract class GEmailNotificationTemplateCreateInput
    implements
        Built<GEmailNotificationTemplateCreateInput,
            GEmailNotificationTemplateCreateInputBuilder> {
  GEmailNotificationTemplateCreateInput._();

  factory GEmailNotificationTemplateCreateInput(
          [Function(GEmailNotificationTemplateCreateInputBuilder b) updates]) =
      _$GEmailNotificationTemplateCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForCreateInput? get notificationType;
  String? get subject;
  String? get body;
  static Serializer<GEmailNotificationTemplateCreateInput> get serializer =>
      _$gEmailNotificationTemplateCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEmailNotificationTemplateCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GEmailNotificationTemplateCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEmailNotificationTemplateCreateInput.serializer,
        json,
      );
}

abstract class GNotificationTypeRelateToOneForCreateInput
    implements
        Built<GNotificationTypeRelateToOneForCreateInput,
            GNotificationTypeRelateToOneForCreateInputBuilder> {
  GNotificationTypeRelateToOneForCreateInput._();

  factory GNotificationTypeRelateToOneForCreateInput(
      [Function(GNotificationTypeRelateToOneForCreateInputBuilder b)
          updates]) = _$GNotificationTypeRelateToOneForCreateInput;

  GNotificationTypeCreateInput? get create;
  GNotificationTypeWhereUniqueInput? get connect;
  static Serializer<GNotificationTypeRelateToOneForCreateInput>
      get serializer => _$gNotificationTypeRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationTypeRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GNotificationTypeRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationTypeRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GSMSNotificationTemplateWhereUniqueInput
    implements
        Built<GSMSNotificationTemplateWhereUniqueInput,
            GSMSNotificationTemplateWhereUniqueInputBuilder> {
  GSMSNotificationTemplateWhereUniqueInput._();

  factory GSMSNotificationTemplateWhereUniqueInput(
      [Function(GSMSNotificationTemplateWhereUniqueInputBuilder b)
          updates]) = _$GSMSNotificationTemplateWhereUniqueInput;

  String? get id;
  static Serializer<GSMSNotificationTemplateWhereUniqueInput> get serializer =>
      _$gSMSNotificationTemplateWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSMSNotificationTemplateWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSMSNotificationTemplateWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSMSNotificationTemplateWhereUniqueInput.serializer,
        json,
      );
}

abstract class GSMSNotificationTemplateWhereInput
    implements
        Built<GSMSNotificationTemplateWhereInput,
            GSMSNotificationTemplateWhereInputBuilder> {
  GSMSNotificationTemplateWhereInput._();

  factory GSMSNotificationTemplateWhereInput(
          [Function(GSMSNotificationTemplateWhereInputBuilder b) updates]) =
      _$GSMSNotificationTemplateWhereInput;

  BuiltList<GSMSNotificationTemplateWhereInput>? get AND;
  BuiltList<GSMSNotificationTemplateWhereInput>? get OR;
  BuiltList<GSMSNotificationTemplateWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GNotificationTypeWhereInput? get notificationType;
  GStringFilter? get flowId;
  GStringFilter? get sender;
  GBooleanFilter? get shortURL;
  static Serializer<GSMSNotificationTemplateWhereInput> get serializer =>
      _$gSMSNotificationTemplateWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSMSNotificationTemplateWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSMSNotificationTemplateWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSMSNotificationTemplateWhereInput.serializer,
        json,
      );
}

abstract class GSMSNotificationTemplateOrderByInput
    implements
        Built<GSMSNotificationTemplateOrderByInput,
            GSMSNotificationTemplateOrderByInputBuilder> {
  GSMSNotificationTemplateOrderByInput._();

  factory GSMSNotificationTemplateOrderByInput(
          [Function(GSMSNotificationTemplateOrderByInputBuilder b) updates]) =
      _$GSMSNotificationTemplateOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get flowId;
  GOrderDirection? get sender;
  GOrderDirection? get shortURL;
  static Serializer<GSMSNotificationTemplateOrderByInput> get serializer =>
      _$gSMSNotificationTemplateOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSMSNotificationTemplateOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSMSNotificationTemplateOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSMSNotificationTemplateOrderByInput.serializer,
        json,
      );
}

abstract class GSMSNotificationTemplateUpdateInput
    implements
        Built<GSMSNotificationTemplateUpdateInput,
            GSMSNotificationTemplateUpdateInputBuilder> {
  GSMSNotificationTemplateUpdateInput._();

  factory GSMSNotificationTemplateUpdateInput(
          [Function(GSMSNotificationTemplateUpdateInputBuilder b) updates]) =
      _$GSMSNotificationTemplateUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForUpdateInput? get notificationType;
  String? get flowId;
  String? get sender;
  _i4.JsonObject? get variables;
  bool? get shortURL;
  static Serializer<GSMSNotificationTemplateUpdateInput> get serializer =>
      _$gSMSNotificationTemplateUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSMSNotificationTemplateUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSMSNotificationTemplateUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSMSNotificationTemplateUpdateInput.serializer,
        json,
      );
}

abstract class GSMSNotificationTemplateUpdateArgs
    implements
        Built<GSMSNotificationTemplateUpdateArgs,
            GSMSNotificationTemplateUpdateArgsBuilder> {
  GSMSNotificationTemplateUpdateArgs._();

  factory GSMSNotificationTemplateUpdateArgs(
          [Function(GSMSNotificationTemplateUpdateArgsBuilder b) updates]) =
      _$GSMSNotificationTemplateUpdateArgs;

  GSMSNotificationTemplateWhereUniqueInput get where;
  GSMSNotificationTemplateUpdateInput get data;
  static Serializer<GSMSNotificationTemplateUpdateArgs> get serializer =>
      _$gSMSNotificationTemplateUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSMSNotificationTemplateUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSMSNotificationTemplateUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSMSNotificationTemplateUpdateArgs.serializer,
        json,
      );
}

abstract class GSMSNotificationTemplateCreateInput
    implements
        Built<GSMSNotificationTemplateCreateInput,
            GSMSNotificationTemplateCreateInputBuilder> {
  GSMSNotificationTemplateCreateInput._();

  factory GSMSNotificationTemplateCreateInput(
          [Function(GSMSNotificationTemplateCreateInputBuilder b) updates]) =
      _$GSMSNotificationTemplateCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForCreateInput? get notificationType;
  String? get flowId;
  String? get sender;
  _i4.JsonObject? get variables;
  bool? get shortURL;
  static Serializer<GSMSNotificationTemplateCreateInput> get serializer =>
      _$gSMSNotificationTemplateCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSMSNotificationTemplateCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSMSNotificationTemplateCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSMSNotificationTemplateCreateInput.serializer,
        json,
      );
}

abstract class GAppNotificationTemplateWhereUniqueInput
    implements
        Built<GAppNotificationTemplateWhereUniqueInput,
            GAppNotificationTemplateWhereUniqueInputBuilder> {
  GAppNotificationTemplateWhereUniqueInput._();

  factory GAppNotificationTemplateWhereUniqueInput(
      [Function(GAppNotificationTemplateWhereUniqueInputBuilder b)
          updates]) = _$GAppNotificationTemplateWhereUniqueInput;

  String? get id;
  static Serializer<GAppNotificationTemplateWhereUniqueInput> get serializer =>
      _$gAppNotificationTemplateWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationTemplateWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationTemplateWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationTemplateWhereUniqueInput.serializer,
        json,
      );
}

abstract class GAppNotificationTemplateWhereInput
    implements
        Built<GAppNotificationTemplateWhereInput,
            GAppNotificationTemplateWhereInputBuilder> {
  GAppNotificationTemplateWhereInput._();

  factory GAppNotificationTemplateWhereInput(
          [Function(GAppNotificationTemplateWhereInputBuilder b) updates]) =
      _$GAppNotificationTemplateWhereInput;

  BuiltList<GAppNotificationTemplateWhereInput>? get AND;
  BuiltList<GAppNotificationTemplateWhereInput>? get OR;
  BuiltList<GAppNotificationTemplateWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GNotificationTypeWhereInput? get notificationType;
  GStringFilter? get title;
  GStringFilter? get body;
  static Serializer<GAppNotificationTemplateWhereInput> get serializer =>
      _$gAppNotificationTemplateWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationTemplateWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationTemplateWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationTemplateWhereInput.serializer,
        json,
      );
}

abstract class GAppNotificationTemplateOrderByInput
    implements
        Built<GAppNotificationTemplateOrderByInput,
            GAppNotificationTemplateOrderByInputBuilder> {
  GAppNotificationTemplateOrderByInput._();

  factory GAppNotificationTemplateOrderByInput(
          [Function(GAppNotificationTemplateOrderByInputBuilder b) updates]) =
      _$GAppNotificationTemplateOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get body;
  static Serializer<GAppNotificationTemplateOrderByInput> get serializer =>
      _$gAppNotificationTemplateOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationTemplateOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationTemplateOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationTemplateOrderByInput.serializer,
        json,
      );
}

abstract class GAppNotificationTemplateUpdateInput
    implements
        Built<GAppNotificationTemplateUpdateInput,
            GAppNotificationTemplateUpdateInputBuilder> {
  GAppNotificationTemplateUpdateInput._();

  factory GAppNotificationTemplateUpdateInput(
          [Function(GAppNotificationTemplateUpdateInputBuilder b) updates]) =
      _$GAppNotificationTemplateUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForUpdateInput? get notificationType;
  String? get title;
  String? get body;
  static Serializer<GAppNotificationTemplateUpdateInput> get serializer =>
      _$gAppNotificationTemplateUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationTemplateUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationTemplateUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationTemplateUpdateInput.serializer,
        json,
      );
}

abstract class GAppNotificationTemplateUpdateArgs
    implements
        Built<GAppNotificationTemplateUpdateArgs,
            GAppNotificationTemplateUpdateArgsBuilder> {
  GAppNotificationTemplateUpdateArgs._();

  factory GAppNotificationTemplateUpdateArgs(
          [Function(GAppNotificationTemplateUpdateArgsBuilder b) updates]) =
      _$GAppNotificationTemplateUpdateArgs;

  GAppNotificationTemplateWhereUniqueInput get where;
  GAppNotificationTemplateUpdateInput get data;
  static Serializer<GAppNotificationTemplateUpdateArgs> get serializer =>
      _$gAppNotificationTemplateUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationTemplateUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationTemplateUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationTemplateUpdateArgs.serializer,
        json,
      );
}

abstract class GAppNotificationTemplateCreateInput
    implements
        Built<GAppNotificationTemplateCreateInput,
            GAppNotificationTemplateCreateInputBuilder> {
  GAppNotificationTemplateCreateInput._();

  factory GAppNotificationTemplateCreateInput(
          [Function(GAppNotificationTemplateCreateInputBuilder b) updates]) =
      _$GAppNotificationTemplateCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForCreateInput? get notificationType;
  String? get title;
  String? get body;
  static Serializer<GAppNotificationTemplateCreateInput> get serializer =>
      _$gAppNotificationTemplateCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationTemplateCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationTemplateCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationTemplateCreateInput.serializer,
        json,
      );
}

abstract class GAppNotificationWhereUniqueInput
    implements
        Built<GAppNotificationWhereUniqueInput,
            GAppNotificationWhereUniqueInputBuilder> {
  GAppNotificationWhereUniqueInput._();

  factory GAppNotificationWhereUniqueInput(
          [Function(GAppNotificationWhereUniqueInputBuilder b) updates]) =
      _$GAppNotificationWhereUniqueInput;

  String? get id;
  static Serializer<GAppNotificationWhereUniqueInput> get serializer =>
      _$gAppNotificationWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationWhereUniqueInput.serializer,
        json,
      );
}

abstract class GAppNotificationWhereInput
    implements
        Built<GAppNotificationWhereInput, GAppNotificationWhereInputBuilder> {
  GAppNotificationWhereInput._();

  factory GAppNotificationWhereInput(
          [Function(GAppNotificationWhereInputBuilder b) updates]) =
      _$GAppNotificationWhereInput;

  BuiltList<GAppNotificationWhereInput>? get AND;
  BuiltList<GAppNotificationWhereInput>? get OR;
  BuiltList<GAppNotificationWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GNotificationTypeWhereInput? get notificationType;
  GStringFilter? get title;
  GStringFilter? get body;
  GUserWhereInput? get user;
  static Serializer<GAppNotificationWhereInput> get serializer =>
      _$gAppNotificationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationWhereInput.serializer,
        json,
      );
}

abstract class GAppNotificationOrderByInput
    implements
        Built<GAppNotificationOrderByInput,
            GAppNotificationOrderByInputBuilder> {
  GAppNotificationOrderByInput._();

  factory GAppNotificationOrderByInput(
          [Function(GAppNotificationOrderByInputBuilder b) updates]) =
      _$GAppNotificationOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get body;
  static Serializer<GAppNotificationOrderByInput> get serializer =>
      _$gAppNotificationOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationOrderByInput.serializer,
        json,
      );
}

abstract class GAppNotificationUpdateInput
    implements
        Built<GAppNotificationUpdateInput, GAppNotificationUpdateInputBuilder> {
  GAppNotificationUpdateInput._();

  factory GAppNotificationUpdateInput(
          [Function(GAppNotificationUpdateInputBuilder b) updates]) =
      _$GAppNotificationUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForUpdateInput? get notificationType;
  String? get title;
  String? get body;
  GUserRelateToOneForUpdateInput? get user;
  static Serializer<GAppNotificationUpdateInput> get serializer =>
      _$gAppNotificationUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationUpdateInput.serializer,
        json,
      );
}

abstract class GAppNotificationUpdateArgs
    implements
        Built<GAppNotificationUpdateArgs, GAppNotificationUpdateArgsBuilder> {
  GAppNotificationUpdateArgs._();

  factory GAppNotificationUpdateArgs(
          [Function(GAppNotificationUpdateArgsBuilder b) updates]) =
      _$GAppNotificationUpdateArgs;

  GAppNotificationWhereUniqueInput get where;
  GAppNotificationUpdateInput get data;
  static Serializer<GAppNotificationUpdateArgs> get serializer =>
      _$gAppNotificationUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationUpdateArgs.serializer,
        json,
      );
}

abstract class GAppNotificationCreateInput
    implements
        Built<GAppNotificationCreateInput, GAppNotificationCreateInputBuilder> {
  GAppNotificationCreateInput._();

  factory GAppNotificationCreateInput(
          [Function(GAppNotificationCreateInputBuilder b) updates]) =
      _$GAppNotificationCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GNotificationTypeRelateToOneForCreateInput? get notificationType;
  String? get title;
  String? get body;
  GUserRelateToOneForCreateInput? get user;
  static Serializer<GAppNotificationCreateInput> get serializer =>
      _$gAppNotificationCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppNotificationCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAppNotificationCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppNotificationCreateInput.serializer,
        json,
      );
}

abstract class GFAQWhereUniqueInput
    implements Built<GFAQWhereUniqueInput, GFAQWhereUniqueInputBuilder> {
  GFAQWhereUniqueInput._();

  factory GFAQWhereUniqueInput(
          [Function(GFAQWhereUniqueInputBuilder b) updates]) =
      _$GFAQWhereUniqueInput;

  String? get id;
  static Serializer<GFAQWhereUniqueInput> get serializer =>
      _$gFAQWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFAQWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFAQWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFAQWhereUniqueInput.serializer,
        json,
      );
}

abstract class GFAQWhereInput
    implements Built<GFAQWhereInput, GFAQWhereInputBuilder> {
  GFAQWhereInput._();

  factory GFAQWhereInput([Function(GFAQWhereInputBuilder b) updates]) =
      _$GFAQWhereInput;

  BuiltList<GFAQWhereInput>? get AND;
  BuiltList<GFAQWhereInput>? get OR;
  BuiltList<GFAQWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get question;
  GStringFilter? get answer;
  GCategoryWhereInput? get category;
  static Serializer<GFAQWhereInput> get serializer =>
      _$gFAQWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFAQWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFAQWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFAQWhereInput.serializer,
        json,
      );
}

abstract class GFAQOrderByInput
    implements Built<GFAQOrderByInput, GFAQOrderByInputBuilder> {
  GFAQOrderByInput._();

  factory GFAQOrderByInput([Function(GFAQOrderByInputBuilder b) updates]) =
      _$GFAQOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get question;
  GOrderDirection? get answer;
  static Serializer<GFAQOrderByInput> get serializer =>
      _$gFAQOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFAQOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFAQOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFAQOrderByInput.serializer,
        json,
      );
}

abstract class GFAQUpdateInput
    implements Built<GFAQUpdateInput, GFAQUpdateInputBuilder> {
  GFAQUpdateInput._();

  factory GFAQUpdateInput([Function(GFAQUpdateInputBuilder b) updates]) =
      _$GFAQUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get question;
  String? get answer;
  GCategoryRelateToOneForUpdateInput? get category;
  static Serializer<GFAQUpdateInput> get serializer =>
      _$gFAQUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFAQUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFAQUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFAQUpdateInput.serializer,
        json,
      );
}

abstract class GCategoryRelateToOneForUpdateInput
    implements
        Built<GCategoryRelateToOneForUpdateInput,
            GCategoryRelateToOneForUpdateInputBuilder> {
  GCategoryRelateToOneForUpdateInput._();

  factory GCategoryRelateToOneForUpdateInput(
          [Function(GCategoryRelateToOneForUpdateInputBuilder b) updates]) =
      _$GCategoryRelateToOneForUpdateInput;

  GCategoryCreateInput? get create;
  GCategoryWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GCategoryRelateToOneForUpdateInput> get serializer =>
      _$gCategoryRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GFAQUpdateArgs
    implements Built<GFAQUpdateArgs, GFAQUpdateArgsBuilder> {
  GFAQUpdateArgs._();

  factory GFAQUpdateArgs([Function(GFAQUpdateArgsBuilder b) updates]) =
      _$GFAQUpdateArgs;

  GFAQWhereUniqueInput get where;
  GFAQUpdateInput get data;
  static Serializer<GFAQUpdateArgs> get serializer =>
      _$gFAQUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFAQUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFAQUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFAQUpdateArgs.serializer,
        json,
      );
}

abstract class GFAQCreateInput
    implements Built<GFAQCreateInput, GFAQCreateInputBuilder> {
  GFAQCreateInput._();

  factory GFAQCreateInput([Function(GFAQCreateInputBuilder b) updates]) =
      _$GFAQCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get question;
  String? get answer;
  GCategoryRelateToOneForCreateInput? get category;
  static Serializer<GFAQCreateInput> get serializer =>
      _$gFAQCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFAQCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFAQCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFAQCreateInput.serializer,
        json,
      );
}

abstract class GCategoryRelateToOneForCreateInput
    implements
        Built<GCategoryRelateToOneForCreateInput,
            GCategoryRelateToOneForCreateInputBuilder> {
  GCategoryRelateToOneForCreateInput._();

  factory GCategoryRelateToOneForCreateInput(
          [Function(GCategoryRelateToOneForCreateInputBuilder b) updates]) =
      _$GCategoryRelateToOneForCreateInput;

  GCategoryCreateInput? get create;
  GCategoryWhereUniqueInput? get connect;
  static Serializer<GCategoryRelateToOneForCreateInput> get serializer =>
      _$gCategoryRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GHelpSupportWhereUniqueInput
    implements
        Built<GHelpSupportWhereUniqueInput,
            GHelpSupportWhereUniqueInputBuilder> {
  GHelpSupportWhereUniqueInput._();

  factory GHelpSupportWhereUniqueInput(
          [Function(GHelpSupportWhereUniqueInputBuilder b) updates]) =
      _$GHelpSupportWhereUniqueInput;

  String? get id;
  static Serializer<GHelpSupportWhereUniqueInput> get serializer =>
      _$gHelpSupportWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHelpSupportWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHelpSupportWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHelpSupportWhereUniqueInput.serializer,
        json,
      );
}

abstract class GHelpSupportWhereInput
    implements Built<GHelpSupportWhereInput, GHelpSupportWhereInputBuilder> {
  GHelpSupportWhereInput._();

  factory GHelpSupportWhereInput(
          [Function(GHelpSupportWhereInputBuilder b) updates]) =
      _$GHelpSupportWhereInput;

  BuiltList<GHelpSupportWhereInput>? get AND;
  BuiltList<GHelpSupportWhereInput>? get OR;
  BuiltList<GHelpSupportWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get title;
  GStringFilter? get description;
  GCategoryWhereInput? get category;
  GBooleanFilter? get solved;
  GUserWhereInput? get user;
  static Serializer<GHelpSupportWhereInput> get serializer =>
      _$gHelpSupportWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHelpSupportWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHelpSupportWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHelpSupportWhereInput.serializer,
        json,
      );
}

abstract class GHelpSupportOrderByInput
    implements
        Built<GHelpSupportOrderByInput, GHelpSupportOrderByInputBuilder> {
  GHelpSupportOrderByInput._();

  factory GHelpSupportOrderByInput(
          [Function(GHelpSupportOrderByInputBuilder b) updates]) =
      _$GHelpSupportOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get description;
  GOrderDirection? get solved;
  static Serializer<GHelpSupportOrderByInput> get serializer =>
      _$gHelpSupportOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHelpSupportOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHelpSupportOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHelpSupportOrderByInput.serializer,
        json,
      );
}

abstract class GHelpSupportUpdateInput
    implements Built<GHelpSupportUpdateInput, GHelpSupportUpdateInputBuilder> {
  GHelpSupportUpdateInput._();

  factory GHelpSupportUpdateInput(
          [Function(GHelpSupportUpdateInputBuilder b) updates]) =
      _$GHelpSupportUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  GCategoryRelateToOneForUpdateInput? get category;
  bool? get solved;
  GUserRelateToOneForUpdateInput? get user;
  static Serializer<GHelpSupportUpdateInput> get serializer =>
      _$gHelpSupportUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHelpSupportUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHelpSupportUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHelpSupportUpdateInput.serializer,
        json,
      );
}

abstract class GHelpSupportUpdateArgs
    implements Built<GHelpSupportUpdateArgs, GHelpSupportUpdateArgsBuilder> {
  GHelpSupportUpdateArgs._();

  factory GHelpSupportUpdateArgs(
          [Function(GHelpSupportUpdateArgsBuilder b) updates]) =
      _$GHelpSupportUpdateArgs;

  GHelpSupportWhereUniqueInput get where;
  GHelpSupportUpdateInput get data;
  static Serializer<GHelpSupportUpdateArgs> get serializer =>
      _$gHelpSupportUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHelpSupportUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHelpSupportUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHelpSupportUpdateArgs.serializer,
        json,
      );
}

abstract class GHelpSupportCreateInput
    implements Built<GHelpSupportCreateInput, GHelpSupportCreateInputBuilder> {
  GHelpSupportCreateInput._();

  factory GHelpSupportCreateInput(
          [Function(GHelpSupportCreateInputBuilder b) updates]) =
      _$GHelpSupportCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  GCategoryRelateToOneForCreateInput? get category;
  bool? get solved;
  GUserRelateToOneForCreateInput? get user;
  static Serializer<GHelpSupportCreateInput> get serializer =>
      _$gHelpSupportCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHelpSupportCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHelpSupportCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHelpSupportCreateInput.serializer,
        json,
      );
}

abstract class GTagWhereUniqueInput
    implements Built<GTagWhereUniqueInput, GTagWhereUniqueInputBuilder> {
  GTagWhereUniqueInput._();

  factory GTagWhereUniqueInput(
          [Function(GTagWhereUniqueInputBuilder b) updates]) =
      _$GTagWhereUniqueInput;

  String? get id;
  static Serializer<GTagWhereUniqueInput> get serializer =>
      _$gTagWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTagWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagWhereUniqueInput.serializer,
        json,
      );
}

abstract class GTagWhereInput
    implements Built<GTagWhereInput, GTagWhereInputBuilder> {
  GTagWhereInput._();

  factory GTagWhereInput([Function(GTagWhereInputBuilder b) updates]) =
      _$GTagWhereInput;

  BuiltList<GTagWhereInput>? get AND;
  BuiltList<GTagWhereInput>? get OR;
  BuiltList<GTagWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get title;
  GStringFilter? get description;
  static Serializer<GTagWhereInput> get serializer =>
      _$gTagWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTagWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagWhereInput.serializer,
        json,
      );
}

abstract class GTagOrderByInput
    implements Built<GTagOrderByInput, GTagOrderByInputBuilder> {
  GTagOrderByInput._();

  factory GTagOrderByInput([Function(GTagOrderByInputBuilder b) updates]) =
      _$GTagOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get description;
  static Serializer<GTagOrderByInput> get serializer =>
      _$gTagOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTagOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagOrderByInput.serializer,
        json,
      );
}

abstract class GTagUpdateInput
    implements Built<GTagUpdateInput, GTagUpdateInputBuilder> {
  GTagUpdateInput._();

  factory GTagUpdateInput([Function(GTagUpdateInputBuilder b) updates]) =
      _$GTagUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  static Serializer<GTagUpdateInput> get serializer =>
      _$gTagUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTagUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagUpdateInput.serializer,
        json,
      );
}

abstract class GTagUpdateArgs
    implements Built<GTagUpdateArgs, GTagUpdateArgsBuilder> {
  GTagUpdateArgs._();

  factory GTagUpdateArgs([Function(GTagUpdateArgsBuilder b) updates]) =
      _$GTagUpdateArgs;

  GTagWhereUniqueInput get where;
  GTagUpdateInput get data;
  static Serializer<GTagUpdateArgs> get serializer =>
      _$gTagUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTagUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagUpdateArgs.serializer,
        json,
      );
}

abstract class GTagCreateInput
    implements Built<GTagCreateInput, GTagCreateInputBuilder> {
  GTagCreateInput._();

  factory GTagCreateInput([Function(GTagCreateInputBuilder b) updates]) =
      _$GTagCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  static Serializer<GTagCreateInput> get serializer =>
      _$gTagCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTagCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagCreateInput.serializer,
        json,
      );
}

abstract class GCouponWhereUniqueInput
    implements Built<GCouponWhereUniqueInput, GCouponWhereUniqueInputBuilder> {
  GCouponWhereUniqueInput._();

  factory GCouponWhereUniqueInput(
          [Function(GCouponWhereUniqueInputBuilder b) updates]) =
      _$GCouponWhereUniqueInput;

  String? get id;
  String? get code;
  static Serializer<GCouponWhereUniqueInput> get serializer =>
      _$gCouponWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCouponWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCouponWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCouponWhereUniqueInput.serializer,
        json,
      );
}

abstract class GCouponWhereInput
    implements Built<GCouponWhereInput, GCouponWhereInputBuilder> {
  GCouponWhereInput._();

  factory GCouponWhereInput([Function(GCouponWhereInputBuilder b) updates]) =
      _$GCouponWhereInput;

  BuiltList<GCouponWhereInput>? get AND;
  BuiltList<GCouponWhereInput>? get OR;
  BuiltList<GCouponWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get code;
  GStringFilter? get description;
  GDateTimeNullableFilter? get startFrom;
  GDateTimeNullableFilter? get expireBy;
  GVehicleManyRelationFilter? get vehicles;
  GStringNullableFilter? get vehiclesCondition;
  static Serializer<GCouponWhereInput> get serializer =>
      _$gCouponWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCouponWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCouponWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCouponWhereInput.serializer,
        json,
      );
}

abstract class GVehicleManyRelationFilter
    implements
        Built<GVehicleManyRelationFilter, GVehicleManyRelationFilterBuilder> {
  GVehicleManyRelationFilter._();

  factory GVehicleManyRelationFilter(
          [Function(GVehicleManyRelationFilterBuilder b) updates]) =
      _$GVehicleManyRelationFilter;

  GVehicleWhereInput? get every;
  GVehicleWhereInput? get some;
  GVehicleWhereInput? get none;
  static Serializer<GVehicleManyRelationFilter> get serializer =>
      _$gVehicleManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleManyRelationFilter.serializer,
        json,
      );
}

abstract class GCouponOrderByInput
    implements Built<GCouponOrderByInput, GCouponOrderByInputBuilder> {
  GCouponOrderByInput._();

  factory GCouponOrderByInput(
      [Function(GCouponOrderByInputBuilder b) updates]) = _$GCouponOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get code;
  GOrderDirection? get description;
  GOrderDirection? get startFrom;
  GOrderDirection? get expireBy;
  GOrderDirection? get vehiclesCondition;
  static Serializer<GCouponOrderByInput> get serializer =>
      _$gCouponOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCouponOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCouponOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCouponOrderByInput.serializer,
        json,
      );
}

abstract class GCouponUpdateInput
    implements Built<GCouponUpdateInput, GCouponUpdateInputBuilder> {
  GCouponUpdateInput._();

  factory GCouponUpdateInput([Function(GCouponUpdateInputBuilder b) updates]) =
      _$GCouponUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  String? get description;
  _i4.JsonObject? get logic;
  GDateTime? get startFrom;
  GDateTime? get expireBy;
  GVehicleRelateToManyForUpdateInput? get vehicles;
  String? get vehiclesCondition;
  static Serializer<GCouponUpdateInput> get serializer =>
      _$gCouponUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCouponUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCouponUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCouponUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleRelateToManyForUpdateInput
    implements
        Built<GVehicleRelateToManyForUpdateInput,
            GVehicleRelateToManyForUpdateInputBuilder> {
  GVehicleRelateToManyForUpdateInput._();

  factory GVehicleRelateToManyForUpdateInput(
          [Function(GVehicleRelateToManyForUpdateInputBuilder b) updates]) =
      _$GVehicleRelateToManyForUpdateInput;

  BuiltList<GVehicleWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleWhereUniqueInput>? get set;
  BuiltList<GVehicleCreateInput>? get create;
  BuiltList<GVehicleWhereUniqueInput>? get connect;
  static Serializer<GVehicleRelateToManyForUpdateInput> get serializer =>
      _$gVehicleRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GCouponUpdateArgs
    implements Built<GCouponUpdateArgs, GCouponUpdateArgsBuilder> {
  GCouponUpdateArgs._();

  factory GCouponUpdateArgs([Function(GCouponUpdateArgsBuilder b) updates]) =
      _$GCouponUpdateArgs;

  GCouponWhereUniqueInput get where;
  GCouponUpdateInput get data;
  static Serializer<GCouponUpdateArgs> get serializer =>
      _$gCouponUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCouponUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCouponUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCouponUpdateArgs.serializer,
        json,
      );
}

abstract class GCouponCreateInput
    implements Built<GCouponCreateInput, GCouponCreateInputBuilder> {
  GCouponCreateInput._();

  factory GCouponCreateInput([Function(GCouponCreateInputBuilder b) updates]) =
      _$GCouponCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  String? get description;
  _i4.JsonObject? get logic;
  GDateTime? get startFrom;
  GDateTime? get expireBy;
  GVehicleRelateToManyForCreateInput? get vehicles;
  String? get vehiclesCondition;
  static Serializer<GCouponCreateInput> get serializer =>
      _$gCouponCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCouponCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCouponCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCouponCreateInput.serializer,
        json,
      );
}

abstract class GVehicleRelateToManyForCreateInput
    implements
        Built<GVehicleRelateToManyForCreateInput,
            GVehicleRelateToManyForCreateInputBuilder> {
  GVehicleRelateToManyForCreateInput._();

  factory GVehicleRelateToManyForCreateInput(
          [Function(GVehicleRelateToManyForCreateInputBuilder b) updates]) =
      _$GVehicleRelateToManyForCreateInput;

  BuiltList<GVehicleCreateInput>? get create;
  BuiltList<GVehicleWhereUniqueInput>? get connect;
  static Serializer<GVehicleRelateToManyForCreateInput> get serializer =>
      _$gVehicleRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVehicleRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GOfferWhereUniqueInput
    implements Built<GOfferWhereUniqueInput, GOfferWhereUniqueInputBuilder> {
  GOfferWhereUniqueInput._();

  factory GOfferWhereUniqueInput(
          [Function(GOfferWhereUniqueInputBuilder b) updates]) =
      _$GOfferWhereUniqueInput;

  String? get id;
  String? get code;
  static Serializer<GOfferWhereUniqueInput> get serializer =>
      _$gOfferWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOfferWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOfferWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOfferWhereUniqueInput.serializer,
        json,
      );
}

abstract class GOfferWhereInput
    implements Built<GOfferWhereInput, GOfferWhereInputBuilder> {
  GOfferWhereInput._();

  factory GOfferWhereInput([Function(GOfferWhereInputBuilder b) updates]) =
      _$GOfferWhereInput;

  BuiltList<GOfferWhereInput>? get AND;
  BuiltList<GOfferWhereInput>? get OR;
  BuiltList<GOfferWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get code;
  GStringFilter? get description;
  GDateTimeNullableFilter? get startFrom;
  GDateTimeNullableFilter? get expireBy;
  GVehicleManyRelationFilter? get vehicles;
  GStringNullableFilter? get vehiclesCondition;
  static Serializer<GOfferWhereInput> get serializer =>
      _$gOfferWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOfferWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOfferWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOfferWhereInput.serializer,
        json,
      );
}

abstract class GOfferOrderByInput
    implements Built<GOfferOrderByInput, GOfferOrderByInputBuilder> {
  GOfferOrderByInput._();

  factory GOfferOrderByInput([Function(GOfferOrderByInputBuilder b) updates]) =
      _$GOfferOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get code;
  GOrderDirection? get description;
  GOrderDirection? get startFrom;
  GOrderDirection? get expireBy;
  GOrderDirection? get vehiclesCondition;
  static Serializer<GOfferOrderByInput> get serializer =>
      _$gOfferOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOfferOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOfferOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOfferOrderByInput.serializer,
        json,
      );
}

abstract class GOfferUpdateInput
    implements Built<GOfferUpdateInput, GOfferUpdateInputBuilder> {
  GOfferUpdateInput._();

  factory GOfferUpdateInput([Function(GOfferUpdateInputBuilder b) updates]) =
      _$GOfferUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  String? get description;
  _i4.JsonObject? get logic;
  GDateTime? get startFrom;
  GDateTime? get expireBy;
  GVehicleRelateToManyForUpdateInput? get vehicles;
  String? get vehiclesCondition;
  static Serializer<GOfferUpdateInput> get serializer =>
      _$gOfferUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOfferUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOfferUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOfferUpdateInput.serializer,
        json,
      );
}

abstract class GOfferUpdateArgs
    implements Built<GOfferUpdateArgs, GOfferUpdateArgsBuilder> {
  GOfferUpdateArgs._();

  factory GOfferUpdateArgs([Function(GOfferUpdateArgsBuilder b) updates]) =
      _$GOfferUpdateArgs;

  GOfferWhereUniqueInput get where;
  GOfferUpdateInput get data;
  static Serializer<GOfferUpdateArgs> get serializer =>
      _$gOfferUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOfferUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOfferUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOfferUpdateArgs.serializer,
        json,
      );
}

abstract class GOfferCreateInput
    implements Built<GOfferCreateInput, GOfferCreateInputBuilder> {
  GOfferCreateInput._();

  factory GOfferCreateInput([Function(GOfferCreateInputBuilder b) updates]) =
      _$GOfferCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  String? get description;
  _i4.JsonObject? get logic;
  GDateTime? get startFrom;
  GDateTime? get expireBy;
  GVehicleRelateToManyForCreateInput? get vehicles;
  String? get vehiclesCondition;
  static Serializer<GOfferCreateInput> get serializer =>
      _$gOfferCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOfferCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOfferCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOfferCreateInput.serializer,
        json,
      );
}

abstract class GFeedbackWhereUniqueInput
    implements
        Built<GFeedbackWhereUniqueInput, GFeedbackWhereUniqueInputBuilder> {
  GFeedbackWhereUniqueInput._();

  factory GFeedbackWhereUniqueInput(
          [Function(GFeedbackWhereUniqueInputBuilder b) updates]) =
      _$GFeedbackWhereUniqueInput;

  String? get id;
  static Serializer<GFeedbackWhereUniqueInput> get serializer =>
      _$gFeedbackWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackWhereUniqueInput.serializer,
        json,
      );
}

abstract class GFeedbackWhereInput
    implements Built<GFeedbackWhereInput, GFeedbackWhereInputBuilder> {
  GFeedbackWhereInput._();

  factory GFeedbackWhereInput(
      [Function(GFeedbackWhereInputBuilder b) updates]) = _$GFeedbackWhereInput;

  BuiltList<GFeedbackWhereInput>? get AND;
  BuiltList<GFeedbackWhereInput>? get OR;
  BuiltList<GFeedbackWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GCategoryWhereInput? get category;
  GStringFilter? get title;
  GStringFilter? get description;
  GFeedbackAttachmentManyRelationFilter? get attachments;
  static Serializer<GFeedbackWhereInput> get serializer =>
      _$gFeedbackWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackWhereInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentManyRelationFilter
    implements
        Built<GFeedbackAttachmentManyRelationFilter,
            GFeedbackAttachmentManyRelationFilterBuilder> {
  GFeedbackAttachmentManyRelationFilter._();

  factory GFeedbackAttachmentManyRelationFilter(
          [Function(GFeedbackAttachmentManyRelationFilterBuilder b) updates]) =
      _$GFeedbackAttachmentManyRelationFilter;

  GFeedbackAttachmentWhereInput? get every;
  GFeedbackAttachmentWhereInput? get some;
  GFeedbackAttachmentWhereInput? get none;
  static Serializer<GFeedbackAttachmentManyRelationFilter> get serializer =>
      _$gFeedbackAttachmentManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentManyRelationFilter.serializer,
        json,
      );
}

abstract class GFeedbackOrderByInput
    implements Built<GFeedbackOrderByInput, GFeedbackOrderByInputBuilder> {
  GFeedbackOrderByInput._();

  factory GFeedbackOrderByInput(
          [Function(GFeedbackOrderByInputBuilder b) updates]) =
      _$GFeedbackOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get description;
  static Serializer<GFeedbackOrderByInput> get serializer =>
      _$gFeedbackOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackOrderByInput.serializer,
        json,
      );
}

abstract class GFeedbackUpdateInput
    implements Built<GFeedbackUpdateInput, GFeedbackUpdateInputBuilder> {
  GFeedbackUpdateInput._();

  factory GFeedbackUpdateInput(
          [Function(GFeedbackUpdateInputBuilder b) updates]) =
      _$GFeedbackUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GCategoryRelateToOneForUpdateInput? get category;
  String? get title;
  String? get description;
  GFeedbackAttachmentRelateToManyForUpdateInput? get attachments;
  static Serializer<GFeedbackUpdateInput> get serializer =>
      _$gFeedbackUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackUpdateInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentRelateToManyForUpdateInput
    implements
        Built<GFeedbackAttachmentRelateToManyForUpdateInput,
            GFeedbackAttachmentRelateToManyForUpdateInputBuilder> {
  GFeedbackAttachmentRelateToManyForUpdateInput._();

  factory GFeedbackAttachmentRelateToManyForUpdateInput(
      [Function(GFeedbackAttachmentRelateToManyForUpdateInputBuilder b)
          updates]) = _$GFeedbackAttachmentRelateToManyForUpdateInput;

  BuiltList<GFeedbackAttachmentWhereUniqueInput>? get disconnect;
  BuiltList<GFeedbackAttachmentWhereUniqueInput>? get set;
  BuiltList<GFeedbackAttachmentCreateInput>? get create;
  BuiltList<GFeedbackAttachmentWhereUniqueInput>? get connect;
  static Serializer<GFeedbackAttachmentRelateToManyForUpdateInput>
      get serializer =>
          _$gFeedbackAttachmentRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GFeedbackUpdateArgs
    implements Built<GFeedbackUpdateArgs, GFeedbackUpdateArgsBuilder> {
  GFeedbackUpdateArgs._();

  factory GFeedbackUpdateArgs(
      [Function(GFeedbackUpdateArgsBuilder b) updates]) = _$GFeedbackUpdateArgs;

  GFeedbackWhereUniqueInput get where;
  GFeedbackUpdateInput get data;
  static Serializer<GFeedbackUpdateArgs> get serializer =>
      _$gFeedbackUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackUpdateArgs.serializer,
        json,
      );
}

abstract class GFeedbackCreateInput
    implements Built<GFeedbackCreateInput, GFeedbackCreateInputBuilder> {
  GFeedbackCreateInput._();

  factory GFeedbackCreateInput(
          [Function(GFeedbackCreateInputBuilder b) updates]) =
      _$GFeedbackCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GCategoryRelateToOneForCreateInput? get category;
  String? get title;
  String? get description;
  GFeedbackAttachmentRelateToManyForCreateInput? get attachments;
  static Serializer<GFeedbackCreateInput> get serializer =>
      _$gFeedbackCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackCreateInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentRelateToManyForCreateInput
    implements
        Built<GFeedbackAttachmentRelateToManyForCreateInput,
            GFeedbackAttachmentRelateToManyForCreateInputBuilder> {
  GFeedbackAttachmentRelateToManyForCreateInput._();

  factory GFeedbackAttachmentRelateToManyForCreateInput(
      [Function(GFeedbackAttachmentRelateToManyForCreateInputBuilder b)
          updates]) = _$GFeedbackAttachmentRelateToManyForCreateInput;

  BuiltList<GFeedbackAttachmentCreateInput>? get create;
  BuiltList<GFeedbackAttachmentWhereUniqueInput>? get connect;
  static Serializer<GFeedbackAttachmentRelateToManyForCreateInput>
      get serializer =>
          _$gFeedbackAttachmentRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentWhereUniqueInput
    implements
        Built<GFeedbackAttachmentWhereUniqueInput,
            GFeedbackAttachmentWhereUniqueInputBuilder> {
  GFeedbackAttachmentWhereUniqueInput._();

  factory GFeedbackAttachmentWhereUniqueInput(
          [Function(GFeedbackAttachmentWhereUniqueInputBuilder b) updates]) =
      _$GFeedbackAttachmentWhereUniqueInput;

  String? get id;
  static Serializer<GFeedbackAttachmentWhereUniqueInput> get serializer =>
      _$gFeedbackAttachmentWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentWhereUniqueInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentWhereInput
    implements
        Built<GFeedbackAttachmentWhereInput,
            GFeedbackAttachmentWhereInputBuilder> {
  GFeedbackAttachmentWhereInput._();

  factory GFeedbackAttachmentWhereInput(
          [Function(GFeedbackAttachmentWhereInputBuilder b) updates]) =
      _$GFeedbackAttachmentWhereInput;

  BuiltList<GFeedbackAttachmentWhereInput>? get AND;
  BuiltList<GFeedbackAttachmentWhereInput>? get OR;
  BuiltList<GFeedbackAttachmentWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GFeedbackWhereInput? get feedback;
  static Serializer<GFeedbackAttachmentWhereInput> get serializer =>
      _$gFeedbackAttachmentWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentWhereInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentOrderByInput
    implements
        Built<GFeedbackAttachmentOrderByInput,
            GFeedbackAttachmentOrderByInputBuilder> {
  GFeedbackAttachmentOrderByInput._();

  factory GFeedbackAttachmentOrderByInput(
          [Function(GFeedbackAttachmentOrderByInputBuilder b) updates]) =
      _$GFeedbackAttachmentOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GFeedbackAttachmentOrderByInput> get serializer =>
      _$gFeedbackAttachmentOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentOrderByInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentUpdateInput
    implements
        Built<GFeedbackAttachmentUpdateInput,
            GFeedbackAttachmentUpdateInputBuilder> {
  GFeedbackAttachmentUpdateInput._();

  factory GFeedbackAttachmentUpdateInput(
          [Function(GFeedbackAttachmentUpdateInputBuilder b) updates]) =
      _$GFeedbackAttachmentUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFeedbackRelateToOneForUpdateInput? get feedback;
  GImageFieldInput? get image;
  static Serializer<GFeedbackAttachmentUpdateInput> get serializer =>
      _$gFeedbackAttachmentUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentUpdateInput.serializer,
        json,
      );
}

abstract class GFeedbackRelateToOneForUpdateInput
    implements
        Built<GFeedbackRelateToOneForUpdateInput,
            GFeedbackRelateToOneForUpdateInputBuilder> {
  GFeedbackRelateToOneForUpdateInput._();

  factory GFeedbackRelateToOneForUpdateInput(
          [Function(GFeedbackRelateToOneForUpdateInputBuilder b) updates]) =
      _$GFeedbackRelateToOneForUpdateInput;

  GFeedbackCreateInput? get create;
  GFeedbackWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GFeedbackRelateToOneForUpdateInput> get serializer =>
      _$gFeedbackRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentUpdateArgs
    implements
        Built<GFeedbackAttachmentUpdateArgs,
            GFeedbackAttachmentUpdateArgsBuilder> {
  GFeedbackAttachmentUpdateArgs._();

  factory GFeedbackAttachmentUpdateArgs(
          [Function(GFeedbackAttachmentUpdateArgsBuilder b) updates]) =
      _$GFeedbackAttachmentUpdateArgs;

  GFeedbackAttachmentWhereUniqueInput get where;
  GFeedbackAttachmentUpdateInput get data;
  static Serializer<GFeedbackAttachmentUpdateArgs> get serializer =>
      _$gFeedbackAttachmentUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentUpdateArgs.serializer,
        json,
      );
}

abstract class GFeedbackAttachmentCreateInput
    implements
        Built<GFeedbackAttachmentCreateInput,
            GFeedbackAttachmentCreateInputBuilder> {
  GFeedbackAttachmentCreateInput._();

  factory GFeedbackAttachmentCreateInput(
          [Function(GFeedbackAttachmentCreateInputBuilder b) updates]) =
      _$GFeedbackAttachmentCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFeedbackRelateToOneForCreateInput? get feedback;
  GImageFieldInput? get image;
  static Serializer<GFeedbackAttachmentCreateInput> get serializer =>
      _$gFeedbackAttachmentCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackAttachmentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackAttachmentCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackAttachmentCreateInput.serializer,
        json,
      );
}

abstract class GFeedbackRelateToOneForCreateInput
    implements
        Built<GFeedbackRelateToOneForCreateInput,
            GFeedbackRelateToOneForCreateInputBuilder> {
  GFeedbackRelateToOneForCreateInput._();

  factory GFeedbackRelateToOneForCreateInput(
          [Function(GFeedbackRelateToOneForCreateInputBuilder b) updates]) =
      _$GFeedbackRelateToOneForCreateInput;

  GFeedbackCreateInput? get create;
  GFeedbackWhereUniqueInput? get connect;
  static Serializer<GFeedbackRelateToOneForCreateInput> get serializer =>
      _$gFeedbackRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFeedbackRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GFeedbackRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFeedbackRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GReportWhereUniqueInput
    implements Built<GReportWhereUniqueInput, GReportWhereUniqueInputBuilder> {
  GReportWhereUniqueInput._();

  factory GReportWhereUniqueInput(
          [Function(GReportWhereUniqueInputBuilder b) updates]) =
      _$GReportWhereUniqueInput;

  String? get id;
  static Serializer<GReportWhereUniqueInput> get serializer =>
      _$gReportWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportWhereUniqueInput.serializer,
        json,
      );
}

abstract class GReportWhereInput
    implements Built<GReportWhereInput, GReportWhereInputBuilder> {
  GReportWhereInput._();

  factory GReportWhereInput([Function(GReportWhereInputBuilder b) updates]) =
      _$GReportWhereInput;

  BuiltList<GReportWhereInput>? get AND;
  BuiltList<GReportWhereInput>? get OR;
  BuiltList<GReportWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GStringNullableFilter? get status;
  GCategoryWhereInput? get category;
  GStringFilter? get title;
  GStringFilter? get description;
  GReportAttachmentManyRelationFilter? get attachments;
  static Serializer<GReportWhereInput> get serializer =>
      _$gReportWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportWhereInput.serializer,
        json,
      );
}

abstract class GReportAttachmentManyRelationFilter
    implements
        Built<GReportAttachmentManyRelationFilter,
            GReportAttachmentManyRelationFilterBuilder> {
  GReportAttachmentManyRelationFilter._();

  factory GReportAttachmentManyRelationFilter(
          [Function(GReportAttachmentManyRelationFilterBuilder b) updates]) =
      _$GReportAttachmentManyRelationFilter;

  GReportAttachmentWhereInput? get every;
  GReportAttachmentWhereInput? get some;
  GReportAttachmentWhereInput? get none;
  static Serializer<GReportAttachmentManyRelationFilter> get serializer =>
      _$gReportAttachmentManyRelationFilterSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentManyRelationFilter.serializer,
        json,
      );
}

abstract class GReportOrderByInput
    implements Built<GReportOrderByInput, GReportOrderByInputBuilder> {
  GReportOrderByInput._();

  factory GReportOrderByInput(
      [Function(GReportOrderByInputBuilder b) updates]) = _$GReportOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get status;
  GOrderDirection? get title;
  GOrderDirection? get description;
  static Serializer<GReportOrderByInput> get serializer =>
      _$gReportOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportOrderByInput.serializer,
        json,
      );
}

abstract class GReportUpdateInput
    implements Built<GReportUpdateInput, GReportUpdateInputBuilder> {
  GReportUpdateInput._();

  factory GReportUpdateInput([Function(GReportUpdateInputBuilder b) updates]) =
      _$GReportUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  String? get status;
  GCategoryRelateToOneForUpdateInput? get category;
  String? get title;
  String? get description;
  GReportAttachmentRelateToManyForUpdateInput? get attachments;
  static Serializer<GReportUpdateInput> get serializer =>
      _$gReportUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportUpdateInput.serializer,
        json,
      );
}

abstract class GReportAttachmentRelateToManyForUpdateInput
    implements
        Built<GReportAttachmentRelateToManyForUpdateInput,
            GReportAttachmentRelateToManyForUpdateInputBuilder> {
  GReportAttachmentRelateToManyForUpdateInput._();

  factory GReportAttachmentRelateToManyForUpdateInput(
      [Function(GReportAttachmentRelateToManyForUpdateInputBuilder b)
          updates]) = _$GReportAttachmentRelateToManyForUpdateInput;

  BuiltList<GReportAttachmentWhereUniqueInput>? get disconnect;
  BuiltList<GReportAttachmentWhereUniqueInput>? get set;
  BuiltList<GReportAttachmentCreateInput>? get create;
  BuiltList<GReportAttachmentWhereUniqueInput>? get connect;
  static Serializer<GReportAttachmentRelateToManyForUpdateInput>
      get serializer => _$gReportAttachmentRelateToManyForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GReportUpdateArgs
    implements Built<GReportUpdateArgs, GReportUpdateArgsBuilder> {
  GReportUpdateArgs._();

  factory GReportUpdateArgs([Function(GReportUpdateArgsBuilder b) updates]) =
      _$GReportUpdateArgs;

  GReportWhereUniqueInput get where;
  GReportUpdateInput get data;
  static Serializer<GReportUpdateArgs> get serializer =>
      _$gReportUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportUpdateArgs.serializer,
        json,
      );
}

abstract class GReportCreateInput
    implements Built<GReportCreateInput, GReportCreateInputBuilder> {
  GReportCreateInput._();

  factory GReportCreateInput([Function(GReportCreateInputBuilder b) updates]) =
      _$GReportCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  String? get status;
  GCategoryRelateToOneForCreateInput? get category;
  String? get title;
  String? get description;
  GReportAttachmentRelateToManyForCreateInput? get attachments;
  static Serializer<GReportCreateInput> get serializer =>
      _$gReportCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportCreateInput.serializer,
        json,
      );
}

abstract class GReportAttachmentRelateToManyForCreateInput
    implements
        Built<GReportAttachmentRelateToManyForCreateInput,
            GReportAttachmentRelateToManyForCreateInputBuilder> {
  GReportAttachmentRelateToManyForCreateInput._();

  factory GReportAttachmentRelateToManyForCreateInput(
      [Function(GReportAttachmentRelateToManyForCreateInputBuilder b)
          updates]) = _$GReportAttachmentRelateToManyForCreateInput;

  BuiltList<GReportAttachmentCreateInput>? get create;
  BuiltList<GReportAttachmentWhereUniqueInput>? get connect;
  static Serializer<GReportAttachmentRelateToManyForCreateInput>
      get serializer => _$gReportAttachmentRelateToManyForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GReportAttachmentWhereUniqueInput
    implements
        Built<GReportAttachmentWhereUniqueInput,
            GReportAttachmentWhereUniqueInputBuilder> {
  GReportAttachmentWhereUniqueInput._();

  factory GReportAttachmentWhereUniqueInput(
          [Function(GReportAttachmentWhereUniqueInputBuilder b) updates]) =
      _$GReportAttachmentWhereUniqueInput;

  String? get id;
  static Serializer<GReportAttachmentWhereUniqueInput> get serializer =>
      _$gReportAttachmentWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentWhereUniqueInput.serializer,
        json,
      );
}

abstract class GReportAttachmentWhereInput
    implements
        Built<GReportAttachmentWhereInput, GReportAttachmentWhereInputBuilder> {
  GReportAttachmentWhereInput._();

  factory GReportAttachmentWhereInput(
          [Function(GReportAttachmentWhereInputBuilder b) updates]) =
      _$GReportAttachmentWhereInput;

  BuiltList<GReportAttachmentWhereInput>? get AND;
  BuiltList<GReportAttachmentWhereInput>? get OR;
  BuiltList<GReportAttachmentWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GReportWhereInput? get report;
  static Serializer<GReportAttachmentWhereInput> get serializer =>
      _$gReportAttachmentWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentWhereInput.serializer,
        json,
      );
}

abstract class GReportAttachmentOrderByInput
    implements
        Built<GReportAttachmentOrderByInput,
            GReportAttachmentOrderByInputBuilder> {
  GReportAttachmentOrderByInput._();

  factory GReportAttachmentOrderByInput(
          [Function(GReportAttachmentOrderByInputBuilder b) updates]) =
      _$GReportAttachmentOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GReportAttachmentOrderByInput> get serializer =>
      _$gReportAttachmentOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentOrderByInput.serializer,
        json,
      );
}

abstract class GReportAttachmentUpdateInput
    implements
        Built<GReportAttachmentUpdateInput,
            GReportAttachmentUpdateInputBuilder> {
  GReportAttachmentUpdateInput._();

  factory GReportAttachmentUpdateInput(
          [Function(GReportAttachmentUpdateInputBuilder b) updates]) =
      _$GReportAttachmentUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GReportRelateToOneForUpdateInput? get report;
  GImageFieldInput? get image;
  static Serializer<GReportAttachmentUpdateInput> get serializer =>
      _$gReportAttachmentUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentUpdateInput.serializer,
        json,
      );
}

abstract class GReportRelateToOneForUpdateInput
    implements
        Built<GReportRelateToOneForUpdateInput,
            GReportRelateToOneForUpdateInputBuilder> {
  GReportRelateToOneForUpdateInput._();

  factory GReportRelateToOneForUpdateInput(
          [Function(GReportRelateToOneForUpdateInputBuilder b) updates]) =
      _$GReportRelateToOneForUpdateInput;

  GReportCreateInput? get create;
  GReportWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GReportRelateToOneForUpdateInput> get serializer =>
      _$gReportRelateToOneForUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GReportAttachmentUpdateArgs
    implements
        Built<GReportAttachmentUpdateArgs, GReportAttachmentUpdateArgsBuilder> {
  GReportAttachmentUpdateArgs._();

  factory GReportAttachmentUpdateArgs(
          [Function(GReportAttachmentUpdateArgsBuilder b) updates]) =
      _$GReportAttachmentUpdateArgs;

  GReportAttachmentWhereUniqueInput get where;
  GReportAttachmentUpdateInput get data;
  static Serializer<GReportAttachmentUpdateArgs> get serializer =>
      _$gReportAttachmentUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentUpdateArgs.serializer,
        json,
      );
}

abstract class GReportAttachmentCreateInput
    implements
        Built<GReportAttachmentCreateInput,
            GReportAttachmentCreateInputBuilder> {
  GReportAttachmentCreateInput._();

  factory GReportAttachmentCreateInput(
          [Function(GReportAttachmentCreateInputBuilder b) updates]) =
      _$GReportAttachmentCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GReportRelateToOneForCreateInput? get report;
  GImageFieldInput? get image;
  static Serializer<GReportAttachmentCreateInput> get serializer =>
      _$gReportAttachmentCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportAttachmentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportAttachmentCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportAttachmentCreateInput.serializer,
        json,
      );
}

abstract class GReportRelateToOneForCreateInput
    implements
        Built<GReportRelateToOneForCreateInput,
            GReportRelateToOneForCreateInputBuilder> {
  GReportRelateToOneForCreateInput._();

  factory GReportRelateToOneForCreateInput(
          [Function(GReportRelateToOneForCreateInputBuilder b) updates]) =
      _$GReportRelateToOneForCreateInput;

  GReportCreateInput? get create;
  GReportWhereUniqueInput? get connect;
  static Serializer<GReportRelateToOneForCreateInput> get serializer =>
      _$gReportRelateToOneForCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GReportRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GCategoryWhereUniqueInput
    implements
        Built<GCategoryWhereUniqueInput, GCategoryWhereUniqueInputBuilder> {
  GCategoryWhereUniqueInput._();

  factory GCategoryWhereUniqueInput(
          [Function(GCategoryWhereUniqueInputBuilder b) updates]) =
      _$GCategoryWhereUniqueInput;

  String? get id;
  static Serializer<GCategoryWhereUniqueInput> get serializer =>
      _$gCategoryWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryWhereUniqueInput.serializer,
        json,
      );
}

abstract class GCategoryWhereInput
    implements Built<GCategoryWhereInput, GCategoryWhereInputBuilder> {
  GCategoryWhereInput._();

  factory GCategoryWhereInput(
      [Function(GCategoryWhereInputBuilder b) updates]) = _$GCategoryWhereInput;

  BuiltList<GCategoryWhereInput>? get AND;
  BuiltList<GCategoryWhereInput>? get OR;
  BuiltList<GCategoryWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  static Serializer<GCategoryWhereInput> get serializer =>
      _$gCategoryWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryWhereInput.serializer,
        json,
      );
}

abstract class GCategoryOrderByInput
    implements Built<GCategoryOrderByInput, GCategoryOrderByInputBuilder> {
  GCategoryOrderByInput._();

  factory GCategoryOrderByInput(
          [Function(GCategoryOrderByInputBuilder b) updates]) =
      _$GCategoryOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GCategoryOrderByInput> get serializer =>
      _$gCategoryOrderByInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryOrderByInput.serializer,
        json,
      );
}

abstract class GCategoryUpdateInput
    implements Built<GCategoryUpdateInput, GCategoryUpdateInputBuilder> {
  GCategoryUpdateInput._();

  factory GCategoryUpdateInput(
          [Function(GCategoryUpdateInputBuilder b) updates]) =
      _$GCategoryUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GCategoryUpdateInput> get serializer =>
      _$gCategoryUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryUpdateInput.serializer,
        json,
      );
}

abstract class GCategoryUpdateArgs
    implements Built<GCategoryUpdateArgs, GCategoryUpdateArgsBuilder> {
  GCategoryUpdateArgs._();

  factory GCategoryUpdateArgs(
      [Function(GCategoryUpdateArgsBuilder b) updates]) = _$GCategoryUpdateArgs;

  GCategoryWhereUniqueInput get where;
  GCategoryUpdateInput get data;
  static Serializer<GCategoryUpdateArgs> get serializer =>
      _$gCategoryUpdateArgsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryUpdateArgs.serializer,
        json,
      );
}

abstract class GCategoryCreateInput
    implements Built<GCategoryCreateInput, GCategoryCreateInputBuilder> {
  GCategoryCreateInput._();

  factory GCategoryCreateInput(
          [Function(GCategoryCreateInputBuilder b) updates]) =
      _$GCategoryCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GCategoryCreateInput> get serializer =>
      _$gCategoryCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCategoryCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCategoryCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCategoryCreateInput.serializer,
        json,
      );
}

abstract class GOrderItem implements Built<GOrderItem, GOrderItemBuilder> {
  GOrderItem._();

  factory GOrderItem([Function(GOrderItemBuilder b) updates]) = _$GOrderItem;

  GOrderItemType get type;
  BuiltList<String> get ids;
  static Serializer<GOrderItem> get serializer => _$gOrderItemSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOrderItem.serializer,
        this,
      ) as Map<String, dynamic>);
  static GOrderItem? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOrderItem.serializer,
        json,
      );
}

class GOrderItemType extends EnumClass {
  const GOrderItemType._(String name) : super(name);

  static const GOrderItemType vehicleDealer = _$gOrderItemTypevehicleDealer;

  static const GOrderItemType testDriveDealer = _$gOrderItemTypetestDriveDealer;

  static Serializer<GOrderItemType> get serializer =>
      _$gOrderItemTypeSerializer;
  static BuiltSet<GOrderItemType> get values => _$gOrderItemTypeValues;
  static GOrderItemType valueOf(String name) => _$gOrderItemTypeValueOf(name);
}

abstract class GPaymentItem
    implements Built<GPaymentItem, GPaymentItemBuilder> {
  GPaymentItem._();

  factory GPaymentItem([Function(GPaymentItemBuilder b) updates]) =
      _$GPaymentItem;

  GPaymentItemType get type;
  int get amount;
  static Serializer<GPaymentItem> get serializer => _$gPaymentItemSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPaymentItem.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPaymentItem? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPaymentItem.serializer,
        json,
      );
}

class GPaymentItemType extends EnumClass {
  const GPaymentItemType._(String name) : super(name);

  static const GPaymentItemType razorpay = _$gPaymentItemTyperazorpay;

  static const GPaymentItemType wallet = _$gPaymentItemTypewallet;

  static const GPaymentItemType cash = _$gPaymentItemTypecash;

  static Serializer<GPaymentItemType> get serializer =>
      _$gPaymentItemTypeSerializer;
  static BuiltSet<GPaymentItemType> get values => _$gPaymentItemTypeValues;
  static GPaymentItemType valueOf(String name) =>
      _$gPaymentItemTypeValueOf(name);
}

abstract class GCreateInitialUserInput
    implements Built<GCreateInitialUserInput, GCreateInitialUserInputBuilder> {
  GCreateInitialUserInput._();

  factory GCreateInitialUserInput(
          [Function(GCreateInitialUserInputBuilder b) updates]) =
      _$GCreateInitialUserInput;

  String? get name;
  String? get phoneNumber;
  String? get email;
  String? get password;
  static Serializer<GCreateInitialUserInput> get serializer =>
      _$gCreateInitialUserInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateInitialUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateInitialUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateInitialUserInput.serializer,
        json,
      );
}

class GPasswordResetRedemptionErrorCode extends EnumClass {
  const GPasswordResetRedemptionErrorCode._(String name) : super(name);

  static const GPasswordResetRedemptionErrorCode FAILURE =
      _$gPasswordResetRedemptionErrorCodeFAILURE;

  static const GPasswordResetRedemptionErrorCode TOKEN_EXPIRED =
      _$gPasswordResetRedemptionErrorCodeTOKEN_EXPIRED;

  static const GPasswordResetRedemptionErrorCode TOKEN_REDEEMED =
      _$gPasswordResetRedemptionErrorCodeTOKEN_REDEEMED;

  static Serializer<GPasswordResetRedemptionErrorCode> get serializer =>
      _$gPasswordResetRedemptionErrorCodeSerializer;
  static BuiltSet<GPasswordResetRedemptionErrorCode> get values =>
      _$gPasswordResetRedemptionErrorCodeValues;
  static GPasswordResetRedemptionErrorCode valueOf(String name) =>
      _$gPasswordResetRedemptionErrorCodeValueOf(name);
}

abstract class GItem implements Built<GItem, GItemBuilder> {
  GItem._();

  factory GItem([Function(GItemBuilder b) updates]) = _$GItem;

  GCouponItemType get type;
  BuiltList<String> get ids;
  static Serializer<GItem> get serializer => _$gItemSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GItem.serializer,
        this,
      ) as Map<String, dynamic>);
  static GItem? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GItem.serializer,
        json,
      );
}

class GCouponItemType extends EnumClass {
  const GCouponItemType._(String name) : super(name);

  static const GCouponItemType vehicleDealer = _$gCouponItemTypevehicleDealer;

  static Serializer<GCouponItemType> get serializer =>
      _$gCouponItemTypeSerializer;
  static BuiltSet<GCouponItemType> get values => _$gCouponItemTypeValues;
  static GCouponItemType valueOf(String name) => _$gCouponItemTypeValueOf(name);
}

class GKeystoneAdminUIFieldMetaCreateViewFieldMode extends EnumClass {
  const GKeystoneAdminUIFieldMetaCreateViewFieldMode._(String name)
      : super(name);

  static const GKeystoneAdminUIFieldMetaCreateViewFieldMode edit =
      _$gKeystoneAdminUIFieldMetaCreateViewFieldModeedit;

  static const GKeystoneAdminUIFieldMetaCreateViewFieldMode hidden =
      _$gKeystoneAdminUIFieldMetaCreateViewFieldModehidden;

  static Serializer<GKeystoneAdminUIFieldMetaCreateViewFieldMode>
      get serializer =>
          _$gKeystoneAdminUIFieldMetaCreateViewFieldModeSerializer;
  static BuiltSet<GKeystoneAdminUIFieldMetaCreateViewFieldMode> get values =>
      _$gKeystoneAdminUIFieldMetaCreateViewFieldModeValues;
  static GKeystoneAdminUIFieldMetaCreateViewFieldMode valueOf(String name) =>
      _$gKeystoneAdminUIFieldMetaCreateViewFieldModeValueOf(name);
}

class GKeystoneAdminUIFieldMetaListViewFieldMode extends EnumClass {
  const GKeystoneAdminUIFieldMetaListViewFieldMode._(String name) : super(name);

  static const GKeystoneAdminUIFieldMetaListViewFieldMode read =
      _$gKeystoneAdminUIFieldMetaListViewFieldModeread;

  static const GKeystoneAdminUIFieldMetaListViewFieldMode hidden =
      _$gKeystoneAdminUIFieldMetaListViewFieldModehidden;

  static Serializer<GKeystoneAdminUIFieldMetaListViewFieldMode>
      get serializer => _$gKeystoneAdminUIFieldMetaListViewFieldModeSerializer;
  static BuiltSet<GKeystoneAdminUIFieldMetaListViewFieldMode> get values =>
      _$gKeystoneAdminUIFieldMetaListViewFieldModeValues;
  static GKeystoneAdminUIFieldMetaListViewFieldMode valueOf(String name) =>
      _$gKeystoneAdminUIFieldMetaListViewFieldModeValueOf(name);
}

class GKeystoneAdminUIFieldMetaItemViewFieldMode extends EnumClass {
  const GKeystoneAdminUIFieldMetaItemViewFieldMode._(String name) : super(name);

  static const GKeystoneAdminUIFieldMetaItemViewFieldMode edit =
      _$gKeystoneAdminUIFieldMetaItemViewFieldModeedit;

  static const GKeystoneAdminUIFieldMetaItemViewFieldMode read =
      _$gKeystoneAdminUIFieldMetaItemViewFieldModeread;

  static const GKeystoneAdminUIFieldMetaItemViewFieldMode hidden =
      _$gKeystoneAdminUIFieldMetaItemViewFieldModehidden;

  static Serializer<GKeystoneAdminUIFieldMetaItemViewFieldMode>
      get serializer => _$gKeystoneAdminUIFieldMetaItemViewFieldModeSerializer;
  static BuiltSet<GKeystoneAdminUIFieldMetaItemViewFieldMode> get values =>
      _$gKeystoneAdminUIFieldMetaItemViewFieldModeValues;
  static GKeystoneAdminUIFieldMetaItemViewFieldMode valueOf(String name) =>
      _$gKeystoneAdminUIFieldMetaItemViewFieldModeValueOf(name);
}

class GKeystoneAdminUIFieldMetaItemViewFieldPosition extends EnumClass {
  const GKeystoneAdminUIFieldMetaItemViewFieldPosition._(String name)
      : super(name);

  static const GKeystoneAdminUIFieldMetaItemViewFieldPosition form =
      _$gKeystoneAdminUIFieldMetaItemViewFieldPositionform;

  static const GKeystoneAdminUIFieldMetaItemViewFieldPosition sidebar =
      _$gKeystoneAdminUIFieldMetaItemViewFieldPositionsidebar;

  static Serializer<GKeystoneAdminUIFieldMetaItemViewFieldPosition>
      get serializer =>
          _$gKeystoneAdminUIFieldMetaItemViewFieldPositionSerializer;
  static BuiltSet<GKeystoneAdminUIFieldMetaItemViewFieldPosition> get values =>
      _$gKeystoneAdminUIFieldMetaItemViewFieldPositionValues;
  static GKeystoneAdminUIFieldMetaItemViewFieldPosition valueOf(String name) =>
      _$gKeystoneAdminUIFieldMetaItemViewFieldPositionValueOf(name);
}

class GKeystoneAdminUISortDirection extends EnumClass {
  const GKeystoneAdminUISortDirection._(String name) : super(name);

  static const GKeystoneAdminUISortDirection ASC =
      _$gKeystoneAdminUISortDirectionASC;

  static const GKeystoneAdminUISortDirection DESC =
      _$gKeystoneAdminUISortDirectionDESC;

  static Serializer<GKeystoneAdminUISortDirection> get serializer =>
      _$gKeystoneAdminUISortDirectionSerializer;
  static BuiltSet<GKeystoneAdminUISortDirection> get values =>
      _$gKeystoneAdminUISortDirectionValues;
  static GKeystoneAdminUISortDirection valueOf(String name) =>
      _$gKeystoneAdminUISortDirectionValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {
  'UserAuthenticationWithPasswordResult': {
    'UserAuthenticationWithPasswordSuccess',
    'UserAuthenticationWithPasswordFailure',
  },
  'AuthenticatedItem': {'User'},
};
