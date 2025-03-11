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
          [void Function(GUserWhereUniqueInputBuilder b) updates]) =
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

  factory GUserWhereInput([void Function(GUserWhereInputBuilder b) updates]) =
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
  GBooleanFilter? get deactivate;
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

  factory GIDFilter([void Function(GIDFilterBuilder b) updates]) = _$GIDFilter;

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
          [void Function(GDateTimeNullableFilterBuilder b) updates]) =
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

  factory GStringFilter([void Function(GStringFilterBuilder b) updates]) =
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
          [void Function(GNestedStringFilterBuilder b) updates]) =
      _$GNestedStringFilter;

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

  factory GBooleanFilter([void Function(GBooleanFilterBuilder b) updates]) =
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
          [void Function(GAddressManyRelationFilterBuilder b) updates]) =
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
          [void Function(GFavoriteManyRelationFilterBuilder b) updates]) =
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
          [void Function(GCartItemManyRelationFilterBuilder b) updates]) =
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

  factory GPasswordFilter([void Function(GPasswordFilterBuilder b) updates]) =
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

  factory GUserOrderByInput(
          [void Function(GUserOrderByInputBuilder b) updates]) =
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
  GOrderDirection? get deactivate;
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

  factory GUserUpdateInput([void Function(GUserUpdateInputBuilder b) updates]) =
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
  bool? get deactivate;
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

  factory GImageFieldInput([void Function(GImageFieldInputBuilder b) updates]) =
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

  factory GFileFieldInput([void Function(GFileFieldInputBuilder b) updates]) =
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
      [void Function(GAddressRelateToManyForUpdateInputBuilder b)
          updates]) = _$GAddressRelateToManyForUpdateInput;

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
      [void Function(GFavoriteRelateToManyForUpdateInputBuilder b)
          updates]) = _$GFavoriteRelateToManyForUpdateInput;

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
      [void Function(GCartItemRelateToManyForUpdateInputBuilder b)
          updates]) = _$GCartItemRelateToManyForUpdateInput;

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
          [void Function(GWalletRelateToOneForUpdateInputBuilder b) updates]) =
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
      [void Function(GReferralCodeRelateToOneForUpdateInputBuilder b)
          updates]) = _$GReferralCodeRelateToOneForUpdateInput;

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

  factory GUserUpdateArgs([void Function(GUserUpdateArgsBuilder b) updates]) =
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

  factory GUserCreateInput([void Function(GUserCreateInputBuilder b) updates]) =
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
  bool? get deactivate;
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
      [void Function(GAddressRelateToManyForCreateInputBuilder b)
          updates]) = _$GAddressRelateToManyForCreateInput;

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
      [void Function(GFavoriteRelateToManyForCreateInputBuilder b)
          updates]) = _$GFavoriteRelateToManyForCreateInput;

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
      [void Function(GCartItemRelateToManyForCreateInputBuilder b)
          updates]) = _$GCartItemRelateToManyForCreateInput;

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
          [void Function(GWalletRelateToOneForCreateInputBuilder b) updates]) =
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
      [void Function(GReferralCodeRelateToOneForCreateInputBuilder b)
          updates]) = _$GReferralCodeRelateToOneForCreateInput;

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
          [void Function(GReferralCodeWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GReferralCodeWhereInputBuilder b) updates]) =
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
          [void Function(GReferralCodeOrderByInputBuilder b) updates]) =
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
          [void Function(GReferralCodeUpdateInputBuilder b) updates]) =
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
          [void Function(GUserRelateToOneForUpdateInputBuilder b) updates]) =
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
          [void Function(GReferralCodeUpdateArgsBuilder b) updates]) =
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
          [void Function(GReferralCodeCreateInputBuilder b) updates]) =
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
          [void Function(GUserRelateToOneForCreateInputBuilder b) updates]) =
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
          [void Function(GReferralUserWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GReferralUserWhereInputBuilder b) updates]) =
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
          [void Function(GReferralUserOrderByInputBuilder b) updates]) =
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
          [void Function(GReferralUserUpdateInputBuilder b) updates]) =
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
          [void Function(GReferralUserUpdateArgsBuilder b) updates]) =
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
          [void Function(GReferralUserCreateInputBuilder b) updates]) =
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

abstract class GFirebaseDeviceTokenWhereUniqueInput
    implements
        Built<GFirebaseDeviceTokenWhereUniqueInput,
            GFirebaseDeviceTokenWhereUniqueInputBuilder> {
  GFirebaseDeviceTokenWhereUniqueInput._();

  factory GFirebaseDeviceTokenWhereUniqueInput(
      [void Function(GFirebaseDeviceTokenWhereUniqueInputBuilder b)
          updates]) = _$GFirebaseDeviceTokenWhereUniqueInput;

  String? get id;
  String? get deviceToken;
  static Serializer<GFirebaseDeviceTokenWhereUniqueInput> get serializer =>
      _$gFirebaseDeviceTokenWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFirebaseDeviceTokenWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFirebaseDeviceTokenWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFirebaseDeviceTokenWhereUniqueInput.serializer,
        json,
      );
}

abstract class GFirebaseDeviceTokenWhereInput
    implements
        Built<GFirebaseDeviceTokenWhereInput,
            GFirebaseDeviceTokenWhereInputBuilder> {
  GFirebaseDeviceTokenWhereInput._();

  factory GFirebaseDeviceTokenWhereInput(
          [void Function(GFirebaseDeviceTokenWhereInputBuilder b) updates]) =
      _$GFirebaseDeviceTokenWhereInput;

  BuiltList<GFirebaseDeviceTokenWhereInput>? get AND;
  BuiltList<GFirebaseDeviceTokenWhereInput>? get OR;
  BuiltList<GFirebaseDeviceTokenWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get deviceToken;
  GUserWhereInput? get user;
  static Serializer<GFirebaseDeviceTokenWhereInput> get serializer =>
      _$gFirebaseDeviceTokenWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFirebaseDeviceTokenWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFirebaseDeviceTokenWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFirebaseDeviceTokenWhereInput.serializer,
        json,
      );
}

abstract class GFirebaseDeviceTokenOrderByInput
    implements
        Built<GFirebaseDeviceTokenOrderByInput,
            GFirebaseDeviceTokenOrderByInputBuilder> {
  GFirebaseDeviceTokenOrderByInput._();

  factory GFirebaseDeviceTokenOrderByInput(
          [void Function(GFirebaseDeviceTokenOrderByInputBuilder b) updates]) =
      _$GFirebaseDeviceTokenOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get deviceToken;
  static Serializer<GFirebaseDeviceTokenOrderByInput> get serializer =>
      _$gFirebaseDeviceTokenOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFirebaseDeviceTokenOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFirebaseDeviceTokenOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFirebaseDeviceTokenOrderByInput.serializer,
        json,
      );
}

abstract class GFirebaseDeviceTokenUpdateInput
    implements
        Built<GFirebaseDeviceTokenUpdateInput,
            GFirebaseDeviceTokenUpdateInputBuilder> {
  GFirebaseDeviceTokenUpdateInput._();

  factory GFirebaseDeviceTokenUpdateInput(
          [void Function(GFirebaseDeviceTokenUpdateInputBuilder b) updates]) =
      _$GFirebaseDeviceTokenUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get deviceToken;
  GUserRelateToOneForUpdateInput? get user;
  static Serializer<GFirebaseDeviceTokenUpdateInput> get serializer =>
      _$gFirebaseDeviceTokenUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFirebaseDeviceTokenUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFirebaseDeviceTokenUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFirebaseDeviceTokenUpdateInput.serializer,
        json,
      );
}

abstract class GFirebaseDeviceTokenUpdateArgs
    implements
        Built<GFirebaseDeviceTokenUpdateArgs,
            GFirebaseDeviceTokenUpdateArgsBuilder> {
  GFirebaseDeviceTokenUpdateArgs._();

  factory GFirebaseDeviceTokenUpdateArgs(
          [void Function(GFirebaseDeviceTokenUpdateArgsBuilder b) updates]) =
      _$GFirebaseDeviceTokenUpdateArgs;

  GFirebaseDeviceTokenWhereUniqueInput get where;
  GFirebaseDeviceTokenUpdateInput get data;
  static Serializer<GFirebaseDeviceTokenUpdateArgs> get serializer =>
      _$gFirebaseDeviceTokenUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFirebaseDeviceTokenUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFirebaseDeviceTokenUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFirebaseDeviceTokenUpdateArgs.serializer,
        json,
      );
}

abstract class GFirebaseDeviceTokenCreateInput
    implements
        Built<GFirebaseDeviceTokenCreateInput,
            GFirebaseDeviceTokenCreateInputBuilder> {
  GFirebaseDeviceTokenCreateInput._();

  factory GFirebaseDeviceTokenCreateInput(
          [void Function(GFirebaseDeviceTokenCreateInputBuilder b) updates]) =
      _$GFirebaseDeviceTokenCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get deviceToken;
  GUserRelateToOneForCreateInput? get user;
  static Serializer<GFirebaseDeviceTokenCreateInput> get serializer =>
      _$gFirebaseDeviceTokenCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFirebaseDeviceTokenCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFirebaseDeviceTokenCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFirebaseDeviceTokenCreateInput.serializer,
        json,
      );
}

abstract class GAddressWhereUniqueInput
    implements
        Built<GAddressWhereUniqueInput, GAddressWhereUniqueInputBuilder> {
  GAddressWhereUniqueInput._();

  factory GAddressWhereUniqueInput(
          [void Function(GAddressWhereUniqueInputBuilder b) updates]) =
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

  factory GAddressWhereInput(
          [void Function(GAddressWhereInputBuilder b) updates]) =
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
  GFloatNullableFilter? get lLat;
  GFloatNullableFilter? get lLng;
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

abstract class GFloatNullableFilter
    implements Built<GFloatNullableFilter, GFloatNullableFilterBuilder> {
  GFloatNullableFilter._();

  factory GFloatNullableFilter(
          [void Function(GFloatNullableFilterBuilder b) updates]) =
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

abstract class GAddressOrderByInput
    implements Built<GAddressOrderByInput, GAddressOrderByInputBuilder> {
  GAddressOrderByInput._();

  factory GAddressOrderByInput(
          [void Function(GAddressOrderByInputBuilder b) updates]) =
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
  GOrderDirection? get lLat;
  GOrderDirection? get lLng;
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
          [void Function(GAddressUpdateInputBuilder b) updates]) =
      _$GAddressUpdateInput;

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
  double? get lLat;
  double? get lLng;
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

  factory GAddressUpdateArgs(
          [void Function(GAddressUpdateArgsBuilder b) updates]) =
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
          [void Function(GAddressCreateInputBuilder b) updates]) =
      _$GAddressCreateInput;

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
  double? get lLat;
  double? get lLng;
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

abstract class GDealerAddressWhereUniqueInput
    implements
        Built<GDealerAddressWhereUniqueInput,
            GDealerAddressWhereUniqueInputBuilder> {
  GDealerAddressWhereUniqueInput._();

  factory GDealerAddressWhereUniqueInput(
          [void Function(GDealerAddressWhereUniqueInputBuilder b) updates]) =
      _$GDealerAddressWhereUniqueInput;

  String? get id;
  static Serializer<GDealerAddressWhereUniqueInput> get serializer =>
      _$gDealerAddressWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressWhereUniqueInput.serializer,
        json,
      );
}

abstract class GDealerAddressWhereInput
    implements
        Built<GDealerAddressWhereInput, GDealerAddressWhereInputBuilder> {
  GDealerAddressWhereInput._();

  factory GDealerAddressWhereInput(
          [void Function(GDealerAddressWhereInputBuilder b) updates]) =
      _$GDealerAddressWhereInput;

  BuiltList<GDealerAddressWhereInput>? get AND;
  BuiltList<GDealerAddressWhereInput>? get OR;
  BuiltList<GDealerAddressWhereInput>? get NOT;
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
  GDealerWhereInput? get dealer;
  static Serializer<GDealerAddressWhereInput> get serializer =>
      _$gDealerAddressWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressWhereInput.serializer,
        json,
      );
}

abstract class GDealerAddressOrderByInput
    implements
        Built<GDealerAddressOrderByInput, GDealerAddressOrderByInputBuilder> {
  GDealerAddressOrderByInput._();

  factory GDealerAddressOrderByInput(
          [void Function(GDealerAddressOrderByInputBuilder b) updates]) =
      _$GDealerAddressOrderByInput;

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
  static Serializer<GDealerAddressOrderByInput> get serializer =>
      _$gDealerAddressOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressOrderByInput.serializer,
        json,
      );
}

abstract class GDealerAddressUpdateInput
    implements
        Built<GDealerAddressUpdateInput, GDealerAddressUpdateInputBuilder> {
  GDealerAddressUpdateInput._();

  factory GDealerAddressUpdateInput(
          [void Function(GDealerAddressUpdateInputBuilder b) updates]) =
      _$GDealerAddressUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get pinCode;
  String? get address;
  String? get town;
  String? get district;
  String? get state;
  GDealerRelateToOneForUpdateInput? get dealer;
  static Serializer<GDealerAddressUpdateInput> get serializer =>
      _$gDealerAddressUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressUpdateInput.serializer,
        json,
      );
}

abstract class GDealerRelateToOneForUpdateInput
    implements
        Built<GDealerRelateToOneForUpdateInput,
            GDealerRelateToOneForUpdateInputBuilder> {
  GDealerRelateToOneForUpdateInput._();

  factory GDealerRelateToOneForUpdateInput(
          [void Function(GDealerRelateToOneForUpdateInputBuilder b) updates]) =
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

abstract class GDealerAddressUpdateArgs
    implements
        Built<GDealerAddressUpdateArgs, GDealerAddressUpdateArgsBuilder> {
  GDealerAddressUpdateArgs._();

  factory GDealerAddressUpdateArgs(
          [void Function(GDealerAddressUpdateArgsBuilder b) updates]) =
      _$GDealerAddressUpdateArgs;

  GDealerAddressWhereUniqueInput get where;
  GDealerAddressUpdateInput get data;
  static Serializer<GDealerAddressUpdateArgs> get serializer =>
      _$gDealerAddressUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressUpdateArgs.serializer,
        json,
      );
}

abstract class GDealerAddressCreateInput
    implements
        Built<GDealerAddressCreateInput, GDealerAddressCreateInputBuilder> {
  GDealerAddressCreateInput._();

  factory GDealerAddressCreateInput(
          [void Function(GDealerAddressCreateInputBuilder b) updates]) =
      _$GDealerAddressCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get pinCode;
  String? get address;
  String? get town;
  String? get district;
  String? get state;
  GDealerRelateToOneForCreateInput? get dealer;
  static Serializer<GDealerAddressCreateInput> get serializer =>
      _$gDealerAddressCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressCreateInput.serializer,
        json,
      );
}

abstract class GDealerRelateToOneForCreateInput
    implements
        Built<GDealerRelateToOneForCreateInput,
            GDealerRelateToOneForCreateInputBuilder> {
  GDealerRelateToOneForCreateInput._();

  factory GDealerRelateToOneForCreateInput(
          [void Function(GDealerRelateToOneForCreateInputBuilder b) updates]) =
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

abstract class GFavoriteWhereUniqueInput
    implements
        Built<GFavoriteWhereUniqueInput, GFavoriteWhereUniqueInputBuilder> {
  GFavoriteWhereUniqueInput._();

  factory GFavoriteWhereUniqueInput(
          [void Function(GFavoriteWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GFavoriteWhereInputBuilder b) updates]) =
      _$GFavoriteWhereInput;

  BuiltList<GFavoriteWhereInput>? get AND;
  BuiltList<GFavoriteWhereInput>? get OR;
  BuiltList<GFavoriteWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleVariantWhereInput? get vehicleVariant;
  GUserWhereInput? get user;
  GProductVariantWhereInput? get productVariant;
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
          [void Function(GFavoriteOrderByInputBuilder b) updates]) =
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
          [void Function(GFavoriteUpdateInputBuilder b) updates]) =
      _$GFavoriteUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GUserRelateToOneForUpdateInput? get user;
  GProductVariantRelateToOneForUpdateInput? get productVariant;
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
      [void Function(GVehicleVariantRelateToOneForUpdateInputBuilder b)
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

abstract class GProductVariantRelateToOneForUpdateInput
    implements
        Built<GProductVariantRelateToOneForUpdateInput,
            GProductVariantRelateToOneForUpdateInputBuilder> {
  GProductVariantRelateToOneForUpdateInput._();

  factory GProductVariantRelateToOneForUpdateInput(
      [void Function(GProductVariantRelateToOneForUpdateInputBuilder b)
          updates]) = _$GProductVariantRelateToOneForUpdateInput;

  GProductVariantCreateInput? get create;
  GProductVariantWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GProductVariantRelateToOneForUpdateInput> get serializer =>
      _$gProductVariantRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GFavoriteUpdateArgs
    implements Built<GFavoriteUpdateArgs, GFavoriteUpdateArgsBuilder> {
  GFavoriteUpdateArgs._();

  factory GFavoriteUpdateArgs(
          [void Function(GFavoriteUpdateArgsBuilder b) updates]) =
      _$GFavoriteUpdateArgs;

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
          [void Function(GFavoriteCreateInputBuilder b) updates]) =
      _$GFavoriteCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GUserRelateToOneForCreateInput? get user;
  GProductVariantRelateToOneForCreateInput? get productVariant;
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
      [void Function(GVehicleVariantRelateToOneForCreateInputBuilder b)
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

abstract class GProductVariantRelateToOneForCreateInput
    implements
        Built<GProductVariantRelateToOneForCreateInput,
            GProductVariantRelateToOneForCreateInputBuilder> {
  GProductVariantRelateToOneForCreateInput._();

  factory GProductVariantRelateToOneForCreateInput(
      [void Function(GProductVariantRelateToOneForCreateInputBuilder b)
          updates]) = _$GProductVariantRelateToOneForCreateInput;

  GProductVariantCreateInput? get create;
  GProductVariantWhereUniqueInput? get connect;
  static Serializer<GProductVariantRelateToOneForCreateInput> get serializer =>
      _$gProductVariantRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GCartItemWhereUniqueInput
    implements
        Built<GCartItemWhereUniqueInput, GCartItemWhereUniqueInputBuilder> {
  GCartItemWhereUniqueInput._();

  factory GCartItemWhereUniqueInput(
          [void Function(GCartItemWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GCartItemWhereInputBuilder b) updates]) =
      _$GCartItemWhereInput;

  BuiltList<GCartItemWhereInput>? get AND;
  BuiltList<GCartItemWhereInput>? get OR;
  BuiltList<GCartItemWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleColorWhereInput? get vehicleColor;
  GVehicleVariantWhereInput? get vehicleVariant;
  GProductVariantWhereInput? get productVariant;
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
          [void Function(GCartItemOrderByInputBuilder b) updates]) =
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
          [void Function(GCartItemUpdateInputBuilder b) updates]) =
      _$GCartItemUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleColorRelateToOneForUpdateInput? get vehicleColor;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GProductVariantRelateToOneForUpdateInput? get productVariant;
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

abstract class GVehicleColorRelateToOneForUpdateInput
    implements
        Built<GVehicleColorRelateToOneForUpdateInput,
            GVehicleColorRelateToOneForUpdateInputBuilder> {
  GVehicleColorRelateToOneForUpdateInput._();

  factory GVehicleColorRelateToOneForUpdateInput(
      [void Function(GVehicleColorRelateToOneForUpdateInputBuilder b)
          updates]) = _$GVehicleColorRelateToOneForUpdateInput;

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

abstract class GCartItemUpdateArgs
    implements Built<GCartItemUpdateArgs, GCartItemUpdateArgsBuilder> {
  GCartItemUpdateArgs._();

  factory GCartItemUpdateArgs(
          [void Function(GCartItemUpdateArgsBuilder b) updates]) =
      _$GCartItemUpdateArgs;

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
          [void Function(GCartItemCreateInputBuilder b) updates]) =
      _$GCartItemCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleColorRelateToOneForCreateInput? get vehicleColor;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GProductVariantRelateToOneForCreateInput? get productVariant;
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

abstract class GVehicleColorRelateToOneForCreateInput
    implements
        Built<GVehicleColorRelateToOneForCreateInput,
            GVehicleColorRelateToOneForCreateInputBuilder> {
  GVehicleColorRelateToOneForCreateInput._();

  factory GVehicleColorRelateToOneForCreateInput(
      [void Function(GVehicleColorRelateToOneForCreateInputBuilder b)
          updates]) = _$GVehicleColorRelateToOneForCreateInput;

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

abstract class GVehicleTypeWhereUniqueInput
    implements
        Built<GVehicleTypeWhereUniqueInput,
            GVehicleTypeWhereUniqueInputBuilder> {
  GVehicleTypeWhereUniqueInput._();

  factory GVehicleTypeWhereUniqueInput(
          [void Function(GVehicleTypeWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GVehicleTypeWhereInputBuilder b) updates]) =
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
          [void Function(GVehicleTypeOrderByInputBuilder b) updates]) =
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
          [void Function(GVehicleTypeUpdateInputBuilder b) updates]) =
      _$GVehicleTypeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  GImageFieldInput? get icon;
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
          [void Function(GVehicleTypeUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleTypeCreateInputBuilder b) updates]) =
      _$GVehicleTypeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  GImageFieldInput? get icon;
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

abstract class GVehicleSubTypeWhereUniqueInput
    implements
        Built<GVehicleSubTypeWhereUniqueInput,
            GVehicleSubTypeWhereUniqueInputBuilder> {
  GVehicleSubTypeWhereUniqueInput._();

  factory GVehicleSubTypeWhereUniqueInput(
          [void Function(GVehicleSubTypeWhereUniqueInputBuilder b) updates]) =
      _$GVehicleSubTypeWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleSubTypeWhereUniqueInput> get serializer =>
      _$gVehicleSubTypeWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleSubTypeWhereInput
    implements
        Built<GVehicleSubTypeWhereInput, GVehicleSubTypeWhereInputBuilder> {
  GVehicleSubTypeWhereInput._();

  factory GVehicleSubTypeWhereInput(
          [void Function(GVehicleSubTypeWhereInputBuilder b) updates]) =
      _$GVehicleSubTypeWhereInput;

  BuiltList<GVehicleSubTypeWhereInput>? get AND;
  BuiltList<GVehicleSubTypeWhereInput>? get OR;
  BuiltList<GVehicleSubTypeWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  GVehicleTypeWhereInput? get vehicleType;
  static Serializer<GVehicleSubTypeWhereInput> get serializer =>
      _$gVehicleSubTypeWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeWhereInput.serializer,
        json,
      );
}

abstract class GVehicleSubTypeOrderByInput
    implements
        Built<GVehicleSubTypeOrderByInput, GVehicleSubTypeOrderByInputBuilder> {
  GVehicleSubTypeOrderByInput._();

  factory GVehicleSubTypeOrderByInput(
          [void Function(GVehicleSubTypeOrderByInputBuilder b) updates]) =
      _$GVehicleSubTypeOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GVehicleSubTypeOrderByInput> get serializer =>
      _$gVehicleSubTypeOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleSubTypeUpdateInput
    implements
        Built<GVehicleSubTypeUpdateInput, GVehicleSubTypeUpdateInputBuilder> {
  GVehicleSubTypeUpdateInput._();

  factory GVehicleSubTypeUpdateInput(
          [void Function(GVehicleSubTypeUpdateInputBuilder b) updates]) =
      _$GVehicleSubTypeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  GVehicleTypeRelateToOneForUpdateInput? get vehicleType;
  static Serializer<GVehicleSubTypeUpdateInput> get serializer =>
      _$gVehicleSubTypeUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleTypeRelateToOneForUpdateInput
    implements
        Built<GVehicleTypeRelateToOneForUpdateInput,
            GVehicleTypeRelateToOneForUpdateInputBuilder> {
  GVehicleTypeRelateToOneForUpdateInput._();

  factory GVehicleTypeRelateToOneForUpdateInput(
      [void Function(GVehicleTypeRelateToOneForUpdateInputBuilder b)
          updates]) = _$GVehicleTypeRelateToOneForUpdateInput;

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

abstract class GVehicleSubTypeUpdateArgs
    implements
        Built<GVehicleSubTypeUpdateArgs, GVehicleSubTypeUpdateArgsBuilder> {
  GVehicleSubTypeUpdateArgs._();

  factory GVehicleSubTypeUpdateArgs(
          [void Function(GVehicleSubTypeUpdateArgsBuilder b) updates]) =
      _$GVehicleSubTypeUpdateArgs;

  GVehicleSubTypeWhereUniqueInput get where;
  GVehicleSubTypeUpdateInput get data;
  static Serializer<GVehicleSubTypeUpdateArgs> get serializer =>
      _$gVehicleSubTypeUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleSubTypeCreateInput
    implements
        Built<GVehicleSubTypeCreateInput, GVehicleSubTypeCreateInputBuilder> {
  GVehicleSubTypeCreateInput._();

  factory GVehicleSubTypeCreateInput(
          [void Function(GVehicleSubTypeCreateInputBuilder b) updates]) =
      _$GVehicleSubTypeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  GVehicleTypeRelateToOneForCreateInput? get vehicleType;
  static Serializer<GVehicleSubTypeCreateInput> get serializer =>
      _$gVehicleSubTypeCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeCreateInput.serializer,
        json,
      );
}

abstract class GVehicleTypeRelateToOneForCreateInput
    implements
        Built<GVehicleTypeRelateToOneForCreateInput,
            GVehicleTypeRelateToOneForCreateInputBuilder> {
  GVehicleTypeRelateToOneForCreateInput._();

  factory GVehicleTypeRelateToOneForCreateInput(
      [void Function(GVehicleTypeRelateToOneForCreateInputBuilder b)
          updates]) = _$GVehicleTypeRelateToOneForCreateInput;

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

abstract class GBrandWhereUniqueInput
    implements Built<GBrandWhereUniqueInput, GBrandWhereUniqueInputBuilder> {
  GBrandWhereUniqueInput._();

  factory GBrandWhereUniqueInput(
          [void Function(GBrandWhereUniqueInputBuilder b) updates]) =
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

  factory GBrandWhereInput([void Function(GBrandWhereInputBuilder b) updates]) =
      _$GBrandWhereInput;

  BuiltList<GBrandWhereInput>? get AND;
  BuiltList<GBrandWhereInput>? get OR;
  BuiltList<GBrandWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GIntNullableFilter? get index;
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

abstract class GIntNullableFilter
    implements Built<GIntNullableFilter, GIntNullableFilterBuilder> {
  GIntNullableFilter._();

  factory GIntNullableFilter(
          [void Function(GIntNullableFilterBuilder b) updates]) =
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

abstract class GBrandOrderByInput
    implements Built<GBrandOrderByInput, GBrandOrderByInputBuilder> {
  GBrandOrderByInput._();

  factory GBrandOrderByInput(
          [void Function(GBrandOrderByInputBuilder b) updates]) =
      _$GBrandOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get index;
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

  factory GBrandUpdateInput(
          [void Function(GBrandUpdateInputBuilder b) updates]) =
      _$GBrandUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  BuiltList<String>? get type;
  GImageFieldInput? get logo;
  int? get index;
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

  factory GBrandUpdateArgs([void Function(GBrandUpdateArgsBuilder b) updates]) =
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

  factory GBrandCreateInput(
          [void Function(GBrandCreateInputBuilder b) updates]) =
      _$GBrandCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  BuiltList<String>? get type;
  GImageFieldInput? get logo;
  int? get index;
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
          [void Function(GSpecificationWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GSpecificationWhereInputBuilder b) updates]) =
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
          [void Function(GSpecificationOrderByInputBuilder b) updates]) =
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
          [void Function(GSpecificationUpdateInputBuilder b) updates]) =
      _$GSpecificationUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GImageFieldInput? get image;
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
          [void Function(GSpecificationUpdateArgsBuilder b) updates]) =
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
          [void Function(GSpecificationCreateInputBuilder b) updates]) =
      _$GSpecificationCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GImageFieldInput? get image;
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
      [void Function(GSpecificationCategoryWhereUniqueInputBuilder b)
          updates]) = _$GSpecificationCategoryWhereUniqueInput;

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
          [void Function(GSpecificationCategoryWhereInputBuilder b) updates]) =
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
      [void Function(GSpecificationCategoryOrderByInputBuilder b)
          updates]) = _$GSpecificationCategoryOrderByInput;

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
          [void Function(GSpecificationCategoryUpdateInputBuilder b) updates]) =
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
          [void Function(GSpecificationCategoryUpdateArgsBuilder b) updates]) =
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
          [void Function(GSpecificationCategoryCreateInputBuilder b) updates]) =
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
          [void Function(GTestDriveDealerWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GTestDriveDealerWhereInputBuilder b) updates]) =
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

  factory GIntFilter([void Function(GIntFilterBuilder b) updates]) =
      _$GIntFilter;

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
          [void Function(GTestDriveDealerOrderByInputBuilder b) updates]) =
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
          [void Function(GTestDriveDealerUpdateInputBuilder b) updates]) =
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

abstract class GTestDriveDealerUpdateArgs
    implements
        Built<GTestDriveDealerUpdateArgs, GTestDriveDealerUpdateArgsBuilder> {
  GTestDriveDealerUpdateArgs._();

  factory GTestDriveDealerUpdateArgs(
          [void Function(GTestDriveDealerUpdateArgsBuilder b) updates]) =
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
          [void Function(GTestDriveDealerCreateInputBuilder b) updates]) =
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

abstract class GVehicleWhereUniqueInput
    implements
        Built<GVehicleWhereUniqueInput, GVehicleWhereUniqueInputBuilder> {
  GVehicleWhereUniqueInput._();

  factory GVehicleWhereUniqueInput(
          [void Function(GVehicleWhereUniqueInputBuilder b) updates]) =
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

  factory GVehicleWhereInput(
          [void Function(GVehicleWhereInputBuilder b) updates]) =
      _$GVehicleWhereInput;

  BuiltList<GVehicleWhereInput>? get AND;
  BuiltList<GVehicleWhereInput>? get OR;
  BuiltList<GVehicleWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  GStringFilter? get longDescription;
  GVehicleTypeWhereInput? get type;
  GVehicleSubTypeManyRelationFilter? get subType;
  GBrandWhereInput? get brand;
  GVehicleVariantManyRelationFilter? get variants;
  GVehicleSpecificationManyRelationFilter? get specifications;
  GVehicleColorManyRelationFilter? get colors;
  GBooleanFilter? get informative;
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

abstract class GVehicleSubTypeManyRelationFilter
    implements
        Built<GVehicleSubTypeManyRelationFilter,
            GVehicleSubTypeManyRelationFilterBuilder> {
  GVehicleSubTypeManyRelationFilter._();

  factory GVehicleSubTypeManyRelationFilter(
          [void Function(GVehicleSubTypeManyRelationFilterBuilder b) updates]) =
      _$GVehicleSubTypeManyRelationFilter;

  GVehicleSubTypeWhereInput? get every;
  GVehicleSubTypeWhereInput? get some;
  GVehicleSubTypeWhereInput? get none;
  static Serializer<GVehicleSubTypeManyRelationFilter> get serializer =>
      _$gVehicleSubTypeManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleVariantManyRelationFilter
    implements
        Built<GVehicleVariantManyRelationFilter,
            GVehicleVariantManyRelationFilterBuilder> {
  GVehicleVariantManyRelationFilter._();

  factory GVehicleVariantManyRelationFilter(
          [void Function(GVehicleVariantManyRelationFilterBuilder b) updates]) =
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
      [void Function(GVehicleSpecificationManyRelationFilterBuilder b)
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
          [void Function(GVehicleColorManyRelationFilterBuilder b) updates]) =
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
          [void Function(GVehicleOrderByInputBuilder b) updates]) =
      _$GVehicleOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  GOrderDirection? get longDescription;
  GOrderDirection? get informative;
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
          [void Function(GVehicleUpdateInputBuilder b) updates]) =
      _$GVehicleUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  String? get longDescription;
  GVehicleTypeRelateToOneForUpdateInput? get type;
  GVehicleSubTypeRelateToManyForUpdateInput? get subType;
  GBrandRelateToOneForUpdateInput? get brand;
  GVehicleVariantRelateToManyForUpdateInput? get variants;
  GVehicleSpecificationRelateToManyForUpdateInput? get specifications;
  GVehicleColorRelateToManyForUpdateInput? get colors;
  bool? get informative;
  GFileFieldInput? get brochure;
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

abstract class GVehicleSubTypeRelateToManyForUpdateInput
    implements
        Built<GVehicleSubTypeRelateToManyForUpdateInput,
            GVehicleSubTypeRelateToManyForUpdateInputBuilder> {
  GVehicleSubTypeRelateToManyForUpdateInput._();

  factory GVehicleSubTypeRelateToManyForUpdateInput(
      [void Function(GVehicleSubTypeRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleSubTypeRelateToManyForUpdateInput;

  BuiltList<GVehicleSubTypeWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleSubTypeWhereUniqueInput>? get set;
  BuiltList<GVehicleSubTypeCreateInput>? get create;
  BuiltList<GVehicleSubTypeWhereUniqueInput>? get connect;
  static Serializer<GVehicleSubTypeRelateToManyForUpdateInput> get serializer =>
      _$gVehicleSubTypeRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GBrandRelateToOneForUpdateInput
    implements
        Built<GBrandRelateToOneForUpdateInput,
            GBrandRelateToOneForUpdateInputBuilder> {
  GBrandRelateToOneForUpdateInput._();

  factory GBrandRelateToOneForUpdateInput(
          [void Function(GBrandRelateToOneForUpdateInputBuilder b) updates]) =
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
      [void Function(GVehicleVariantRelateToManyForUpdateInputBuilder b)
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
      [void Function(GVehicleSpecificationRelateToManyForUpdateInputBuilder b)
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
      [void Function(GVehicleColorRelateToManyForUpdateInputBuilder b)
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

  factory GVehicleUpdateArgs(
          [void Function(GVehicleUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleCreateInputBuilder b) updates]) =
      _$GVehicleCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  String? get longDescription;
  GVehicleTypeRelateToOneForCreateInput? get type;
  GVehicleSubTypeRelateToManyForCreateInput? get subType;
  GBrandRelateToOneForCreateInput? get brand;
  GVehicleVariantRelateToManyForCreateInput? get variants;
  GVehicleSpecificationRelateToManyForCreateInput? get specifications;
  GVehicleColorRelateToManyForCreateInput? get colors;
  bool? get informative;
  GFileFieldInput? get brochure;
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

abstract class GVehicleSubTypeRelateToManyForCreateInput
    implements
        Built<GVehicleSubTypeRelateToManyForCreateInput,
            GVehicleSubTypeRelateToManyForCreateInputBuilder> {
  GVehicleSubTypeRelateToManyForCreateInput._();

  factory GVehicleSubTypeRelateToManyForCreateInput(
      [void Function(GVehicleSubTypeRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleSubTypeRelateToManyForCreateInput;

  BuiltList<GVehicleSubTypeCreateInput>? get create;
  BuiltList<GVehicleSubTypeWhereUniqueInput>? get connect;
  static Serializer<GVehicleSubTypeRelateToManyForCreateInput> get serializer =>
      _$gVehicleSubTypeRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleSubTypeRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleSubTypeRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleSubTypeRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GBrandRelateToOneForCreateInput
    implements
        Built<GBrandRelateToOneForCreateInput,
            GBrandRelateToOneForCreateInputBuilder> {
  GBrandRelateToOneForCreateInput._();

  factory GBrandRelateToOneForCreateInput(
          [void Function(GBrandRelateToOneForCreateInputBuilder b) updates]) =
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
      [void Function(GVehicleVariantRelateToManyForCreateInputBuilder b)
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
      [void Function(GVehicleSpecificationRelateToManyForCreateInputBuilder b)
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
      [void Function(GVehicleColorRelateToManyForCreateInputBuilder b)
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
          [void Function(GVehicleColorWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GVehicleColorWhereInputBuilder b) updates]) =
      _$GVehicleColorWhereInput;

  BuiltList<GVehicleColorWhereInput>? get AND;
  BuiltList<GVehicleColorWhereInput>? get OR;
  BuiltList<GVehicleColorWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get code;
  @BuiltValueField(wireName: 'default')
  GBooleanFilter? get Gdefault;
  GVehicleWhereInput? get vehicle;
  GVehicleVariantManyRelationFilter? get vehicleVariant;
  GVehicleImageManyRelationFilter? get images;
  GVehicleVideoManyRelationFilter? get videos;
  GVehicleGalleryItemManyRelationFilter? get gallery;
  GVehicleReelManyRelationFilter? get reels;
  GBooleanFilter? get disabled;
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
          [void Function(GVehicleImageManyRelationFilterBuilder b) updates]) =
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

abstract class GVehicleVideoManyRelationFilter
    implements
        Built<GVehicleVideoManyRelationFilter,
            GVehicleVideoManyRelationFilterBuilder> {
  GVehicleVideoManyRelationFilter._();

  factory GVehicleVideoManyRelationFilter(
          [void Function(GVehicleVideoManyRelationFilterBuilder b) updates]) =
      _$GVehicleVideoManyRelationFilter;

  GVehicleVideoWhereInput? get every;
  GVehicleVideoWhereInput? get some;
  GVehicleVideoWhereInput? get none;
  static Serializer<GVehicleVideoManyRelationFilter> get serializer =>
      _$gVehicleVideoManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemManyRelationFilter
    implements
        Built<GVehicleGalleryItemManyRelationFilter,
            GVehicleGalleryItemManyRelationFilterBuilder> {
  GVehicleGalleryItemManyRelationFilter._();

  factory GVehicleGalleryItemManyRelationFilter(
      [void Function(GVehicleGalleryItemManyRelationFilterBuilder b)
          updates]) = _$GVehicleGalleryItemManyRelationFilter;

  GVehicleGalleryItemWhereInput? get every;
  GVehicleGalleryItemWhereInput? get some;
  GVehicleGalleryItemWhereInput? get none;
  static Serializer<GVehicleGalleryItemManyRelationFilter> get serializer =>
      _$gVehicleGalleryItemManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleReelManyRelationFilter
    implements
        Built<GVehicleReelManyRelationFilter,
            GVehicleReelManyRelationFilterBuilder> {
  GVehicleReelManyRelationFilter._();

  factory GVehicleReelManyRelationFilter(
          [void Function(GVehicleReelManyRelationFilterBuilder b) updates]) =
      _$GVehicleReelManyRelationFilter;

  GVehicleReelWhereInput? get every;
  GVehicleReelWhereInput? get some;
  GVehicleReelWhereInput? get none;
  static Serializer<GVehicleReelManyRelationFilter> get serializer =>
      _$gVehicleReelManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleColorOrderByInput
    implements
        Built<GVehicleColorOrderByInput, GVehicleColorOrderByInputBuilder> {
  GVehicleColorOrderByInput._();

  factory GVehicleColorOrderByInput(
          [void Function(GVehicleColorOrderByInputBuilder b) updates]) =
      _$GVehicleColorOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get code;
  @BuiltValueField(wireName: 'default')
  GOrderDirection? get Gdefault;
  GOrderDirection? get disabled;
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
          [void Function(GVehicleColorUpdateInputBuilder b) updates]) =
      _$GVehicleColorUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get code;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  GVehicleVariantRelateToManyForUpdateInput? get vehicleVariant;
  GVehicleImageRelateToManyForUpdateInput? get images;
  GVehicleVideoRelateToManyForUpdateInput? get videos;
  GVehicleGalleryItemRelateToManyForUpdateInput? get gallery;
  GVehicleReelRelateToManyForUpdateInput? get reels;
  _i4.JsonObject? get googleImages;
  bool? get disabled;
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
          [void Function(GVehicleRelateToOneForUpdateInputBuilder b) updates]) =
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
      [void Function(GVehicleImageRelateToManyForUpdateInputBuilder b)
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

abstract class GVehicleVideoRelateToManyForUpdateInput
    implements
        Built<GVehicleVideoRelateToManyForUpdateInput,
            GVehicleVideoRelateToManyForUpdateInputBuilder> {
  GVehicleVideoRelateToManyForUpdateInput._();

  factory GVehicleVideoRelateToManyForUpdateInput(
      [void Function(GVehicleVideoRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleVideoRelateToManyForUpdateInput;

  BuiltList<GVehicleVideoWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleVideoWhereUniqueInput>? get set;
  BuiltList<GVehicleVideoCreateInput>? get create;
  BuiltList<GVehicleVideoWhereUniqueInput>? get connect;
  static Serializer<GVehicleVideoRelateToManyForUpdateInput> get serializer =>
      _$gVehicleVideoRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemRelateToManyForUpdateInput
    implements
        Built<GVehicleGalleryItemRelateToManyForUpdateInput,
            GVehicleGalleryItemRelateToManyForUpdateInputBuilder> {
  GVehicleGalleryItemRelateToManyForUpdateInput._();

  factory GVehicleGalleryItemRelateToManyForUpdateInput(
      [void Function(GVehicleGalleryItemRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleGalleryItemRelateToManyForUpdateInput;

  BuiltList<GVehicleGalleryItemWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleGalleryItemWhereUniqueInput>? get set;
  BuiltList<GVehicleGalleryItemCreateInput>? get create;
  BuiltList<GVehicleGalleryItemWhereUniqueInput>? get connect;
  static Serializer<GVehicleGalleryItemRelateToManyForUpdateInput>
      get serializer =>
          _$gVehicleGalleryItemRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleReelRelateToManyForUpdateInput
    implements
        Built<GVehicleReelRelateToManyForUpdateInput,
            GVehicleReelRelateToManyForUpdateInputBuilder> {
  GVehicleReelRelateToManyForUpdateInput._();

  factory GVehicleReelRelateToManyForUpdateInput(
      [void Function(GVehicleReelRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleReelRelateToManyForUpdateInput;

  BuiltList<GVehicleReelWhereUniqueInput>? get disconnect;
  BuiltList<GVehicleReelWhereUniqueInput>? get set;
  BuiltList<GVehicleReelCreateInput>? get create;
  BuiltList<GVehicleReelWhereUniqueInput>? get connect;
  static Serializer<GVehicleReelRelateToManyForUpdateInput> get serializer =>
      _$gVehicleReelRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleColorUpdateArgs
    implements Built<GVehicleColorUpdateArgs, GVehicleColorUpdateArgsBuilder> {
  GVehicleColorUpdateArgs._();

  factory GVehicleColorUpdateArgs(
          [void Function(GVehicleColorUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleColorCreateInputBuilder b) updates]) =
      _$GVehicleColorCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get code;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GVehicleRelateToOneForCreateInput? get vehicle;
  GVehicleVariantRelateToManyForCreateInput? get vehicleVariant;
  GVehicleImageRelateToManyForCreateInput? get images;
  GVehicleVideoRelateToManyForCreateInput? get videos;
  GVehicleGalleryItemRelateToManyForCreateInput? get gallery;
  GVehicleReelRelateToManyForCreateInput? get reels;
  _i4.JsonObject? get googleImages;
  bool? get disabled;
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
          [void Function(GVehicleRelateToOneForCreateInputBuilder b) updates]) =
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
      [void Function(GVehicleImageRelateToManyForCreateInputBuilder b)
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

abstract class GVehicleVideoRelateToManyForCreateInput
    implements
        Built<GVehicleVideoRelateToManyForCreateInput,
            GVehicleVideoRelateToManyForCreateInputBuilder> {
  GVehicleVideoRelateToManyForCreateInput._();

  factory GVehicleVideoRelateToManyForCreateInput(
      [void Function(GVehicleVideoRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleVideoRelateToManyForCreateInput;

  BuiltList<GVehicleVideoCreateInput>? get create;
  BuiltList<GVehicleVideoWhereUniqueInput>? get connect;
  static Serializer<GVehicleVideoRelateToManyForCreateInput> get serializer =>
      _$gVehicleVideoRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemRelateToManyForCreateInput
    implements
        Built<GVehicleGalleryItemRelateToManyForCreateInput,
            GVehicleGalleryItemRelateToManyForCreateInputBuilder> {
  GVehicleGalleryItemRelateToManyForCreateInput._();

  factory GVehicleGalleryItemRelateToManyForCreateInput(
      [void Function(GVehicleGalleryItemRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleGalleryItemRelateToManyForCreateInput;

  BuiltList<GVehicleGalleryItemCreateInput>? get create;
  BuiltList<GVehicleGalleryItemWhereUniqueInput>? get connect;
  static Serializer<GVehicleGalleryItemRelateToManyForCreateInput>
      get serializer =>
          _$gVehicleGalleryItemRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleReelRelateToManyForCreateInput
    implements
        Built<GVehicleReelRelateToManyForCreateInput,
            GVehicleReelRelateToManyForCreateInputBuilder> {
  GVehicleReelRelateToManyForCreateInput._();

  factory GVehicleReelRelateToManyForCreateInput(
      [void Function(GVehicleReelRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleReelRelateToManyForCreateInput;

  BuiltList<GVehicleReelCreateInput>? get create;
  BuiltList<GVehicleReelWhereUniqueInput>? get connect;
  static Serializer<GVehicleReelRelateToManyForCreateInput> get serializer =>
      _$gVehicleReelRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemWhereUniqueInput
    implements
        Built<GVehicleGalleryItemWhereUniqueInput,
            GVehicleGalleryItemWhereUniqueInputBuilder> {
  GVehicleGalleryItemWhereUniqueInput._();

  factory GVehicleGalleryItemWhereUniqueInput(
      [void Function(GVehicleGalleryItemWhereUniqueInputBuilder b)
          updates]) = _$GVehicleGalleryItemWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleGalleryItemWhereUniqueInput> get serializer =>
      _$gVehicleGalleryItemWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemWhereInput
    implements
        Built<GVehicleGalleryItemWhereInput,
            GVehicleGalleryItemWhereInputBuilder> {
  GVehicleGalleryItemWhereInput._();

  factory GVehicleGalleryItemWhereInput(
          [void Function(GVehicleGalleryItemWhereInputBuilder b) updates]) =
      _$GVehicleGalleryItemWhereInput;

  BuiltList<GVehicleGalleryItemWhereInput>? get AND;
  BuiltList<GVehicleGalleryItemWhereInput>? get OR;
  BuiltList<GVehicleGalleryItemWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get type;
  GStringFilter? get fileId;
  GVehicleColorWhereInput? get color;
  GIntNullableFilter? get index;
  static Serializer<GVehicleGalleryItemWhereInput> get serializer =>
      _$gVehicleGalleryItemWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemWhereInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemOrderByInput
    implements
        Built<GVehicleGalleryItemOrderByInput,
            GVehicleGalleryItemOrderByInputBuilder> {
  GVehicleGalleryItemOrderByInput._();

  factory GVehicleGalleryItemOrderByInput(
          [void Function(GVehicleGalleryItemOrderByInputBuilder b) updates]) =
      _$GVehicleGalleryItemOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get fileId;
  GOrderDirection? get index;
  static Serializer<GVehicleGalleryItemOrderByInput> get serializer =>
      _$gVehicleGalleryItemOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemUpdateInput
    implements
        Built<GVehicleGalleryItemUpdateInput,
            GVehicleGalleryItemUpdateInputBuilder> {
  GVehicleGalleryItemUpdateInput._();

  factory GVehicleGalleryItemUpdateInput(
          [void Function(GVehicleGalleryItemUpdateInputBuilder b) updates]) =
      _$GVehicleGalleryItemUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GVehicleColorRelateToOneForUpdateInput? get color;
  int? get index;
  static Serializer<GVehicleGalleryItemUpdateInput> get serializer =>
      _$gVehicleGalleryItemUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemUpdateArgs
    implements
        Built<GVehicleGalleryItemUpdateArgs,
            GVehicleGalleryItemUpdateArgsBuilder> {
  GVehicleGalleryItemUpdateArgs._();

  factory GVehicleGalleryItemUpdateArgs(
          [void Function(GVehicleGalleryItemUpdateArgsBuilder b) updates]) =
      _$GVehicleGalleryItemUpdateArgs;

  GVehicleGalleryItemWhereUniqueInput get where;
  GVehicleGalleryItemUpdateInput get data;
  static Serializer<GVehicleGalleryItemUpdateArgs> get serializer =>
      _$gVehicleGalleryItemUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleGalleryItemCreateInput
    implements
        Built<GVehicleGalleryItemCreateInput,
            GVehicleGalleryItemCreateInputBuilder> {
  GVehicleGalleryItemCreateInput._();

  factory GVehicleGalleryItemCreateInput(
          [void Function(GVehicleGalleryItemCreateInputBuilder b) updates]) =
      _$GVehicleGalleryItemCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GVehicleColorRelateToOneForCreateInput? get color;
  int? get index;
  static Serializer<GVehicleGalleryItemCreateInput> get serializer =>
      _$gVehicleGalleryItemCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleGalleryItemCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleGalleryItemCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleGalleryItemCreateInput.serializer,
        json,
      );
}

abstract class GVehicleReelWhereUniqueInput
    implements
        Built<GVehicleReelWhereUniqueInput,
            GVehicleReelWhereUniqueInputBuilder> {
  GVehicleReelWhereUniqueInput._();

  factory GVehicleReelWhereUniqueInput(
          [void Function(GVehicleReelWhereUniqueInputBuilder b) updates]) =
      _$GVehicleReelWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleReelWhereUniqueInput> get serializer =>
      _$gVehicleReelWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleReelWhereInput
    implements Built<GVehicleReelWhereInput, GVehicleReelWhereInputBuilder> {
  GVehicleReelWhereInput._();

  factory GVehicleReelWhereInput(
          [void Function(GVehicleReelWhereInputBuilder b) updates]) =
      _$GVehicleReelWhereInput;

  BuiltList<GVehicleReelWhereInput>? get AND;
  BuiltList<GVehicleReelWhereInput>? get OR;
  BuiltList<GVehicleReelWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get type;
  GStringFilter? get fileId;
  GVehicleColorWhereInput? get color;
  GIntNullableFilter? get index;
  GBooleanFilter? get disabled;
  static Serializer<GVehicleReelWhereInput> get serializer =>
      _$gVehicleReelWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelWhereInput.serializer,
        json,
      );
}

abstract class GVehicleReelOrderByInput
    implements
        Built<GVehicleReelOrderByInput, GVehicleReelOrderByInputBuilder> {
  GVehicleReelOrderByInput._();

  factory GVehicleReelOrderByInput(
          [void Function(GVehicleReelOrderByInputBuilder b) updates]) =
      _$GVehicleReelOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get fileId;
  GOrderDirection? get index;
  GOrderDirection? get disabled;
  static Serializer<GVehicleReelOrderByInput> get serializer =>
      _$gVehicleReelOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleReelUpdateInput
    implements Built<GVehicleReelUpdateInput, GVehicleReelUpdateInputBuilder> {
  GVehicleReelUpdateInput._();

  factory GVehicleReelUpdateInput(
          [void Function(GVehicleReelUpdateInputBuilder b) updates]) =
      _$GVehicleReelUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GVehicleColorRelateToOneForUpdateInput? get color;
  int? get index;
  bool? get disabled;
  static Serializer<GVehicleReelUpdateInput> get serializer =>
      _$gVehicleReelUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleReelUpdateArgs
    implements Built<GVehicleReelUpdateArgs, GVehicleReelUpdateArgsBuilder> {
  GVehicleReelUpdateArgs._();

  factory GVehicleReelUpdateArgs(
          [void Function(GVehicleReelUpdateArgsBuilder b) updates]) =
      _$GVehicleReelUpdateArgs;

  GVehicleReelWhereUniqueInput get where;
  GVehicleReelUpdateInput get data;
  static Serializer<GVehicleReelUpdateArgs> get serializer =>
      _$gVehicleReelUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleReelCreateInput
    implements Built<GVehicleReelCreateInput, GVehicleReelCreateInputBuilder> {
  GVehicleReelCreateInput._();

  factory GVehicleReelCreateInput(
          [void Function(GVehicleReelCreateInputBuilder b) updates]) =
      _$GVehicleReelCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GVehicleColorRelateToOneForCreateInput? get color;
  int? get index;
  bool? get disabled;
  static Serializer<GVehicleReelCreateInput> get serializer =>
      _$gVehicleReelCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleReelCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleReelCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleReelCreateInput.serializer,
        json,
      );
}

abstract class GGuaranteeWhereUniqueInput
    implements
        Built<GGuaranteeWhereUniqueInput, GGuaranteeWhereUniqueInputBuilder> {
  GGuaranteeWhereUniqueInput._();

  factory GGuaranteeWhereUniqueInput(
          [void Function(GGuaranteeWhereUniqueInputBuilder b) updates]) =
      _$GGuaranteeWhereUniqueInput;

  String? get id;
  static Serializer<GGuaranteeWhereUniqueInput> get serializer =>
      _$gGuaranteeWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GGuaranteeWhereInput
    implements Built<GGuaranteeWhereInput, GGuaranteeWhereInputBuilder> {
  GGuaranteeWhereInput._();

  factory GGuaranteeWhereInput(
          [void Function(GGuaranteeWhereInputBuilder b) updates]) =
      _$GGuaranteeWhereInput;

  BuiltList<GGuaranteeWhereInput>? get AND;
  BuiltList<GGuaranteeWhereInput>? get OR;
  BuiltList<GGuaranteeWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  static Serializer<GGuaranteeWhereInput> get serializer =>
      _$gGuaranteeWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeWhereInput.serializer,
        json,
      );
}

abstract class GGuaranteeOrderByInput
    implements Built<GGuaranteeOrderByInput, GGuaranteeOrderByInputBuilder> {
  GGuaranteeOrderByInput._();

  factory GGuaranteeOrderByInput(
          [void Function(GGuaranteeOrderByInputBuilder b) updates]) =
      _$GGuaranteeOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GGuaranteeOrderByInput> get serializer =>
      _$gGuaranteeOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeOrderByInput.serializer,
        json,
      );
}

abstract class GGuaranteeUpdateInput
    implements Built<GGuaranteeUpdateInput, GGuaranteeUpdateInputBuilder> {
  GGuaranteeUpdateInput._();

  factory GGuaranteeUpdateInput(
          [void Function(GGuaranteeUpdateInputBuilder b) updates]) =
      _$GGuaranteeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GGuaranteeUpdateInput> get serializer =>
      _$gGuaranteeUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeUpdateInput.serializer,
        json,
      );
}

abstract class GGuaranteeUpdateArgs
    implements Built<GGuaranteeUpdateArgs, GGuaranteeUpdateArgsBuilder> {
  GGuaranteeUpdateArgs._();

  factory GGuaranteeUpdateArgs(
          [void Function(GGuaranteeUpdateArgsBuilder b) updates]) =
      _$GGuaranteeUpdateArgs;

  GGuaranteeWhereUniqueInput get where;
  GGuaranteeUpdateInput get data;
  static Serializer<GGuaranteeUpdateArgs> get serializer =>
      _$gGuaranteeUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeUpdateArgs.serializer,
        json,
      );
}

abstract class GGuaranteeCreateInput
    implements Built<GGuaranteeCreateInput, GGuaranteeCreateInputBuilder> {
  GGuaranteeCreateInput._();

  factory GGuaranteeCreateInput(
          [void Function(GGuaranteeCreateInputBuilder b) updates]) =
      _$GGuaranteeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GGuaranteeCreateInput> get serializer =>
      _$gGuaranteeCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeCreateInput.serializer,
        json,
      );
}

abstract class GGuaranteeFileWhereUniqueInput
    implements
        Built<GGuaranteeFileWhereUniqueInput,
            GGuaranteeFileWhereUniqueInputBuilder> {
  GGuaranteeFileWhereUniqueInput._();

  factory GGuaranteeFileWhereUniqueInput(
          [void Function(GGuaranteeFileWhereUniqueInputBuilder b) updates]) =
      _$GGuaranteeFileWhereUniqueInput;

  String? get id;
  static Serializer<GGuaranteeFileWhereUniqueInput> get serializer =>
      _$gGuaranteeFileWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeFileWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeFileWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeFileWhereUniqueInput.serializer,
        json,
      );
}

abstract class GGuaranteeFileWhereInput
    implements
        Built<GGuaranteeFileWhereInput, GGuaranteeFileWhereInputBuilder> {
  GGuaranteeFileWhereInput._();

  factory GGuaranteeFileWhereInput(
          [void Function(GGuaranteeFileWhereInputBuilder b) updates]) =
      _$GGuaranteeFileWhereInput;

  BuiltList<GGuaranteeFileWhereInput>? get AND;
  BuiltList<GGuaranteeFileWhereInput>? get OR;
  BuiltList<GGuaranteeFileWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  static Serializer<GGuaranteeFileWhereInput> get serializer =>
      _$gGuaranteeFileWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeFileWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeFileWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeFileWhereInput.serializer,
        json,
      );
}

abstract class GGuaranteeFileOrderByInput
    implements
        Built<GGuaranteeFileOrderByInput, GGuaranteeFileOrderByInputBuilder> {
  GGuaranteeFileOrderByInput._();

  factory GGuaranteeFileOrderByInput(
          [void Function(GGuaranteeFileOrderByInputBuilder b) updates]) =
      _$GGuaranteeFileOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GGuaranteeFileOrderByInput> get serializer =>
      _$gGuaranteeFileOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeFileOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeFileOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeFileOrderByInput.serializer,
        json,
      );
}

abstract class GGuaranteeFileUpdateInput
    implements
        Built<GGuaranteeFileUpdateInput, GGuaranteeFileUpdateInputBuilder> {
  GGuaranteeFileUpdateInput._();

  factory GGuaranteeFileUpdateInput(
          [void Function(GGuaranteeFileUpdateInputBuilder b) updates]) =
      _$GGuaranteeFileUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  static Serializer<GGuaranteeFileUpdateInput> get serializer =>
      _$gGuaranteeFileUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeFileUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeFileUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeFileUpdateInput.serializer,
        json,
      );
}

abstract class GGuaranteeFileUpdateArgs
    implements
        Built<GGuaranteeFileUpdateArgs, GGuaranteeFileUpdateArgsBuilder> {
  GGuaranteeFileUpdateArgs._();

  factory GGuaranteeFileUpdateArgs(
          [void Function(GGuaranteeFileUpdateArgsBuilder b) updates]) =
      _$GGuaranteeFileUpdateArgs;

  GGuaranteeFileWhereUniqueInput get where;
  GGuaranteeFileUpdateInput get data;
  static Serializer<GGuaranteeFileUpdateArgs> get serializer =>
      _$gGuaranteeFileUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeFileUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeFileUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeFileUpdateArgs.serializer,
        json,
      );
}

abstract class GGuaranteeFileCreateInput
    implements
        Built<GGuaranteeFileCreateInput, GGuaranteeFileCreateInputBuilder> {
  GGuaranteeFileCreateInput._();

  factory GGuaranteeFileCreateInput(
          [void Function(GGuaranteeFileCreateInputBuilder b) updates]) =
      _$GGuaranteeFileCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  static Serializer<GGuaranteeFileCreateInput> get serializer =>
      _$gGuaranteeFileCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeFileCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeFileCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeFileCreateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerWhereUniqueInput
    implements
        Built<GVehicleDealerWhereUniqueInput,
            GVehicleDealerWhereUniqueInputBuilder> {
  GVehicleDealerWhereUniqueInput._();

  factory GVehicleDealerWhereUniqueInput(
          [void Function(GVehicleDealerWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GVehicleDealerWhereInputBuilder b) updates]) =
      _$GVehicleDealerWhereInput;

  BuiltList<GVehicleDealerWhereInput>? get AND;
  BuiltList<GVehicleDealerWhereInput>? get OR;
  BuiltList<GVehicleDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GVehicleVariantWhereInput? get vehicleVariant;
  GGuaranteeManyRelationFilter? get guarantees;
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

abstract class GGuaranteeManyRelationFilter
    implements
        Built<GGuaranteeManyRelationFilter,
            GGuaranteeManyRelationFilterBuilder> {
  GGuaranteeManyRelationFilter._();

  factory GGuaranteeManyRelationFilter(
          [void Function(GGuaranteeManyRelationFilterBuilder b) updates]) =
      _$GGuaranteeManyRelationFilter;

  GGuaranteeWhereInput? get every;
  GGuaranteeWhereInput? get some;
  GGuaranteeWhereInput? get none;
  static Serializer<GGuaranteeManyRelationFilter> get serializer =>
      _$gGuaranteeManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeManyRelationFilter.serializer,
        json,
      );
}

abstract class GPriceManyRelationFilter
    implements
        Built<GPriceManyRelationFilter, GPriceManyRelationFilterBuilder> {
  GPriceManyRelationFilter._();

  factory GPriceManyRelationFilter(
          [void Function(GPriceManyRelationFilterBuilder b) updates]) =
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

abstract class GVehicleDealerOrderByInput
    implements
        Built<GVehicleDealerOrderByInput, GVehicleDealerOrderByInputBuilder> {
  GVehicleDealerOrderByInput._();

  factory GVehicleDealerOrderByInput(
          [void Function(GVehicleDealerOrderByInputBuilder b) updates]) =
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
          [void Function(GVehicleDealerUpdateInputBuilder b) updates]) =
      _$GVehicleDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GGuaranteeRelateToManyForUpdateInput? get guarantees;
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

abstract class GGuaranteeRelateToManyForUpdateInput
    implements
        Built<GGuaranteeRelateToManyForUpdateInput,
            GGuaranteeRelateToManyForUpdateInputBuilder> {
  GGuaranteeRelateToManyForUpdateInput._();

  factory GGuaranteeRelateToManyForUpdateInput(
      [void Function(GGuaranteeRelateToManyForUpdateInputBuilder b)
          updates]) = _$GGuaranteeRelateToManyForUpdateInput;

  BuiltList<GGuaranteeWhereUniqueInput>? get disconnect;
  BuiltList<GGuaranteeWhereUniqueInput>? get set;
  BuiltList<GGuaranteeCreateInput>? get create;
  BuiltList<GGuaranteeWhereUniqueInput>? get connect;
  static Serializer<GGuaranteeRelateToManyForUpdateInput> get serializer =>
      _$gGuaranteeRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GPriceRelateToManyForUpdateInput
    implements
        Built<GPriceRelateToManyForUpdateInput,
            GPriceRelateToManyForUpdateInputBuilder> {
  GPriceRelateToManyForUpdateInput._();

  factory GPriceRelateToManyForUpdateInput(
          [void Function(GPriceRelateToManyForUpdateInputBuilder b) updates]) =
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
          [void Function(GVehicleDealerUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleDealerCreateInputBuilder b) updates]) =
      _$GVehicleDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GGuaranteeRelateToManyForCreateInput? get guarantees;
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

abstract class GGuaranteeRelateToManyForCreateInput
    implements
        Built<GGuaranteeRelateToManyForCreateInput,
            GGuaranteeRelateToManyForCreateInputBuilder> {
  GGuaranteeRelateToManyForCreateInput._();

  factory GGuaranteeRelateToManyForCreateInput(
      [void Function(GGuaranteeRelateToManyForCreateInputBuilder b)
          updates]) = _$GGuaranteeRelateToManyForCreateInput;

  BuiltList<GGuaranteeCreateInput>? get create;
  BuiltList<GGuaranteeWhereUniqueInput>? get connect;
  static Serializer<GGuaranteeRelateToManyForCreateInput> get serializer =>
      _$gGuaranteeRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGuaranteeRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGuaranteeRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGuaranteeRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GPriceRelateToManyForCreateInput
    implements
        Built<GPriceRelateToManyForCreateInput,
            GPriceRelateToManyForCreateInputBuilder> {
  GPriceRelateToManyForCreateInput._();

  factory GPriceRelateToManyForCreateInput(
          [void Function(GPriceRelateToManyForCreateInputBuilder b) updates]) =
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
          [void Function(GVehicleImageWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GVehicleImageWhereInputBuilder b) updates]) =
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
          [void Function(GVehicleImageOrderByInputBuilder b) updates]) =
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
          [void Function(GVehicleImageUpdateInputBuilder b) updates]) =
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
          [void Function(GVehicleImageUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleImageCreateInputBuilder b) updates]) =
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

abstract class GVehicleVideoWhereUniqueInput
    implements
        Built<GVehicleVideoWhereUniqueInput,
            GVehicleVideoWhereUniqueInputBuilder> {
  GVehicleVideoWhereUniqueInput._();

  factory GVehicleVideoWhereUniqueInput(
          [void Function(GVehicleVideoWhereUniqueInputBuilder b) updates]) =
      _$GVehicleVideoWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleVideoWhereUniqueInput> get serializer =>
      _$gVehicleVideoWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleVideoWhereInput
    implements Built<GVehicleVideoWhereInput, GVehicleVideoWhereInputBuilder> {
  GVehicleVideoWhereInput._();

  factory GVehicleVideoWhereInput(
          [void Function(GVehicleVideoWhereInputBuilder b) updates]) =
      _$GVehicleVideoWhereInput;

  BuiltList<GVehicleVideoWhereInput>? get AND;
  BuiltList<GVehicleVideoWhereInput>? get OR;
  BuiltList<GVehicleVideoWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleColorWhereInput? get color;
  static Serializer<GVehicleVideoWhereInput> get serializer =>
      _$gVehicleVideoWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoWhereInput.serializer,
        json,
      );
}

abstract class GVehicleVideoOrderByInput
    implements
        Built<GVehicleVideoOrderByInput, GVehicleVideoOrderByInputBuilder> {
  GVehicleVideoOrderByInput._();

  factory GVehicleVideoOrderByInput(
          [void Function(GVehicleVideoOrderByInputBuilder b) updates]) =
      _$GVehicleVideoOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GVehicleVideoOrderByInput> get serializer =>
      _$gVehicleVideoOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleVideoUpdateInput
    implements
        Built<GVehicleVideoUpdateInput, GVehicleVideoUpdateInputBuilder> {
  GVehicleVideoUpdateInput._();

  factory GVehicleVideoUpdateInput(
          [void Function(GVehicleVideoUpdateInputBuilder b) updates]) =
      _$GVehicleVideoUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get video;
  GVehicleColorRelateToOneForUpdateInput? get color;
  static Serializer<GVehicleVideoUpdateInput> get serializer =>
      _$gVehicleVideoUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleVideoUpdateArgs
    implements Built<GVehicleVideoUpdateArgs, GVehicleVideoUpdateArgsBuilder> {
  GVehicleVideoUpdateArgs._();

  factory GVehicleVideoUpdateArgs(
          [void Function(GVehicleVideoUpdateArgsBuilder b) updates]) =
      _$GVehicleVideoUpdateArgs;

  GVehicleVideoWhereUniqueInput get where;
  GVehicleVideoUpdateInput get data;
  static Serializer<GVehicleVideoUpdateArgs> get serializer =>
      _$gVehicleVideoUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleVideoCreateInput
    implements
        Built<GVehicleVideoCreateInput, GVehicleVideoCreateInputBuilder> {
  GVehicleVideoCreateInput._();

  factory GVehicleVideoCreateInput(
          [void Function(GVehicleVideoCreateInputBuilder b) updates]) =
      _$GVehicleVideoCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get video;
  GVehicleColorRelateToOneForCreateInput? get color;
  static Serializer<GVehicleVideoCreateInput> get serializer =>
      _$gVehicleVideoCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleVideoCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleVideoCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleVideoCreateInput.serializer,
        json,
      );
}

abstract class GVehicleSpecificationWhereUniqueInput
    implements
        Built<GVehicleSpecificationWhereUniqueInput,
            GVehicleSpecificationWhereUniqueInputBuilder> {
  GVehicleSpecificationWhereUniqueInput._();

  factory GVehicleSpecificationWhereUniqueInput(
      [void Function(GVehicleSpecificationWhereUniqueInputBuilder b)
          updates]) = _$GVehicleSpecificationWhereUniqueInput;

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
          [void Function(GVehicleSpecificationWhereInputBuilder b) updates]) =
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
  GBooleanFilter? get isKeyFeature;
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
          [void Function(GVehicleSpecificationOrderByInputBuilder b) updates]) =
      _$GVehicleSpecificationOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get intValue;
  GOrderDirection? get stringValue;
  GOrderDirection? get isKeyFeature;
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
          [void Function(GVehicleSpecificationUpdateInputBuilder b) updates]) =
      _$GVehicleSpecificationUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GSpecificationRelateToOneForUpdateInput? get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GSpecificationCategoryRelateToOneForUpdateInput? get category;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  bool? get isKeyFeature;
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
      [void Function(GSpecificationRelateToOneForUpdateInputBuilder b)
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
      [void Function(GSpecificationCategoryRelateToOneForUpdateInputBuilder b)
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
          [void Function(GVehicleSpecificationUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleSpecificationCreateInputBuilder b) updates]) =
      _$GVehicleSpecificationCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GSpecificationRelateToOneForCreateInput? get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GSpecificationCategoryRelateToOneForCreateInput? get category;
  GVehicleRelateToOneForCreateInput? get vehicle;
  bool? get isKeyFeature;
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
      [void Function(GSpecificationRelateToOneForCreateInputBuilder b)
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
      [void Function(GSpecificationCategoryRelateToOneForCreateInputBuilder b)
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
          [void Function(GVehicleVariantWhereUniqueInputBuilder b) updates]) =
      _$GVehicleVariantWhereUniqueInput;

  String? get id;
  String? get key;
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
          [void Function(GVehicleVariantWhereInputBuilder b) updates]) =
      _$GVehicleVariantWhereInput;

  BuiltList<GVehicleVariantWhereInput>? get AND;
  BuiltList<GVehicleVariantWhereInput>? get OR;
  BuiltList<GVehicleVariantWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get key;
  GIntNullableFilter? get index;
  GVehicleWhereInput? get vehicle;
  @BuiltValueField(wireName: 'default')
  GBooleanFilter? get Gdefault;
  GVehicleSpecificationManyRelationFilter? get specifications;
  GVehicleColorManyRelationFilter? get colors;
  GTagManyRelationFilter? get tags;
  GBooleanFilter? get informative;
  GPriceManyRelationFilter? get prices;
  GStringFilter? get gtin;
  GBooleanFilter? get disabled;
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

abstract class GTagManyRelationFilter
    implements Built<GTagManyRelationFilter, GTagManyRelationFilterBuilder> {
  GTagManyRelationFilter._();

  factory GTagManyRelationFilter(
          [void Function(GTagManyRelationFilterBuilder b) updates]) =
      _$GTagManyRelationFilter;

  GTagWhereInput? get every;
  GTagWhereInput? get some;
  GTagWhereInput? get none;
  static Serializer<GTagManyRelationFilter> get serializer =>
      _$gTagManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagManyRelationFilter.serializer,
        json,
      );
}

abstract class GVehicleVariantOrderByInput
    implements
        Built<GVehicleVariantOrderByInput, GVehicleVariantOrderByInputBuilder> {
  GVehicleVariantOrderByInput._();

  factory GVehicleVariantOrderByInput(
          [void Function(GVehicleVariantOrderByInputBuilder b) updates]) =
      _$GVehicleVariantOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get key;
  GOrderDirection? get index;
  @BuiltValueField(wireName: 'default')
  GOrderDirection? get Gdefault;
  GOrderDirection? get informative;
  GOrderDirection? get gtin;
  GOrderDirection? get disabled;
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
          [void Function(GVehicleVariantUpdateInputBuilder b) updates]) =
      _$GVehicleVariantUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get key;
  int? get index;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GVehicleSpecificationRelateToManyForUpdateInput? get specifications;
  GVehicleColorRelateToManyForUpdateInput? get colors;
  GTagRelateToManyForUpdateInput? get tags;
  bool? get informative;
  GPriceRelateToManyForUpdateInput? get prices;
  String? get gtin;
  bool? get disabled;
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

abstract class GTagRelateToManyForUpdateInput
    implements
        Built<GTagRelateToManyForUpdateInput,
            GTagRelateToManyForUpdateInputBuilder> {
  GTagRelateToManyForUpdateInput._();

  factory GTagRelateToManyForUpdateInput(
          [void Function(GTagRelateToManyForUpdateInputBuilder b) updates]) =
      _$GTagRelateToManyForUpdateInput;

  BuiltList<GTagWhereUniqueInput>? get disconnect;
  BuiltList<GTagWhereUniqueInput>? get set;
  BuiltList<GTagCreateInput>? get create;
  BuiltList<GTagWhereUniqueInput>? get connect;
  static Serializer<GTagRelateToManyForUpdateInput> get serializer =>
      _$gTagRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagRelateToManyForUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleVariantUpdateArgs
    implements
        Built<GVehicleVariantUpdateArgs, GVehicleVariantUpdateArgsBuilder> {
  GVehicleVariantUpdateArgs._();

  factory GVehicleVariantUpdateArgs(
          [void Function(GVehicleVariantUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleVariantCreateInputBuilder b) updates]) =
      _$GVehicleVariantCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get key;
  int? get index;
  GVehicleRelateToOneForCreateInput? get vehicle;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GVehicleSpecificationRelateToManyForCreateInput? get specifications;
  GVehicleColorRelateToManyForCreateInput? get colors;
  GTagRelateToManyForCreateInput? get tags;
  bool? get informative;
  GPriceRelateToManyForCreateInput? get prices;
  String? get gtin;
  bool? get disabled;
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

abstract class GTagRelateToManyForCreateInput
    implements
        Built<GTagRelateToManyForCreateInput,
            GTagRelateToManyForCreateInputBuilder> {
  GTagRelateToManyForCreateInput._();

  factory GTagRelateToManyForCreateInput(
          [void Function(GTagRelateToManyForCreateInputBuilder b) updates]) =
      _$GTagRelateToManyForCreateInput;

  BuiltList<GTagCreateInput>? get create;
  BuiltList<GTagWhereUniqueInput>? get connect;
  static Serializer<GTagRelateToManyForCreateInput> get serializer =>
      _$gTagRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTagRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagRelateToManyForCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTagRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleDealerStockRequestWhereUniqueInput
    implements
        Built<GVehicleDealerStockRequestWhereUniqueInput,
            GVehicleDealerStockRequestWhereUniqueInputBuilder> {
  GVehicleDealerStockRequestWhereUniqueInput._();

  factory GVehicleDealerStockRequestWhereUniqueInput(
      [void Function(GVehicleDealerStockRequestWhereUniqueInputBuilder b)
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
      [void Function(GVehicleDealerStockRequestWhereInputBuilder b)
          updates]) = _$GVehicleDealerStockRequestWhereInput;

  BuiltList<GVehicleDealerStockRequestWhereInput>? get AND;
  BuiltList<GVehicleDealerStockRequestWhereInput>? get OR;
  BuiltList<GVehicleDealerStockRequestWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GVehicleVariantWhereInput? get vehicleVariant;
  GGuaranteeManyRelationFilter? get guarantees;
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
          [void Function(GStringNullableFilterBuilder b) updates]) =
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
          [void Function(GNestedStringNullableFilterBuilder b) updates]) =
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
      [void Function(GVehicleDealerStockRequestOrderByInputBuilder b)
          updates]) = _$GVehicleDealerStockRequestOrderByInput;

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
      [void Function(GVehicleDealerStockRequestUpdateInputBuilder b)
          updates]) = _$GVehicleDealerStockRequestUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GVehicleVariantRelateToOneForUpdateInput? get vehicleVariant;
  GGuaranteeRelateToManyForUpdateInput? get guarantees;
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
      [void Function(GVehicleDealerStockRequestUpdateArgsBuilder b)
          updates]) = _$GVehicleDealerStockRequestUpdateArgs;

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
      [void Function(GVehicleDealerStockRequestCreateInputBuilder b)
          updates]) = _$GVehicleDealerStockRequestCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GVehicleVariantRelateToOneForCreateInput? get vehicleVariant;
  GGuaranteeRelateToManyForCreateInput? get guarantees;
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
          [void Function(GPriceCategoryWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GPriceCategoryWhereInputBuilder b) updates]) =
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
          [void Function(GPriceCategoryOrderByInputBuilder b) updates]) =
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
          [void Function(GPriceCategoryUpdateInputBuilder b) updates]) =
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
          [void Function(GPriceCategoryUpdateArgsBuilder b) updates]) =
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
          [void Function(GPriceCategoryCreateInputBuilder b) updates]) =
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
          [void Function(GPriceWhereUniqueInputBuilder b) updates]) =
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

  factory GPriceWhereInput([void Function(GPriceWhereInputBuilder b) updates]) =
      _$GPriceWhereInput;

  BuiltList<GPriceWhereInput>? get AND;
  BuiltList<GPriceWhereInput>? get OR;
  BuiltList<GPriceWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GPriceCategoryWhereInput? get category;
  GIntFilter? get amount;
  GIntNullableFilter? get originalAmount;
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

  factory GPriceOrderByInput(
          [void Function(GPriceOrderByInputBuilder b) updates]) =
      _$GPriceOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get amount;
  GOrderDirection? get originalAmount;
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

  factory GPriceUpdateInput(
          [void Function(GPriceUpdateInputBuilder b) updates]) =
      _$GPriceUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GPriceCategoryRelateToOneForUpdateInput? get category;
  int? get amount;
  int? get originalAmount;
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
      [void Function(GPriceCategoryRelateToOneForUpdateInputBuilder b)
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

  factory GPriceUpdateArgs([void Function(GPriceUpdateArgsBuilder b) updates]) =
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

  factory GPriceCreateInput(
          [void Function(GPriceCreateInputBuilder b) updates]) =
      _$GPriceCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GPriceCategoryRelateToOneForCreateInput? get category;
  int? get amount;
  int? get originalAmount;
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
      [void Function(GPriceCategoryRelateToOneForCreateInputBuilder b)
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
          [void Function(GWalletWhereUniqueInputBuilder b) updates]) =
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

  factory GWalletWhereInput(
          [void Function(GWalletWhereInputBuilder b) updates]) =
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

abstract class GWalletOrderByInput
    implements Built<GWalletOrderByInput, GWalletOrderByInputBuilder> {
  GWalletOrderByInput._();

  factory GWalletOrderByInput(
          [void Function(GWalletOrderByInputBuilder b) updates]) =
      _$GWalletOrderByInput;

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

  factory GWalletUpdateInput(
          [void Function(GWalletUpdateInputBuilder b) updates]) =
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

  factory GWalletUpdateArgs(
          [void Function(GWalletUpdateArgsBuilder b) updates]) =
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

  factory GWalletCreateInput(
          [void Function(GWalletCreateInputBuilder b) updates]) =
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
      [void Function(GWalletTransactionWhereUniqueInputBuilder b)
          updates]) = _$GWalletTransactionWhereUniqueInput;

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
          [void Function(GWalletTransactionWhereInputBuilder b) updates]) =
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
          [void Function(GWalletTransactionOrderByInputBuilder b) updates]) =
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
          [void Function(GWalletTransactionUpdateInputBuilder b) updates]) =
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
          [void Function(GWalletTransactionUpdateArgsBuilder b) updates]) =
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
          [void Function(GWalletTransactionCreateInputBuilder b) updates]) =
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
          [void Function(GOrderWhereUniqueInputBuilder b) updates]) =
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

  factory GOrderWhereInput([void Function(GOrderWhereInputBuilder b) updates]) =
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
  GProductOrderManyRelationFilter? get productOrders;
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
          [void Function(GVehicleOrderManyRelationFilterBuilder b) updates]) =
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
          [void Function(GTestDriveOrderManyRelationFilterBuilder b) updates]) =
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

abstract class GProductOrderManyRelationFilter
    implements
        Built<GProductOrderManyRelationFilter,
            GProductOrderManyRelationFilterBuilder> {
  GProductOrderManyRelationFilter._();

  factory GProductOrderManyRelationFilter(
          [void Function(GProductOrderManyRelationFilterBuilder b) updates]) =
      _$GProductOrderManyRelationFilter;

  GProductOrderWhereInput? get every;
  GProductOrderWhereInput? get some;
  GProductOrderWhereInput? get none;
  static Serializer<GProductOrderManyRelationFilter> get serializer =>
      _$gProductOrderManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderManyRelationFilter.serializer,
        json,
      );
}

abstract class GPaymentManyRelationFilter
    implements
        Built<GPaymentManyRelationFilter, GPaymentManyRelationFilterBuilder> {
  GPaymentManyRelationFilter._();

  factory GPaymentManyRelationFilter(
          [void Function(GPaymentManyRelationFilterBuilder b) updates]) =
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

  factory GOrderOrderByInput(
          [void Function(GOrderOrderByInputBuilder b) updates]) =
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

  factory GOrderUpdateInput(
          [void Function(GOrderUpdateInputBuilder b) updates]) =
      _$GOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForUpdateInput? get testDriveOrders;
  GProductOrderRelateToManyForUpdateInput? get productOrders;
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
      [void Function(GVehicleOrderRelateToManyForUpdateInputBuilder b)
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
      [void Function(GTestDriveOrderRelateToManyForUpdateInputBuilder b)
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

abstract class GProductOrderRelateToManyForUpdateInput
    implements
        Built<GProductOrderRelateToManyForUpdateInput,
            GProductOrderRelateToManyForUpdateInputBuilder> {
  GProductOrderRelateToManyForUpdateInput._();

  factory GProductOrderRelateToManyForUpdateInput(
      [void Function(GProductOrderRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductOrderRelateToManyForUpdateInput;

  BuiltList<GProductOrderWhereUniqueInput>? get disconnect;
  BuiltList<GProductOrderWhereUniqueInput>? get set;
  BuiltList<GProductOrderCreateInput>? get create;
  BuiltList<GProductOrderWhereUniqueInput>? get connect;
  static Serializer<GProductOrderRelateToManyForUpdateInput> get serializer =>
      _$gProductOrderRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GPaymentRelateToManyForUpdateInput
    implements
        Built<GPaymentRelateToManyForUpdateInput,
            GPaymentRelateToManyForUpdateInputBuilder> {
  GPaymentRelateToManyForUpdateInput._();

  factory GPaymentRelateToManyForUpdateInput(
      [void Function(GPaymentRelateToManyForUpdateInputBuilder b)
          updates]) = _$GPaymentRelateToManyForUpdateInput;

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

  factory GOrderUpdateArgs([void Function(GOrderUpdateArgsBuilder b) updates]) =
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

  factory GOrderCreateInput(
          [void Function(GOrderCreateInputBuilder b) updates]) =
      _$GOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForCreateInput? get testDriveOrders;
  GProductOrderRelateToManyForCreateInput? get productOrders;
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
      [void Function(GVehicleOrderRelateToManyForCreateInputBuilder b)
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
      [void Function(GTestDriveOrderRelateToManyForCreateInputBuilder b)
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

abstract class GProductOrderRelateToManyForCreateInput
    implements
        Built<GProductOrderRelateToManyForCreateInput,
            GProductOrderRelateToManyForCreateInputBuilder> {
  GProductOrderRelateToManyForCreateInput._();

  factory GProductOrderRelateToManyForCreateInput(
      [void Function(GProductOrderRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductOrderRelateToManyForCreateInput;

  BuiltList<GProductOrderCreateInput>? get create;
  BuiltList<GProductOrderWhereUniqueInput>? get connect;
  static Serializer<GProductOrderRelateToManyForCreateInput> get serializer =>
      _$gProductOrderRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GPaymentRelateToManyForCreateInput
    implements
        Built<GPaymentRelateToManyForCreateInput,
            GPaymentRelateToManyForCreateInputBuilder> {
  GPaymentRelateToManyForCreateInput._();

  factory GPaymentRelateToManyForCreateInput(
      [void Function(GPaymentRelateToManyForCreateInputBuilder b)
          updates]) = _$GPaymentRelateToManyForCreateInput;

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
          [void Function(GPaymentWhereUniqueInputBuilder b) updates]) =
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

  factory GPaymentWhereInput(
          [void Function(GPaymentWhereInputBuilder b) updates]) =
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

  factory GFloatFilter([void Function(GFloatFilterBuilder b) updates]) =
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
          [void Function(GPaymentOrderByInputBuilder b) updates]) =
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
          [void Function(GPaymentUpdateInputBuilder b) updates]) =
      _$GPaymentUpdateInput;

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
          [void Function(GOrderRelateToOneForUpdateInputBuilder b) updates]) =
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

  factory GPaymentUpdateArgs(
          [void Function(GPaymentUpdateArgsBuilder b) updates]) =
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
          [void Function(GPaymentCreateInputBuilder b) updates]) =
      _$GPaymentCreateInput;

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
          [void Function(GOrderRelateToOneForCreateInputBuilder b) updates]) =
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
          [void Function(GVehicleOrderWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GVehicleOrderWhereInputBuilder b) updates]) =
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
  GAddressWhereInput? get address;
  GVehicleOrderAdditionalInfoWhereInput? get additionalInfo;
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
          [void Function(GVehicleOrderOrderByInputBuilder b) updates]) =
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
          [void Function(GVehicleOrderUpdateInputBuilder b) updates]) =
      _$GVehicleOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleDealerRelateToOneForUpdateInput? get dealer;
  GOrderRelateToOneForUpdateInput? get order;
  int? get price;
  _i4.JsonObject? get priceInfo;
  String? get status;
  GAddressRelateToOneForUpdateInput? get address;
  GVehicleOrderAdditionalInfoRelateToOneForUpdateInput? get additionalInfo;
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

abstract class GVehicleDealerRelateToOneForUpdateInput
    implements
        Built<GVehicleDealerRelateToOneForUpdateInput,
            GVehicleDealerRelateToOneForUpdateInputBuilder> {
  GVehicleDealerRelateToOneForUpdateInput._();

  factory GVehicleDealerRelateToOneForUpdateInput(
      [void Function(GVehicleDealerRelateToOneForUpdateInputBuilder b)
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

abstract class GAddressRelateToOneForUpdateInput
    implements
        Built<GAddressRelateToOneForUpdateInput,
            GAddressRelateToOneForUpdateInputBuilder> {
  GAddressRelateToOneForUpdateInput._();

  factory GAddressRelateToOneForUpdateInput(
          [void Function(GAddressRelateToOneForUpdateInputBuilder b) updates]) =
      _$GAddressRelateToOneForUpdateInput;

  GAddressCreateInput? get create;
  GAddressWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GAddressRelateToOneForUpdateInput> get serializer =>
      _$gAddressRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddressRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoRelateToOneForUpdateInput
    implements
        Built<GVehicleOrderAdditionalInfoRelateToOneForUpdateInput,
            GVehicleOrderAdditionalInfoRelateToOneForUpdateInputBuilder> {
  GVehicleOrderAdditionalInfoRelateToOneForUpdateInput._();

  factory GVehicleOrderAdditionalInfoRelateToOneForUpdateInput(
      [void Function(
              GVehicleOrderAdditionalInfoRelateToOneForUpdateInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoRelateToOneForUpdateInput;

  GVehicleOrderAdditionalInfoCreateInput? get create;
  GVehicleOrderAdditionalInfoWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GVehicleOrderAdditionalInfoRelateToOneForUpdateInput>
      get serializer =>
          _$gVehicleOrderAdditionalInfoRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderUpdateArgs
    implements Built<GVehicleOrderUpdateArgs, GVehicleOrderUpdateArgsBuilder> {
  GVehicleOrderUpdateArgs._();

  factory GVehicleOrderUpdateArgs(
          [void Function(GVehicleOrderUpdateArgsBuilder b) updates]) =
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
          [void Function(GVehicleOrderCreateInputBuilder b) updates]) =
      _$GVehicleOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleDealerRelateToOneForCreateInput? get dealer;
  GOrderRelateToOneForCreateInput? get order;
  int? get price;
  _i4.JsonObject? get priceInfo;
  String? get status;
  GAddressRelateToOneForCreateInput? get address;
  GVehicleOrderAdditionalInfoRelateToOneForCreateInput? get additionalInfo;
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

abstract class GVehicleDealerRelateToOneForCreateInput
    implements
        Built<GVehicleDealerRelateToOneForCreateInput,
            GVehicleDealerRelateToOneForCreateInputBuilder> {
  GVehicleDealerRelateToOneForCreateInput._();

  factory GVehicleDealerRelateToOneForCreateInput(
      [void Function(GVehicleDealerRelateToOneForCreateInputBuilder b)
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

abstract class GAddressRelateToOneForCreateInput
    implements
        Built<GAddressRelateToOneForCreateInput,
            GAddressRelateToOneForCreateInputBuilder> {
  GAddressRelateToOneForCreateInput._();

  factory GAddressRelateToOneForCreateInput(
          [void Function(GAddressRelateToOneForCreateInputBuilder b) updates]) =
      _$GAddressRelateToOneForCreateInput;

  GAddressCreateInput? get create;
  GAddressWhereUniqueInput? get connect;
  static Serializer<GAddressRelateToOneForCreateInput> get serializer =>
      _$gAddressRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAddressRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddressRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAddressRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoRelateToOneForCreateInput
    implements
        Built<GVehicleOrderAdditionalInfoRelateToOneForCreateInput,
            GVehicleOrderAdditionalInfoRelateToOneForCreateInputBuilder> {
  GVehicleOrderAdditionalInfoRelateToOneForCreateInput._();

  factory GVehicleOrderAdditionalInfoRelateToOneForCreateInput(
      [void Function(
              GVehicleOrderAdditionalInfoRelateToOneForCreateInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoRelateToOneForCreateInput;

  GVehicleOrderAdditionalInfoCreateInput? get create;
  GVehicleOrderAdditionalInfoWhereUniqueInput? get connect;
  static Serializer<GVehicleOrderAdditionalInfoRelateToOneForCreateInput>
      get serializer =>
          _$gVehicleOrderAdditionalInfoRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GTestDriveOrderWhereUniqueInput
    implements
        Built<GTestDriveOrderWhereUniqueInput,
            GTestDriveOrderWhereUniqueInputBuilder> {
  GTestDriveOrderWhereUniqueInput._();

  factory GTestDriveOrderWhereUniqueInput(
          [void Function(GTestDriveOrderWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GTestDriveOrderWhereInputBuilder b) updates]) =
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
  GAddressWhereInput? get address;
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
          [void Function(GTestDriveOrderOrderByInputBuilder b) updates]) =
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
          [void Function(GTestDriveOrderUpdateInputBuilder b) updates]) =
      _$GTestDriveOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GTestDriveDealerRelateToOneForUpdateInput? get dealer;
  GOrderRelateToOneForUpdateInput? get order;
  int? get price;
  String? get status;
  GAddressRelateToOneForUpdateInput? get address;
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
      [void Function(GTestDriveDealerRelateToOneForUpdateInputBuilder b)
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
          [void Function(GTestDriveOrderUpdateArgsBuilder b) updates]) =
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
          [void Function(GTestDriveOrderCreateInputBuilder b) updates]) =
      _$GTestDriveOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GTestDriveDealerRelateToOneForCreateInput? get dealer;
  GOrderRelateToOneForCreateInput? get order;
  int? get price;
  String? get status;
  GAddressRelateToOneForCreateInput? get address;
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
      [void Function(GTestDriveDealerRelateToOneForCreateInputBuilder b)
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

abstract class GProductOrderWhereUniqueInput
    implements
        Built<GProductOrderWhereUniqueInput,
            GProductOrderWhereUniqueInputBuilder> {
  GProductOrderWhereUniqueInput._();

  factory GProductOrderWhereUniqueInput(
          [void Function(GProductOrderWhereUniqueInputBuilder b) updates]) =
      _$GProductOrderWhereUniqueInput;

  String? get id;
  static Serializer<GProductOrderWhereUniqueInput> get serializer =>
      _$gProductOrderWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductOrderWhereInput
    implements Built<GProductOrderWhereInput, GProductOrderWhereInputBuilder> {
  GProductOrderWhereInput._();

  factory GProductOrderWhereInput(
          [void Function(GProductOrderWhereInputBuilder b) updates]) =
      _$GProductOrderWhereInput;

  BuiltList<GProductOrderWhereInput>? get AND;
  BuiltList<GProductOrderWhereInput>? get OR;
  BuiltList<GProductOrderWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GProductDealerWhereInput? get dealer;
  GOrderWhereInput? get order;
  GIntNullableFilter? get price;
  GStringNullableFilter? get status;
  GAddressWhereInput? get address;
  static Serializer<GProductOrderWhereInput> get serializer =>
      _$gProductOrderWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderWhereInput.serializer,
        json,
      );
}

abstract class GProductOrderOrderByInput
    implements
        Built<GProductOrderOrderByInput, GProductOrderOrderByInputBuilder> {
  GProductOrderOrderByInput._();

  factory GProductOrderOrderByInput(
          [void Function(GProductOrderOrderByInputBuilder b) updates]) =
      _$GProductOrderOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get price;
  GOrderDirection? get status;
  static Serializer<GProductOrderOrderByInput> get serializer =>
      _$gProductOrderOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderOrderByInput.serializer,
        json,
      );
}

abstract class GProductOrderUpdateInput
    implements
        Built<GProductOrderUpdateInput, GProductOrderUpdateInputBuilder> {
  GProductOrderUpdateInput._();

  factory GProductOrderUpdateInput(
          [void Function(GProductOrderUpdateInputBuilder b) updates]) =
      _$GProductOrderUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GProductDealerRelateToOneForUpdateInput? get dealer;
  GOrderRelateToOneForUpdateInput? get order;
  int? get price;
  _i4.JsonObject? get priceInfo;
  String? get status;
  GAddressRelateToOneForUpdateInput? get address;
  static Serializer<GProductOrderUpdateInput> get serializer =>
      _$gProductOrderUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderUpdateInput.serializer,
        json,
      );
}

abstract class GProductDealerRelateToOneForUpdateInput
    implements
        Built<GProductDealerRelateToOneForUpdateInput,
            GProductDealerRelateToOneForUpdateInputBuilder> {
  GProductDealerRelateToOneForUpdateInput._();

  factory GProductDealerRelateToOneForUpdateInput(
      [void Function(GProductDealerRelateToOneForUpdateInputBuilder b)
          updates]) = _$GProductDealerRelateToOneForUpdateInput;

  GProductDealerCreateInput? get create;
  GProductDealerWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GProductDealerRelateToOneForUpdateInput> get serializer =>
      _$gProductDealerRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GProductOrderUpdateArgs
    implements Built<GProductOrderUpdateArgs, GProductOrderUpdateArgsBuilder> {
  GProductOrderUpdateArgs._();

  factory GProductOrderUpdateArgs(
          [void Function(GProductOrderUpdateArgsBuilder b) updates]) =
      _$GProductOrderUpdateArgs;

  GProductOrderWhereUniqueInput get where;
  GProductOrderUpdateInput get data;
  static Serializer<GProductOrderUpdateArgs> get serializer =>
      _$gProductOrderUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderUpdateArgs.serializer,
        json,
      );
}

abstract class GProductOrderCreateInput
    implements
        Built<GProductOrderCreateInput, GProductOrderCreateInputBuilder> {
  GProductOrderCreateInput._();

  factory GProductOrderCreateInput(
          [void Function(GProductOrderCreateInputBuilder b) updates]) =
      _$GProductOrderCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GProductDealerRelateToOneForCreateInput? get dealer;
  GOrderRelateToOneForCreateInput? get order;
  int? get price;
  _i4.JsonObject? get priceInfo;
  String? get status;
  GAddressRelateToOneForCreateInput? get address;
  static Serializer<GProductOrderCreateInput> get serializer =>
      _$gProductOrderCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderCreateInput.serializer,
        json,
      );
}

abstract class GProductDealerRelateToOneForCreateInput
    implements
        Built<GProductDealerRelateToOneForCreateInput,
            GProductDealerRelateToOneForCreateInputBuilder> {
  GProductDealerRelateToOneForCreateInput._();

  factory GProductDealerRelateToOneForCreateInput(
      [void Function(GProductDealerRelateToOneForCreateInputBuilder b)
          updates]) = _$GProductDealerRelateToOneForCreateInput;

  GProductDealerCreateInput? get create;
  GProductDealerWhereUniqueInput? get connect;
  static Serializer<GProductDealerRelateToOneForCreateInput> get serializer =>
      _$gProductDealerRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GOrderCancellationRequestWhereUniqueInput
    implements
        Built<GOrderCancellationRequestWhereUniqueInput,
            GOrderCancellationRequestWhereUniqueInputBuilder> {
  GOrderCancellationRequestWhereUniqueInput._();

  factory GOrderCancellationRequestWhereUniqueInput(
      [void Function(GOrderCancellationRequestWhereUniqueInputBuilder b)
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
      [void Function(GOrderCancellationRequestWhereInputBuilder b)
          updates]) = _$GOrderCancellationRequestWhereInput;

  BuiltList<GOrderCancellationRequestWhereInput>? get AND;
  BuiltList<GOrderCancellationRequestWhereInput>? get OR;
  BuiltList<GOrderCancellationRequestWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleOrderManyRelationFilter? get vehicleOrders;
  GTestDriveOrderManyRelationFilter? get testDriveOrders;
  GProductOrderManyRelationFilter? get productOrders;
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
      [void Function(GOrderCancellationRequestOrderByInputBuilder b)
          updates]) = _$GOrderCancellationRequestOrderByInput;

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
      [void Function(GOrderCancellationRequestUpdateInputBuilder b)
          updates]) = _$GOrderCancellationRequestUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForUpdateInput? get testDriveOrders;
  GProductOrderRelateToManyForUpdateInput? get productOrders;
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
      [void Function(GOrderCancellationRequestUpdateArgsBuilder b)
          updates]) = _$GOrderCancellationRequestUpdateArgs;

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
      [void Function(GOrderCancellationRequestCreateInputBuilder b)
          updates]) = _$GOrderCancellationRequestCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForCreateInput? get testDriveOrders;
  GProductOrderRelateToManyForCreateInput? get productOrders;
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
      [void Function(GOrderRejectionByDealerWhereUniqueInputBuilder b)
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
          [void Function(GOrderRejectionByDealerWhereInputBuilder b) updates]) =
      _$GOrderRejectionByDealerWhereInput;

  BuiltList<GOrderRejectionByDealerWhereInput>? get AND;
  BuiltList<GOrderRejectionByDealerWhereInput>? get OR;
  BuiltList<GOrderRejectionByDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GVehicleOrderManyRelationFilter? get vehicleOrders;
  GTestDriveOrderManyRelationFilter? get testDriveOrders;
  GProductOrderManyRelationFilter? get productOrders;
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
      [void Function(GOrderRejectionByDealerOrderByInputBuilder b)
          updates]) = _$GOrderRejectionByDealerOrderByInput;

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
      [void Function(GOrderRejectionByDealerUpdateInputBuilder b)
          updates]) = _$GOrderRejectionByDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForUpdateInput? get testDriveOrders;
  GProductOrderRelateToManyForUpdateInput? get productOrders;
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
          [void Function(GOrderRejectionByDealerUpdateArgsBuilder b) updates]) =
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
      [void Function(GOrderRejectionByDealerCreateInputBuilder b)
          updates]) = _$GOrderRejectionByDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrders;
  GTestDriveOrderRelateToManyForCreateInput? get testDriveOrders;
  GProductOrderRelateToManyForCreateInput? get productOrders;
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

abstract class GVehicleOrderAdditionalInfoWhereUniqueInput
    implements
        Built<GVehicleOrderAdditionalInfoWhereUniqueInput,
            GVehicleOrderAdditionalInfoWhereUniqueInputBuilder> {
  GVehicleOrderAdditionalInfoWhereUniqueInput._();

  factory GVehicleOrderAdditionalInfoWhereUniqueInput(
      [void Function(GVehicleOrderAdditionalInfoWhereUniqueInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoWhereUniqueInput;

  String? get id;
  static Serializer<GVehicleOrderAdditionalInfoWhereUniqueInput>
      get serializer => _$gVehicleOrderAdditionalInfoWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoWhereUniqueInput.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoWhereInput
    implements
        Built<GVehicleOrderAdditionalInfoWhereInput,
            GVehicleOrderAdditionalInfoWhereInputBuilder> {
  GVehicleOrderAdditionalInfoWhereInput._();

  factory GVehicleOrderAdditionalInfoWhereInput(
      [void Function(GVehicleOrderAdditionalInfoWhereInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoWhereInput;

  BuiltList<GVehicleOrderAdditionalInfoWhereInput>? get AND;
  BuiltList<GVehicleOrderAdditionalInfoWhereInput>? get OR;
  BuiltList<GVehicleOrderAdditionalInfoWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get code;
  GStringFilter? get hsnCode;
  GVehicleOrderManyRelationFilter? get vehicleOrder;
  static Serializer<GVehicleOrderAdditionalInfoWhereInput> get serializer =>
      _$gVehicleOrderAdditionalInfoWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoWhereInput.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoOrderByInput
    implements
        Built<GVehicleOrderAdditionalInfoOrderByInput,
            GVehicleOrderAdditionalInfoOrderByInputBuilder> {
  GVehicleOrderAdditionalInfoOrderByInput._();

  factory GVehicleOrderAdditionalInfoOrderByInput(
      [void Function(GVehicleOrderAdditionalInfoOrderByInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get code;
  GOrderDirection? get hsnCode;
  static Serializer<GVehicleOrderAdditionalInfoOrderByInput> get serializer =>
      _$gVehicleOrderAdditionalInfoOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoOrderByInput.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoUpdateInput
    implements
        Built<GVehicleOrderAdditionalInfoUpdateInput,
            GVehicleOrderAdditionalInfoUpdateInputBuilder> {
  GVehicleOrderAdditionalInfoUpdateInput._();

  factory GVehicleOrderAdditionalInfoUpdateInput(
      [void Function(GVehicleOrderAdditionalInfoUpdateInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  String? get hsnCode;
  GVehicleOrderRelateToManyForUpdateInput? get vehicleOrder;
  static Serializer<GVehicleOrderAdditionalInfoUpdateInput> get serializer =>
      _$gVehicleOrderAdditionalInfoUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoUpdateInput.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoUpdateArgs
    implements
        Built<GVehicleOrderAdditionalInfoUpdateArgs,
            GVehicleOrderAdditionalInfoUpdateArgsBuilder> {
  GVehicleOrderAdditionalInfoUpdateArgs._();

  factory GVehicleOrderAdditionalInfoUpdateArgs(
      [void Function(GVehicleOrderAdditionalInfoUpdateArgsBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoUpdateArgs;

  GVehicleOrderAdditionalInfoWhereUniqueInput get where;
  GVehicleOrderAdditionalInfoUpdateInput get data;
  static Serializer<GVehicleOrderAdditionalInfoUpdateArgs> get serializer =>
      _$gVehicleOrderAdditionalInfoUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoUpdateArgs.serializer,
        json,
      );
}

abstract class GVehicleOrderAdditionalInfoCreateInput
    implements
        Built<GVehicleOrderAdditionalInfoCreateInput,
            GVehicleOrderAdditionalInfoCreateInputBuilder> {
  GVehicleOrderAdditionalInfoCreateInput._();

  factory GVehicleOrderAdditionalInfoCreateInput(
      [void Function(GVehicleOrderAdditionalInfoCreateInputBuilder b)
          updates]) = _$GVehicleOrderAdditionalInfoCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  String? get hsnCode;
  GVehicleOrderRelateToManyForCreateInput? get vehicleOrder;
  static Serializer<GVehicleOrderAdditionalInfoCreateInput> get serializer =>
      _$gVehicleOrderAdditionalInfoCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVehicleOrderAdditionalInfoCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVehicleOrderAdditionalInfoCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVehicleOrderAdditionalInfoCreateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewWhereUniqueInput
    implements
        Built<GUserVehicleReviewWhereUniqueInput,
            GUserVehicleReviewWhereUniqueInputBuilder> {
  GUserVehicleReviewWhereUniqueInput._();

  factory GUserVehicleReviewWhereUniqueInput(
      [void Function(GUserVehicleReviewWhereUniqueInputBuilder b)
          updates]) = _$GUserVehicleReviewWhereUniqueInput;

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
          [void Function(GUserVehicleReviewWhereInputBuilder b) updates]) =
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
  GUserVehicleReviewAttachmentManyRelationFilter? get attachments;
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

abstract class GUserVehicleReviewAttachmentManyRelationFilter
    implements
        Built<GUserVehicleReviewAttachmentManyRelationFilter,
            GUserVehicleReviewAttachmentManyRelationFilterBuilder> {
  GUserVehicleReviewAttachmentManyRelationFilter._();

  factory GUserVehicleReviewAttachmentManyRelationFilter(
      [void Function(GUserVehicleReviewAttachmentManyRelationFilterBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentManyRelationFilter;

  GUserVehicleReviewAttachmentWhereInput? get every;
  GUserVehicleReviewAttachmentWhereInput? get some;
  GUserVehicleReviewAttachmentWhereInput? get none;
  static Serializer<GUserVehicleReviewAttachmentManyRelationFilter>
      get serializer =>
          _$gUserVehicleReviewAttachmentManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentManyRelationFilter.serializer,
        json,
      );
}

abstract class GUserVehicleReviewOrderByInput
    implements
        Built<GUserVehicleReviewOrderByInput,
            GUserVehicleReviewOrderByInputBuilder> {
  GUserVehicleReviewOrderByInput._();

  factory GUserVehicleReviewOrderByInput(
          [void Function(GUserVehicleReviewOrderByInputBuilder b) updates]) =
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
          [void Function(GUserVehicleReviewUpdateInputBuilder b) updates]) =
      _$GUserVehicleReviewUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  String? get review;
  int? get rating;
  GUserVehicleReviewAttachmentRelateToManyForUpdateInput? get attachments;
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

abstract class GUserVehicleReviewAttachmentRelateToManyForUpdateInput
    implements
        Built<GUserVehicleReviewAttachmentRelateToManyForUpdateInput,
            GUserVehicleReviewAttachmentRelateToManyForUpdateInputBuilder> {
  GUserVehicleReviewAttachmentRelateToManyForUpdateInput._();

  factory GUserVehicleReviewAttachmentRelateToManyForUpdateInput(
      [void Function(
              GUserVehicleReviewAttachmentRelateToManyForUpdateInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentRelateToManyForUpdateInput;

  BuiltList<GUserVehicleReviewAttachmentWhereUniqueInput>? get disconnect;
  BuiltList<GUserVehicleReviewAttachmentWhereUniqueInput>? get set;
  BuiltList<GUserVehicleReviewAttachmentCreateInput>? get create;
  BuiltList<GUserVehicleReviewAttachmentWhereUniqueInput>? get connect;
  static Serializer<GUserVehicleReviewAttachmentRelateToManyForUpdateInput>
      get serializer =>
          _$gUserVehicleReviewAttachmentRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewUpdateArgs
    implements
        Built<GUserVehicleReviewUpdateArgs,
            GUserVehicleReviewUpdateArgsBuilder> {
  GUserVehicleReviewUpdateArgs._();

  factory GUserVehicleReviewUpdateArgs(
          [void Function(GUserVehicleReviewUpdateArgsBuilder b) updates]) =
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
          [void Function(GUserVehicleReviewCreateInputBuilder b) updates]) =
      _$GUserVehicleReviewCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GVehicleRelateToOneForCreateInput? get vehicle;
  String? get review;
  int? get rating;
  GUserVehicleReviewAttachmentRelateToManyForCreateInput? get attachments;
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

abstract class GUserVehicleReviewAttachmentRelateToManyForCreateInput
    implements
        Built<GUserVehicleReviewAttachmentRelateToManyForCreateInput,
            GUserVehicleReviewAttachmentRelateToManyForCreateInputBuilder> {
  GUserVehicleReviewAttachmentRelateToManyForCreateInput._();

  factory GUserVehicleReviewAttachmentRelateToManyForCreateInput(
      [void Function(
              GUserVehicleReviewAttachmentRelateToManyForCreateInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentRelateToManyForCreateInput;

  BuiltList<GUserVehicleReviewAttachmentCreateInput>? get create;
  BuiltList<GUserVehicleReviewAttachmentWhereUniqueInput>? get connect;
  static Serializer<GUserVehicleReviewAttachmentRelateToManyForCreateInput>
      get serializer =>
          _$gUserVehicleReviewAttachmentRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewAttachmentWhereUniqueInput
    implements
        Built<GUserVehicleReviewAttachmentWhereUniqueInput,
            GUserVehicleReviewAttachmentWhereUniqueInputBuilder> {
  GUserVehicleReviewAttachmentWhereUniqueInput._();

  factory GUserVehicleReviewAttachmentWhereUniqueInput(
      [void Function(GUserVehicleReviewAttachmentWhereUniqueInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentWhereUniqueInput;

  String? get id;
  static Serializer<GUserVehicleReviewAttachmentWhereUniqueInput>
      get serializer =>
          _$gUserVehicleReviewAttachmentWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentWhereUniqueInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewAttachmentWhereInput
    implements
        Built<GUserVehicleReviewAttachmentWhereInput,
            GUserVehicleReviewAttachmentWhereInputBuilder> {
  GUserVehicleReviewAttachmentWhereInput._();

  factory GUserVehicleReviewAttachmentWhereInput(
      [void Function(GUserVehicleReviewAttachmentWhereInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentWhereInput;

  BuiltList<GUserVehicleReviewAttachmentWhereInput>? get AND;
  BuiltList<GUserVehicleReviewAttachmentWhereInput>? get OR;
  BuiltList<GUserVehicleReviewAttachmentWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserVehicleReviewWhereInput? get review;
  static Serializer<GUserVehicleReviewAttachmentWhereInput> get serializer =>
      _$gUserVehicleReviewAttachmentWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentWhereInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewAttachmentOrderByInput
    implements
        Built<GUserVehicleReviewAttachmentOrderByInput,
            GUserVehicleReviewAttachmentOrderByInputBuilder> {
  GUserVehicleReviewAttachmentOrderByInput._();

  factory GUserVehicleReviewAttachmentOrderByInput(
      [void Function(GUserVehicleReviewAttachmentOrderByInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GUserVehicleReviewAttachmentOrderByInput> get serializer =>
      _$gUserVehicleReviewAttachmentOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentOrderByInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewAttachmentUpdateInput
    implements
        Built<GUserVehicleReviewAttachmentUpdateInput,
            GUserVehicleReviewAttachmentUpdateInputBuilder> {
  GUserVehicleReviewAttachmentUpdateInput._();

  factory GUserVehicleReviewAttachmentUpdateInput(
      [void Function(GUserVehicleReviewAttachmentUpdateInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  GUserVehicleReviewRelateToOneForUpdateInput? get review;
  static Serializer<GUserVehicleReviewAttachmentUpdateInput> get serializer =>
      _$gUserVehicleReviewAttachmentUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentUpdateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewRelateToOneForUpdateInput
    implements
        Built<GUserVehicleReviewRelateToOneForUpdateInput,
            GUserVehicleReviewRelateToOneForUpdateInputBuilder> {
  GUserVehicleReviewRelateToOneForUpdateInput._();

  factory GUserVehicleReviewRelateToOneForUpdateInput(
      [void Function(GUserVehicleReviewRelateToOneForUpdateInputBuilder b)
          updates]) = _$GUserVehicleReviewRelateToOneForUpdateInput;

  GUserVehicleReviewCreateInput? get create;
  GUserVehicleReviewWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GUserVehicleReviewRelateToOneForUpdateInput>
      get serializer => _$gUserVehicleReviewRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewAttachmentUpdateArgs
    implements
        Built<GUserVehicleReviewAttachmentUpdateArgs,
            GUserVehicleReviewAttachmentUpdateArgsBuilder> {
  GUserVehicleReviewAttachmentUpdateArgs._();

  factory GUserVehicleReviewAttachmentUpdateArgs(
      [void Function(GUserVehicleReviewAttachmentUpdateArgsBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentUpdateArgs;

  GUserVehicleReviewAttachmentWhereUniqueInput get where;
  GUserVehicleReviewAttachmentUpdateInput get data;
  static Serializer<GUserVehicleReviewAttachmentUpdateArgs> get serializer =>
      _$gUserVehicleReviewAttachmentUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentUpdateArgs.serializer,
        json,
      );
}

abstract class GUserVehicleReviewAttachmentCreateInput
    implements
        Built<GUserVehicleReviewAttachmentCreateInput,
            GUserVehicleReviewAttachmentCreateInputBuilder> {
  GUserVehicleReviewAttachmentCreateInput._();

  factory GUserVehicleReviewAttachmentCreateInput(
      [void Function(GUserVehicleReviewAttachmentCreateInputBuilder b)
          updates]) = _$GUserVehicleReviewAttachmentCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  GUserVehicleReviewRelateToOneForCreateInput? get review;
  static Serializer<GUserVehicleReviewAttachmentCreateInput> get serializer =>
      _$gUserVehicleReviewAttachmentCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewAttachmentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewAttachmentCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewAttachmentCreateInput.serializer,
        json,
      );
}

abstract class GUserVehicleReviewRelateToOneForCreateInput
    implements
        Built<GUserVehicleReviewRelateToOneForCreateInput,
            GUserVehicleReviewRelateToOneForCreateInputBuilder> {
  GUserVehicleReviewRelateToOneForCreateInput._();

  factory GUserVehicleReviewRelateToOneForCreateInput(
      [void Function(GUserVehicleReviewRelateToOneForCreateInputBuilder b)
          updates]) = _$GUserVehicleReviewRelateToOneForCreateInput;

  GUserVehicleReviewCreateInput? get create;
  GUserVehicleReviewWhereUniqueInput? get connect;
  static Serializer<GUserVehicleReviewRelateToOneForCreateInput>
      get serializer => _$gUserVehicleReviewRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserVehicleReviewRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVehicleReviewRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserVehicleReviewRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewWhereUniqueInput
    implements
        Built<GUserProductReviewWhereUniqueInput,
            GUserProductReviewWhereUniqueInputBuilder> {
  GUserProductReviewWhereUniqueInput._();

  factory GUserProductReviewWhereUniqueInput(
      [void Function(GUserProductReviewWhereUniqueInputBuilder b)
          updates]) = _$GUserProductReviewWhereUniqueInput;

  String? get id;
  static Serializer<GUserProductReviewWhereUniqueInput> get serializer =>
      _$gUserProductReviewWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewWhereUniqueInput.serializer,
        json,
      );
}

abstract class GUserProductReviewWhereInput
    implements
        Built<GUserProductReviewWhereInput,
            GUserProductReviewWhereInputBuilder> {
  GUserProductReviewWhereInput._();

  factory GUserProductReviewWhereInput(
          [void Function(GUserProductReviewWhereInputBuilder b) updates]) =
      _$GUserProductReviewWhereInput;

  BuiltList<GUserProductReviewWhereInput>? get AND;
  BuiltList<GUserProductReviewWhereInput>? get OR;
  BuiltList<GUserProductReviewWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GProductWhereInput? get product;
  GStringFilter? get review;
  GIntFilter? get rating;
  GUserProductReviewAttachmentManyRelationFilter? get attachments;
  static Serializer<GUserProductReviewWhereInput> get serializer =>
      _$gUserProductReviewWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewWhereInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentManyRelationFilter
    implements
        Built<GUserProductReviewAttachmentManyRelationFilter,
            GUserProductReviewAttachmentManyRelationFilterBuilder> {
  GUserProductReviewAttachmentManyRelationFilter._();

  factory GUserProductReviewAttachmentManyRelationFilter(
      [void Function(GUserProductReviewAttachmentManyRelationFilterBuilder b)
          updates]) = _$GUserProductReviewAttachmentManyRelationFilter;

  GUserProductReviewAttachmentWhereInput? get every;
  GUserProductReviewAttachmentWhereInput? get some;
  GUserProductReviewAttachmentWhereInput? get none;
  static Serializer<GUserProductReviewAttachmentManyRelationFilter>
      get serializer =>
          _$gUserProductReviewAttachmentManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentManyRelationFilter.serializer,
        json,
      );
}

abstract class GUserProductReviewOrderByInput
    implements
        Built<GUserProductReviewOrderByInput,
            GUserProductReviewOrderByInputBuilder> {
  GUserProductReviewOrderByInput._();

  factory GUserProductReviewOrderByInput(
          [void Function(GUserProductReviewOrderByInputBuilder b) updates]) =
      _$GUserProductReviewOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get review;
  GOrderDirection? get rating;
  static Serializer<GUserProductReviewOrderByInput> get serializer =>
      _$gUserProductReviewOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewOrderByInput.serializer,
        json,
      );
}

abstract class GUserProductReviewUpdateInput
    implements
        Built<GUserProductReviewUpdateInput,
            GUserProductReviewUpdateInputBuilder> {
  GUserProductReviewUpdateInput._();

  factory GUserProductReviewUpdateInput(
          [void Function(GUserProductReviewUpdateInputBuilder b) updates]) =
      _$GUserProductReviewUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GProductRelateToOneForUpdateInput? get product;
  String? get review;
  int? get rating;
  GUserProductReviewAttachmentRelateToManyForUpdateInput? get attachments;
  static Serializer<GUserProductReviewUpdateInput> get serializer =>
      _$gUserProductReviewUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewUpdateInput.serializer,
        json,
      );
}

abstract class GProductRelateToOneForUpdateInput
    implements
        Built<GProductRelateToOneForUpdateInput,
            GProductRelateToOneForUpdateInputBuilder> {
  GProductRelateToOneForUpdateInput._();

  factory GProductRelateToOneForUpdateInput(
          [void Function(GProductRelateToOneForUpdateInputBuilder b) updates]) =
      _$GProductRelateToOneForUpdateInput;

  GProductCreateInput? get create;
  GProductWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GProductRelateToOneForUpdateInput> get serializer =>
      _$gProductRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentRelateToManyForUpdateInput
    implements
        Built<GUserProductReviewAttachmentRelateToManyForUpdateInput,
            GUserProductReviewAttachmentRelateToManyForUpdateInputBuilder> {
  GUserProductReviewAttachmentRelateToManyForUpdateInput._();

  factory GUserProductReviewAttachmentRelateToManyForUpdateInput(
      [void Function(
              GUserProductReviewAttachmentRelateToManyForUpdateInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentRelateToManyForUpdateInput;

  BuiltList<GUserProductReviewAttachmentWhereUniqueInput>? get disconnect;
  BuiltList<GUserProductReviewAttachmentWhereUniqueInput>? get set;
  BuiltList<GUserProductReviewAttachmentCreateInput>? get create;
  BuiltList<GUserProductReviewAttachmentWhereUniqueInput>? get connect;
  static Serializer<GUserProductReviewAttachmentRelateToManyForUpdateInput>
      get serializer =>
          _$gUserProductReviewAttachmentRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewUpdateArgs
    implements
        Built<GUserProductReviewUpdateArgs,
            GUserProductReviewUpdateArgsBuilder> {
  GUserProductReviewUpdateArgs._();

  factory GUserProductReviewUpdateArgs(
          [void Function(GUserProductReviewUpdateArgsBuilder b) updates]) =
      _$GUserProductReviewUpdateArgs;

  GUserProductReviewWhereUniqueInput get where;
  GUserProductReviewUpdateInput get data;
  static Serializer<GUserProductReviewUpdateArgs> get serializer =>
      _$gUserProductReviewUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewUpdateArgs.serializer,
        json,
      );
}

abstract class GUserProductReviewCreateInput
    implements
        Built<GUserProductReviewCreateInput,
            GUserProductReviewCreateInputBuilder> {
  GUserProductReviewCreateInput._();

  factory GUserProductReviewCreateInput(
          [void Function(GUserProductReviewCreateInputBuilder b) updates]) =
      _$GUserProductReviewCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GProductRelateToOneForCreateInput? get product;
  String? get review;
  int? get rating;
  GUserProductReviewAttachmentRelateToManyForCreateInput? get attachments;
  static Serializer<GUserProductReviewCreateInput> get serializer =>
      _$gUserProductReviewCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewCreateInput.serializer,
        json,
      );
}

abstract class GProductRelateToOneForCreateInput
    implements
        Built<GProductRelateToOneForCreateInput,
            GProductRelateToOneForCreateInputBuilder> {
  GProductRelateToOneForCreateInput._();

  factory GProductRelateToOneForCreateInput(
          [void Function(GProductRelateToOneForCreateInputBuilder b) updates]) =
      _$GProductRelateToOneForCreateInput;

  GProductCreateInput? get create;
  GProductWhereUniqueInput? get connect;
  static Serializer<GProductRelateToOneForCreateInput> get serializer =>
      _$gProductRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentRelateToManyForCreateInput
    implements
        Built<GUserProductReviewAttachmentRelateToManyForCreateInput,
            GUserProductReviewAttachmentRelateToManyForCreateInputBuilder> {
  GUserProductReviewAttachmentRelateToManyForCreateInput._();

  factory GUserProductReviewAttachmentRelateToManyForCreateInput(
      [void Function(
              GUserProductReviewAttachmentRelateToManyForCreateInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentRelateToManyForCreateInput;

  BuiltList<GUserProductReviewAttachmentCreateInput>? get create;
  BuiltList<GUserProductReviewAttachmentWhereUniqueInput>? get connect;
  static Serializer<GUserProductReviewAttachmentRelateToManyForCreateInput>
      get serializer =>
          _$gUserProductReviewAttachmentRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentWhereUniqueInput
    implements
        Built<GUserProductReviewAttachmentWhereUniqueInput,
            GUserProductReviewAttachmentWhereUniqueInputBuilder> {
  GUserProductReviewAttachmentWhereUniqueInput._();

  factory GUserProductReviewAttachmentWhereUniqueInput(
      [void Function(GUserProductReviewAttachmentWhereUniqueInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentWhereUniqueInput;

  String? get id;
  static Serializer<GUserProductReviewAttachmentWhereUniqueInput>
      get serializer =>
          _$gUserProductReviewAttachmentWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentWhereUniqueInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentWhereInput
    implements
        Built<GUserProductReviewAttachmentWhereInput,
            GUserProductReviewAttachmentWhereInputBuilder> {
  GUserProductReviewAttachmentWhereInput._();

  factory GUserProductReviewAttachmentWhereInput(
      [void Function(GUserProductReviewAttachmentWhereInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentWhereInput;

  BuiltList<GUserProductReviewAttachmentWhereInput>? get AND;
  BuiltList<GUserProductReviewAttachmentWhereInput>? get OR;
  BuiltList<GUserProductReviewAttachmentWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserProductReviewWhereInput? get review;
  static Serializer<GUserProductReviewAttachmentWhereInput> get serializer =>
      _$gUserProductReviewAttachmentWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentWhereInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentOrderByInput
    implements
        Built<GUserProductReviewAttachmentOrderByInput,
            GUserProductReviewAttachmentOrderByInputBuilder> {
  GUserProductReviewAttachmentOrderByInput._();

  factory GUserProductReviewAttachmentOrderByInput(
      [void Function(GUserProductReviewAttachmentOrderByInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GUserProductReviewAttachmentOrderByInput> get serializer =>
      _$gUserProductReviewAttachmentOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentOrderByInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentUpdateInput
    implements
        Built<GUserProductReviewAttachmentUpdateInput,
            GUserProductReviewAttachmentUpdateInputBuilder> {
  GUserProductReviewAttachmentUpdateInput._();

  factory GUserProductReviewAttachmentUpdateInput(
      [void Function(GUserProductReviewAttachmentUpdateInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  GUserProductReviewRelateToOneForUpdateInput? get review;
  static Serializer<GUserProductReviewAttachmentUpdateInput> get serializer =>
      _$gUserProductReviewAttachmentUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentUpdateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewRelateToOneForUpdateInput
    implements
        Built<GUserProductReviewRelateToOneForUpdateInput,
            GUserProductReviewRelateToOneForUpdateInputBuilder> {
  GUserProductReviewRelateToOneForUpdateInput._();

  factory GUserProductReviewRelateToOneForUpdateInput(
      [void Function(GUserProductReviewRelateToOneForUpdateInputBuilder b)
          updates]) = _$GUserProductReviewRelateToOneForUpdateInput;

  GUserProductReviewCreateInput? get create;
  GUserProductReviewWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GUserProductReviewRelateToOneForUpdateInput>
      get serializer => _$gUserProductReviewRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentUpdateArgs
    implements
        Built<GUserProductReviewAttachmentUpdateArgs,
            GUserProductReviewAttachmentUpdateArgsBuilder> {
  GUserProductReviewAttachmentUpdateArgs._();

  factory GUserProductReviewAttachmentUpdateArgs(
      [void Function(GUserProductReviewAttachmentUpdateArgsBuilder b)
          updates]) = _$GUserProductReviewAttachmentUpdateArgs;

  GUserProductReviewAttachmentWhereUniqueInput get where;
  GUserProductReviewAttachmentUpdateInput get data;
  static Serializer<GUserProductReviewAttachmentUpdateArgs> get serializer =>
      _$gUserProductReviewAttachmentUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentUpdateArgs.serializer,
        json,
      );
}

abstract class GUserProductReviewAttachmentCreateInput
    implements
        Built<GUserProductReviewAttachmentCreateInput,
            GUserProductReviewAttachmentCreateInputBuilder> {
  GUserProductReviewAttachmentCreateInput._();

  factory GUserProductReviewAttachmentCreateInput(
      [void Function(GUserProductReviewAttachmentCreateInputBuilder b)
          updates]) = _$GUserProductReviewAttachmentCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  GUserProductReviewRelateToOneForCreateInput? get review;
  static Serializer<GUserProductReviewAttachmentCreateInput> get serializer =>
      _$gUserProductReviewAttachmentCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewAttachmentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewAttachmentCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewAttachmentCreateInput.serializer,
        json,
      );
}

abstract class GUserProductReviewRelateToOneForCreateInput
    implements
        Built<GUserProductReviewRelateToOneForCreateInput,
            GUserProductReviewRelateToOneForCreateInputBuilder> {
  GUserProductReviewRelateToOneForCreateInput._();

  factory GUserProductReviewRelateToOneForCreateInput(
      [void Function(GUserProductReviewRelateToOneForCreateInputBuilder b)
          updates]) = _$GUserProductReviewRelateToOneForCreateInput;

  GUserProductReviewCreateInput? get create;
  GUserProductReviewWhereUniqueInput? get connect;
  static Serializer<GUserProductReviewRelateToOneForCreateInput>
      get serializer => _$gUserProductReviewRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserProductReviewRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserProductReviewRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserProductReviewRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GExpertReviewWhereUniqueInput
    implements
        Built<GExpertReviewWhereUniqueInput,
            GExpertReviewWhereUniqueInputBuilder> {
  GExpertReviewWhereUniqueInput._();

  factory GExpertReviewWhereUniqueInput(
          [void Function(GExpertReviewWhereUniqueInputBuilder b) updates]) =
      _$GExpertReviewWhereUniqueInput;

  String? get id;
  String? get key;
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
          [void Function(GExpertReviewWhereInputBuilder b) updates]) =
      _$GExpertReviewWhereInput;

  BuiltList<GExpertReviewWhereInput>? get AND;
  BuiltList<GExpertReviewWhereInput>? get OR;
  BuiltList<GExpertReviewWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get title;
  GStringFilter? get key;
  GStringFilter? get description;
  GUserWhereInput? get user;
  GIntNullableFilter? get likes;
  GBooleanFilter? get disabled;
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
          [void Function(GExpertReviewOrderByInputBuilder b) updates]) =
      _$GExpertReviewOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get key;
  GOrderDirection? get description;
  GOrderDirection? get likes;
  GOrderDirection? get disabled;
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
          [void Function(GExpertReviewUpdateInputBuilder b) updates]) =
      _$GExpertReviewUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get key;
  String? get description;
  GImageFieldInput? get banner;
  GUserRelateToOneForUpdateInput? get user;
  int? get likes;
  bool? get disabled;
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
          [void Function(GExpertReviewUpdateArgsBuilder b) updates]) =
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
          [void Function(GExpertReviewCreateInputBuilder b) updates]) =
      _$GExpertReviewCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get key;
  String? get description;
  GImageFieldInput? get banner;
  GUserRelateToOneForCreateInput? get user;
  int? get likes;
  bool? get disabled;
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
          [void Function(GDealerWhereUniqueInputBuilder b) updates]) =
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

  factory GDealerWhereInput(
          [void Function(GDealerWhereInputBuilder b) updates]) =
      _$GDealerWhereInput;

  BuiltList<GDealerWhereInput>? get AND;
  BuiltList<GDealerWhereInput>? get OR;
  BuiltList<GDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GBooleanFilter? get approved;
  GDealerAddressManyRelationFilter? get addresses;
  GFloatNullableFilter? get lLat;
  GFloatNullableFilter? get lLng;
  GBooleanFilter? get mouApproved;
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

abstract class GDealerAddressManyRelationFilter
    implements
        Built<GDealerAddressManyRelationFilter,
            GDealerAddressManyRelationFilterBuilder> {
  GDealerAddressManyRelationFilter._();

  factory GDealerAddressManyRelationFilter(
          [void Function(GDealerAddressManyRelationFilterBuilder b) updates]) =
      _$GDealerAddressManyRelationFilter;

  GDealerAddressWhereInput? get every;
  GDealerAddressWhereInput? get some;
  GDealerAddressWhereInput? get none;
  static Serializer<GDealerAddressManyRelationFilter> get serializer =>
      _$gDealerAddressManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressManyRelationFilter.serializer,
        json,
      );
}

abstract class GDealerOrderByInput
    implements Built<GDealerOrderByInput, GDealerOrderByInputBuilder> {
  GDealerOrderByInput._();

  factory GDealerOrderByInput(
          [void Function(GDealerOrderByInputBuilder b) updates]) =
      _$GDealerOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get approved;
  GOrderDirection? get lLat;
  GOrderDirection? get lLng;
  GOrderDirection? get mouApproved;
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

  factory GDealerUpdateInput(
          [void Function(GDealerUpdateInputBuilder b) updates]) =
      _$GDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  bool? get approved;
  GDealerAddressRelateToManyForUpdateInput? get addresses;
  double? get lLat;
  double? get lLng;
  bool? get mouApproved;
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

abstract class GDealerAddressRelateToManyForUpdateInput
    implements
        Built<GDealerAddressRelateToManyForUpdateInput,
            GDealerAddressRelateToManyForUpdateInputBuilder> {
  GDealerAddressRelateToManyForUpdateInput._();

  factory GDealerAddressRelateToManyForUpdateInput(
      [void Function(GDealerAddressRelateToManyForUpdateInputBuilder b)
          updates]) = _$GDealerAddressRelateToManyForUpdateInput;

  BuiltList<GDealerAddressWhereUniqueInput>? get disconnect;
  BuiltList<GDealerAddressWhereUniqueInput>? get set;
  BuiltList<GDealerAddressCreateInput>? get create;
  BuiltList<GDealerAddressWhereUniqueInput>? get connect;
  static Serializer<GDealerAddressRelateToManyForUpdateInput> get serializer =>
      _$gDealerAddressRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GDealerUpdateArgs
    implements Built<GDealerUpdateArgs, GDealerUpdateArgsBuilder> {
  GDealerUpdateArgs._();

  factory GDealerUpdateArgs(
          [void Function(GDealerUpdateArgsBuilder b) updates]) =
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

  factory GDealerCreateInput(
          [void Function(GDealerCreateInputBuilder b) updates]) =
      _$GDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  bool? get approved;
  GDealerAddressRelateToManyForCreateInput? get addresses;
  double? get lLat;
  double? get lLng;
  bool? get mouApproved;
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

abstract class GDealerAddressRelateToManyForCreateInput
    implements
        Built<GDealerAddressRelateToManyForCreateInput,
            GDealerAddressRelateToManyForCreateInputBuilder> {
  GDealerAddressRelateToManyForCreateInput._();

  factory GDealerAddressRelateToManyForCreateInput(
      [void Function(GDealerAddressRelateToManyForCreateInputBuilder b)
          updates]) = _$GDealerAddressRelateToManyForCreateInput;

  BuiltList<GDealerAddressCreateInput>? get create;
  BuiltList<GDealerAddressWhereUniqueInput>? get connect;
  static Serializer<GDealerAddressRelateToManyForCreateInput> get serializer =>
      _$gDealerAddressRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDealerAddressRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDealerAddressRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDealerAddressRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GNotificationTypeWhereUniqueInput
    implements
        Built<GNotificationTypeWhereUniqueInput,
            GNotificationTypeWhereUniqueInputBuilder> {
  GNotificationTypeWhereUniqueInput._();

  factory GNotificationTypeWhereUniqueInput(
          [void Function(GNotificationTypeWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GNotificationTypeWhereInputBuilder b) updates]) =
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
          [void Function(GNotificationTypeOrderByInputBuilder b) updates]) =
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
          [void Function(GNotificationTypeUpdateInputBuilder b) updates]) =
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
          [void Function(GNotificationTypeUpdateArgsBuilder b) updates]) =
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
          [void Function(GNotificationTypeCreateInputBuilder b) updates]) =
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
      [void Function(GEmailNotificationTemplateWhereUniqueInputBuilder b)
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
      [void Function(GEmailNotificationTemplateWhereInputBuilder b)
          updates]) = _$GEmailNotificationTemplateWhereInput;

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
      [void Function(GEmailNotificationTemplateOrderByInputBuilder b)
          updates]) = _$GEmailNotificationTemplateOrderByInput;

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
      [void Function(GEmailNotificationTemplateUpdateInputBuilder b)
          updates]) = _$GEmailNotificationTemplateUpdateInput;

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
      [void Function(GNotificationTypeRelateToOneForUpdateInputBuilder b)
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
      [void Function(GEmailNotificationTemplateUpdateArgsBuilder b)
          updates]) = _$GEmailNotificationTemplateUpdateArgs;

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
      [void Function(GEmailNotificationTemplateCreateInputBuilder b)
          updates]) = _$GEmailNotificationTemplateCreateInput;

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
      [void Function(GNotificationTypeRelateToOneForCreateInputBuilder b)
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
      [void Function(GSMSNotificationTemplateWhereUniqueInputBuilder b)
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
      [void Function(GSMSNotificationTemplateWhereInputBuilder b)
          updates]) = _$GSMSNotificationTemplateWhereInput;

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
      [void Function(GSMSNotificationTemplateOrderByInputBuilder b)
          updates]) = _$GSMSNotificationTemplateOrderByInput;

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
      [void Function(GSMSNotificationTemplateUpdateInputBuilder b)
          updates]) = _$GSMSNotificationTemplateUpdateInput;

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
      [void Function(GSMSNotificationTemplateUpdateArgsBuilder b)
          updates]) = _$GSMSNotificationTemplateUpdateArgs;

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
      [void Function(GSMSNotificationTemplateCreateInputBuilder b)
          updates]) = _$GSMSNotificationTemplateCreateInput;

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
      [void Function(GAppNotificationTemplateWhereUniqueInputBuilder b)
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
      [void Function(GAppNotificationTemplateWhereInputBuilder b)
          updates]) = _$GAppNotificationTemplateWhereInput;

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
      [void Function(GAppNotificationTemplateOrderByInputBuilder b)
          updates]) = _$GAppNotificationTemplateOrderByInput;

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
      [void Function(GAppNotificationTemplateUpdateInputBuilder b)
          updates]) = _$GAppNotificationTemplateUpdateInput;

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
      [void Function(GAppNotificationTemplateUpdateArgsBuilder b)
          updates]) = _$GAppNotificationTemplateUpdateArgs;

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
      [void Function(GAppNotificationTemplateCreateInputBuilder b)
          updates]) = _$GAppNotificationTemplateCreateInput;

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
          [void Function(GAppNotificationWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GAppNotificationWhereInputBuilder b) updates]) =
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
          [void Function(GAppNotificationOrderByInputBuilder b) updates]) =
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
          [void Function(GAppNotificationUpdateInputBuilder b) updates]) =
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
          [void Function(GAppNotificationUpdateArgsBuilder b) updates]) =
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
          [void Function(GAppNotificationCreateInputBuilder b) updates]) =
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
          [void Function(GFAQWhereUniqueInputBuilder b) updates]) =
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

  factory GFAQWhereInput([void Function(GFAQWhereInputBuilder b) updates]) =
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

  factory GFAQOrderByInput([void Function(GFAQOrderByInputBuilder b) updates]) =
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

  factory GFAQUpdateInput([void Function(GFAQUpdateInputBuilder b) updates]) =
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
      [void Function(GCategoryRelateToOneForUpdateInputBuilder b)
          updates]) = _$GCategoryRelateToOneForUpdateInput;

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

  factory GFAQUpdateArgs([void Function(GFAQUpdateArgsBuilder b) updates]) =
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

  factory GFAQCreateInput([void Function(GFAQCreateInputBuilder b) updates]) =
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
      [void Function(GCategoryRelateToOneForCreateInputBuilder b)
          updates]) = _$GCategoryRelateToOneForCreateInput;

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
          [void Function(GHelpSupportWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GHelpSupportWhereInputBuilder b) updates]) =
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
          [void Function(GHelpSupportOrderByInputBuilder b) updates]) =
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
          [void Function(GHelpSupportUpdateInputBuilder b) updates]) =
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
          [void Function(GHelpSupportUpdateArgsBuilder b) updates]) =
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
          [void Function(GHelpSupportCreateInputBuilder b) updates]) =
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
          [void Function(GTagWhereUniqueInputBuilder b) updates]) =
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

  factory GTagWhereInput([void Function(GTagWhereInputBuilder b) updates]) =
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

  factory GTagOrderByInput([void Function(GTagOrderByInputBuilder b) updates]) =
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

  factory GTagUpdateInput([void Function(GTagUpdateInputBuilder b) updates]) =
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

  factory GTagUpdateArgs([void Function(GTagUpdateArgsBuilder b) updates]) =
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

  factory GTagCreateInput([void Function(GTagCreateInputBuilder b) updates]) =
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

abstract class GNewsItemWhereUniqueInput
    implements
        Built<GNewsItemWhereUniqueInput, GNewsItemWhereUniqueInputBuilder> {
  GNewsItemWhereUniqueInput._();

  factory GNewsItemWhereUniqueInput(
          [void Function(GNewsItemWhereUniqueInputBuilder b) updates]) =
      _$GNewsItemWhereUniqueInput;

  String? get id;
  String? get key;
  static Serializer<GNewsItemWhereUniqueInput> get serializer =>
      _$gNewsItemWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemWhereUniqueInput.serializer,
        json,
      );
}

abstract class GNewsItemWhereInput
    implements Built<GNewsItemWhereInput, GNewsItemWhereInputBuilder> {
  GNewsItemWhereInput._();

  factory GNewsItemWhereInput(
          [void Function(GNewsItemWhereInputBuilder b) updates]) =
      _$GNewsItemWhereInput;

  BuiltList<GNewsItemWhereInput>? get AND;
  BuiltList<GNewsItemWhereInput>? get OR;
  BuiltList<GNewsItemWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get title;
  GStringFilter? get key;
  GStringFilter? get description;
  GStringFilter? get authorName;
  GNewsCategoryManyRelationFilter? get categories;
  GKeywordManyRelationFilter? get keywords;
  GNewsAttachmentWhereInput? get banner;
  GNewsAttachmentManyRelationFilter? get newsAttachments;
  GBooleanFilter? get disabled;
  static Serializer<GNewsItemWhereInput> get serializer =>
      _$gNewsItemWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemWhereInput.serializer,
        json,
      );
}

abstract class GNewsCategoryManyRelationFilter
    implements
        Built<GNewsCategoryManyRelationFilter,
            GNewsCategoryManyRelationFilterBuilder> {
  GNewsCategoryManyRelationFilter._();

  factory GNewsCategoryManyRelationFilter(
          [void Function(GNewsCategoryManyRelationFilterBuilder b) updates]) =
      _$GNewsCategoryManyRelationFilter;

  GNewsCategoryWhereInput? get every;
  GNewsCategoryWhereInput? get some;
  GNewsCategoryWhereInput? get none;
  static Serializer<GNewsCategoryManyRelationFilter> get serializer =>
      _$gNewsCategoryManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryManyRelationFilter.serializer,
        json,
      );
}

abstract class GKeywordManyRelationFilter
    implements
        Built<GKeywordManyRelationFilter, GKeywordManyRelationFilterBuilder> {
  GKeywordManyRelationFilter._();

  factory GKeywordManyRelationFilter(
          [void Function(GKeywordManyRelationFilterBuilder b) updates]) =
      _$GKeywordManyRelationFilter;

  GKeywordWhereInput? get every;
  GKeywordWhereInput? get some;
  GKeywordWhereInput? get none;
  static Serializer<GKeywordManyRelationFilter> get serializer =>
      _$gKeywordManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordManyRelationFilter.serializer,
        json,
      );
}

abstract class GNewsAttachmentManyRelationFilter
    implements
        Built<GNewsAttachmentManyRelationFilter,
            GNewsAttachmentManyRelationFilterBuilder> {
  GNewsAttachmentManyRelationFilter._();

  factory GNewsAttachmentManyRelationFilter(
          [void Function(GNewsAttachmentManyRelationFilterBuilder b) updates]) =
      _$GNewsAttachmentManyRelationFilter;

  GNewsAttachmentWhereInput? get every;
  GNewsAttachmentWhereInput? get some;
  GNewsAttachmentWhereInput? get none;
  static Serializer<GNewsAttachmentManyRelationFilter> get serializer =>
      _$gNewsAttachmentManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentManyRelationFilter.serializer,
        json,
      );
}

abstract class GNewsItemOrderByInput
    implements Built<GNewsItemOrderByInput, GNewsItemOrderByInputBuilder> {
  GNewsItemOrderByInput._();

  factory GNewsItemOrderByInput(
          [void Function(GNewsItemOrderByInputBuilder b) updates]) =
      _$GNewsItemOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get key;
  GOrderDirection? get description;
  GOrderDirection? get authorName;
  GOrderDirection? get disabled;
  static Serializer<GNewsItemOrderByInput> get serializer =>
      _$gNewsItemOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemOrderByInput.serializer,
        json,
      );
}

abstract class GNewsItemUpdateInput
    implements Built<GNewsItemUpdateInput, GNewsItemUpdateInputBuilder> {
  GNewsItemUpdateInput._();

  factory GNewsItemUpdateInput(
          [void Function(GNewsItemUpdateInputBuilder b) updates]) =
      _$GNewsItemUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get key;
  String? get description;
  String? get authorName;
  GNewsCategoryRelateToManyForUpdateInput? get categories;
  GKeywordRelateToManyForUpdateInput? get keywords;
  GNewsAttachmentRelateToOneForUpdateInput? get banner;
  GNewsAttachmentRelateToManyForUpdateInput? get newsAttachments;
  bool? get disabled;
  static Serializer<GNewsItemUpdateInput> get serializer =>
      _$gNewsItemUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemUpdateInput.serializer,
        json,
      );
}

abstract class GNewsCategoryRelateToManyForUpdateInput
    implements
        Built<GNewsCategoryRelateToManyForUpdateInput,
            GNewsCategoryRelateToManyForUpdateInputBuilder> {
  GNewsCategoryRelateToManyForUpdateInput._();

  factory GNewsCategoryRelateToManyForUpdateInput(
      [void Function(GNewsCategoryRelateToManyForUpdateInputBuilder b)
          updates]) = _$GNewsCategoryRelateToManyForUpdateInput;

  BuiltList<GNewsCategoryWhereUniqueInput>? get disconnect;
  BuiltList<GNewsCategoryWhereUniqueInput>? get set;
  BuiltList<GNewsCategoryCreateInput>? get create;
  BuiltList<GNewsCategoryWhereUniqueInput>? get connect;
  static Serializer<GNewsCategoryRelateToManyForUpdateInput> get serializer =>
      _$gNewsCategoryRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GKeywordRelateToManyForUpdateInput
    implements
        Built<GKeywordRelateToManyForUpdateInput,
            GKeywordRelateToManyForUpdateInputBuilder> {
  GKeywordRelateToManyForUpdateInput._();

  factory GKeywordRelateToManyForUpdateInput(
      [void Function(GKeywordRelateToManyForUpdateInputBuilder b)
          updates]) = _$GKeywordRelateToManyForUpdateInput;

  BuiltList<GKeywordWhereUniqueInput>? get disconnect;
  BuiltList<GKeywordWhereUniqueInput>? get set;
  BuiltList<GKeywordCreateInput>? get create;
  BuiltList<GKeywordWhereUniqueInput>? get connect;
  static Serializer<GKeywordRelateToManyForUpdateInput> get serializer =>
      _$gKeywordRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentRelateToOneForUpdateInput
    implements
        Built<GNewsAttachmentRelateToOneForUpdateInput,
            GNewsAttachmentRelateToOneForUpdateInputBuilder> {
  GNewsAttachmentRelateToOneForUpdateInput._();

  factory GNewsAttachmentRelateToOneForUpdateInput(
      [void Function(GNewsAttachmentRelateToOneForUpdateInputBuilder b)
          updates]) = _$GNewsAttachmentRelateToOneForUpdateInput;

  GNewsAttachmentCreateInput? get create;
  GNewsAttachmentWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GNewsAttachmentRelateToOneForUpdateInput> get serializer =>
      _$gNewsAttachmentRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentRelateToManyForUpdateInput
    implements
        Built<GNewsAttachmentRelateToManyForUpdateInput,
            GNewsAttachmentRelateToManyForUpdateInputBuilder> {
  GNewsAttachmentRelateToManyForUpdateInput._();

  factory GNewsAttachmentRelateToManyForUpdateInput(
      [void Function(GNewsAttachmentRelateToManyForUpdateInputBuilder b)
          updates]) = _$GNewsAttachmentRelateToManyForUpdateInput;

  BuiltList<GNewsAttachmentWhereUniqueInput>? get disconnect;
  BuiltList<GNewsAttachmentWhereUniqueInput>? get set;
  BuiltList<GNewsAttachmentCreateInput>? get create;
  BuiltList<GNewsAttachmentWhereUniqueInput>? get connect;
  static Serializer<GNewsAttachmentRelateToManyForUpdateInput> get serializer =>
      _$gNewsAttachmentRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GNewsItemUpdateArgs
    implements Built<GNewsItemUpdateArgs, GNewsItemUpdateArgsBuilder> {
  GNewsItemUpdateArgs._();

  factory GNewsItemUpdateArgs(
          [void Function(GNewsItemUpdateArgsBuilder b) updates]) =
      _$GNewsItemUpdateArgs;

  GNewsItemWhereUniqueInput get where;
  GNewsItemUpdateInput get data;
  static Serializer<GNewsItemUpdateArgs> get serializer =>
      _$gNewsItemUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemUpdateArgs.serializer,
        json,
      );
}

abstract class GNewsItemCreateInput
    implements Built<GNewsItemCreateInput, GNewsItemCreateInputBuilder> {
  GNewsItemCreateInput._();

  factory GNewsItemCreateInput(
          [void Function(GNewsItemCreateInputBuilder b) updates]) =
      _$GNewsItemCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get key;
  String? get description;
  String? get authorName;
  GNewsCategoryRelateToManyForCreateInput? get categories;
  GKeywordRelateToManyForCreateInput? get keywords;
  GNewsAttachmentRelateToOneForCreateInput? get banner;
  GNewsAttachmentRelateToManyForCreateInput? get newsAttachments;
  bool? get disabled;
  static Serializer<GNewsItemCreateInput> get serializer =>
      _$gNewsItemCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemCreateInput.serializer,
        json,
      );
}

abstract class GNewsCategoryRelateToManyForCreateInput
    implements
        Built<GNewsCategoryRelateToManyForCreateInput,
            GNewsCategoryRelateToManyForCreateInputBuilder> {
  GNewsCategoryRelateToManyForCreateInput._();

  factory GNewsCategoryRelateToManyForCreateInput(
      [void Function(GNewsCategoryRelateToManyForCreateInputBuilder b)
          updates]) = _$GNewsCategoryRelateToManyForCreateInput;

  BuiltList<GNewsCategoryCreateInput>? get create;
  BuiltList<GNewsCategoryWhereUniqueInput>? get connect;
  static Serializer<GNewsCategoryRelateToManyForCreateInput> get serializer =>
      _$gNewsCategoryRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GKeywordRelateToManyForCreateInput
    implements
        Built<GKeywordRelateToManyForCreateInput,
            GKeywordRelateToManyForCreateInputBuilder> {
  GKeywordRelateToManyForCreateInput._();

  factory GKeywordRelateToManyForCreateInput(
      [void Function(GKeywordRelateToManyForCreateInputBuilder b)
          updates]) = _$GKeywordRelateToManyForCreateInput;

  BuiltList<GKeywordCreateInput>? get create;
  BuiltList<GKeywordWhereUniqueInput>? get connect;
  static Serializer<GKeywordRelateToManyForCreateInput> get serializer =>
      _$gKeywordRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentRelateToOneForCreateInput
    implements
        Built<GNewsAttachmentRelateToOneForCreateInput,
            GNewsAttachmentRelateToOneForCreateInputBuilder> {
  GNewsAttachmentRelateToOneForCreateInput._();

  factory GNewsAttachmentRelateToOneForCreateInput(
      [void Function(GNewsAttachmentRelateToOneForCreateInputBuilder b)
          updates]) = _$GNewsAttachmentRelateToOneForCreateInput;

  GNewsAttachmentCreateInput? get create;
  GNewsAttachmentWhereUniqueInput? get connect;
  static Serializer<GNewsAttachmentRelateToOneForCreateInput> get serializer =>
      _$gNewsAttachmentRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentRelateToManyForCreateInput
    implements
        Built<GNewsAttachmentRelateToManyForCreateInput,
            GNewsAttachmentRelateToManyForCreateInputBuilder> {
  GNewsAttachmentRelateToManyForCreateInput._();

  factory GNewsAttachmentRelateToManyForCreateInput(
      [void Function(GNewsAttachmentRelateToManyForCreateInputBuilder b)
          updates]) = _$GNewsAttachmentRelateToManyForCreateInput;

  BuiltList<GNewsAttachmentCreateInput>? get create;
  BuiltList<GNewsAttachmentWhereUniqueInput>? get connect;
  static Serializer<GNewsAttachmentRelateToManyForCreateInput> get serializer =>
      _$gNewsAttachmentRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GNewsCategoryWhereUniqueInput
    implements
        Built<GNewsCategoryWhereUniqueInput,
            GNewsCategoryWhereUniqueInputBuilder> {
  GNewsCategoryWhereUniqueInput._();

  factory GNewsCategoryWhereUniqueInput(
          [void Function(GNewsCategoryWhereUniqueInputBuilder b) updates]) =
      _$GNewsCategoryWhereUniqueInput;

  String? get id;
  static Serializer<GNewsCategoryWhereUniqueInput> get serializer =>
      _$gNewsCategoryWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryWhereUniqueInput.serializer,
        json,
      );
}

abstract class GNewsCategoryWhereInput
    implements Built<GNewsCategoryWhereInput, GNewsCategoryWhereInputBuilder> {
  GNewsCategoryWhereInput._();

  factory GNewsCategoryWhereInput(
          [void Function(GNewsCategoryWhereInputBuilder b) updates]) =
      _$GNewsCategoryWhereInput;

  BuiltList<GNewsCategoryWhereInput>? get AND;
  BuiltList<GNewsCategoryWhereInput>? get OR;
  BuiltList<GNewsCategoryWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get title;
  GStringFilter? get description;
  static Serializer<GNewsCategoryWhereInput> get serializer =>
      _$gNewsCategoryWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryWhereInput.serializer,
        json,
      );
}

abstract class GNewsCategoryOrderByInput
    implements
        Built<GNewsCategoryOrderByInput, GNewsCategoryOrderByInputBuilder> {
  GNewsCategoryOrderByInput._();

  factory GNewsCategoryOrderByInput(
          [void Function(GNewsCategoryOrderByInputBuilder b) updates]) =
      _$GNewsCategoryOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get title;
  GOrderDirection? get description;
  static Serializer<GNewsCategoryOrderByInput> get serializer =>
      _$gNewsCategoryOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryOrderByInput.serializer,
        json,
      );
}

abstract class GNewsCategoryUpdateInput
    implements
        Built<GNewsCategoryUpdateInput, GNewsCategoryUpdateInputBuilder> {
  GNewsCategoryUpdateInput._();

  factory GNewsCategoryUpdateInput(
          [void Function(GNewsCategoryUpdateInputBuilder b) updates]) =
      _$GNewsCategoryUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  static Serializer<GNewsCategoryUpdateInput> get serializer =>
      _$gNewsCategoryUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryUpdateInput.serializer,
        json,
      );
}

abstract class GNewsCategoryUpdateArgs
    implements Built<GNewsCategoryUpdateArgs, GNewsCategoryUpdateArgsBuilder> {
  GNewsCategoryUpdateArgs._();

  factory GNewsCategoryUpdateArgs(
          [void Function(GNewsCategoryUpdateArgsBuilder b) updates]) =
      _$GNewsCategoryUpdateArgs;

  GNewsCategoryWhereUniqueInput get where;
  GNewsCategoryUpdateInput get data;
  static Serializer<GNewsCategoryUpdateArgs> get serializer =>
      _$gNewsCategoryUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryUpdateArgs.serializer,
        json,
      );
}

abstract class GNewsCategoryCreateInput
    implements
        Built<GNewsCategoryCreateInput, GNewsCategoryCreateInputBuilder> {
  GNewsCategoryCreateInput._();

  factory GNewsCategoryCreateInput(
          [void Function(GNewsCategoryCreateInputBuilder b) updates]) =
      _$GNewsCategoryCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get title;
  String? get description;
  static Serializer<GNewsCategoryCreateInput> get serializer =>
      _$gNewsCategoryCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsCategoryCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsCategoryCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsCategoryCreateInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentWhereUniqueInput
    implements
        Built<GNewsAttachmentWhereUniqueInput,
            GNewsAttachmentWhereUniqueInputBuilder> {
  GNewsAttachmentWhereUniqueInput._();

  factory GNewsAttachmentWhereUniqueInput(
          [void Function(GNewsAttachmentWhereUniqueInputBuilder b) updates]) =
      _$GNewsAttachmentWhereUniqueInput;

  String? get id;
  static Serializer<GNewsAttachmentWhereUniqueInput> get serializer =>
      _$gNewsAttachmentWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentWhereUniqueInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentWhereInput
    implements
        Built<GNewsAttachmentWhereInput, GNewsAttachmentWhereInputBuilder> {
  GNewsAttachmentWhereInput._();

  factory GNewsAttachmentWhereInput(
          [void Function(GNewsAttachmentWhereInputBuilder b) updates]) =
      _$GNewsAttachmentWhereInput;

  BuiltList<GNewsAttachmentWhereInput>? get AND;
  BuiltList<GNewsAttachmentWhereInput>? get OR;
  BuiltList<GNewsAttachmentWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GNewsItemWhereInput? get news;
  static Serializer<GNewsAttachmentWhereInput> get serializer =>
      _$gNewsAttachmentWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentWhereInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentOrderByInput
    implements
        Built<GNewsAttachmentOrderByInput, GNewsAttachmentOrderByInputBuilder> {
  GNewsAttachmentOrderByInput._();

  factory GNewsAttachmentOrderByInput(
          [void Function(GNewsAttachmentOrderByInputBuilder b) updates]) =
      _$GNewsAttachmentOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GNewsAttachmentOrderByInput> get serializer =>
      _$gNewsAttachmentOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentOrderByInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentUpdateInput
    implements
        Built<GNewsAttachmentUpdateInput, GNewsAttachmentUpdateInputBuilder> {
  GNewsAttachmentUpdateInput._();

  factory GNewsAttachmentUpdateInput(
          [void Function(GNewsAttachmentUpdateInputBuilder b) updates]) =
      _$GNewsAttachmentUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  GNewsItemRelateToOneForUpdateInput? get news;
  static Serializer<GNewsAttachmentUpdateInput> get serializer =>
      _$gNewsAttachmentUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentUpdateInput.serializer,
        json,
      );
}

abstract class GNewsItemRelateToOneForUpdateInput
    implements
        Built<GNewsItemRelateToOneForUpdateInput,
            GNewsItemRelateToOneForUpdateInputBuilder> {
  GNewsItemRelateToOneForUpdateInput._();

  factory GNewsItemRelateToOneForUpdateInput(
      [void Function(GNewsItemRelateToOneForUpdateInputBuilder b)
          updates]) = _$GNewsItemRelateToOneForUpdateInput;

  GNewsItemCreateInput? get create;
  GNewsItemWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GNewsItemRelateToOneForUpdateInput> get serializer =>
      _$gNewsItemRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GNewsAttachmentUpdateArgs
    implements
        Built<GNewsAttachmentUpdateArgs, GNewsAttachmentUpdateArgsBuilder> {
  GNewsAttachmentUpdateArgs._();

  factory GNewsAttachmentUpdateArgs(
          [void Function(GNewsAttachmentUpdateArgsBuilder b) updates]) =
      _$GNewsAttachmentUpdateArgs;

  GNewsAttachmentWhereUniqueInput get where;
  GNewsAttachmentUpdateInput get data;
  static Serializer<GNewsAttachmentUpdateArgs> get serializer =>
      _$gNewsAttachmentUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentUpdateArgs.serializer,
        json,
      );
}

abstract class GNewsAttachmentCreateInput
    implements
        Built<GNewsAttachmentCreateInput, GNewsAttachmentCreateInputBuilder> {
  GNewsAttachmentCreateInput._();

  factory GNewsAttachmentCreateInput(
          [void Function(GNewsAttachmentCreateInputBuilder b) updates]) =
      _$GNewsAttachmentCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get file;
  GNewsItemRelateToOneForCreateInput? get news;
  static Serializer<GNewsAttachmentCreateInput> get serializer =>
      _$gNewsAttachmentCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsAttachmentCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsAttachmentCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsAttachmentCreateInput.serializer,
        json,
      );
}

abstract class GNewsItemRelateToOneForCreateInput
    implements
        Built<GNewsItemRelateToOneForCreateInput,
            GNewsItemRelateToOneForCreateInputBuilder> {
  GNewsItemRelateToOneForCreateInput._();

  factory GNewsItemRelateToOneForCreateInput(
      [void Function(GNewsItemRelateToOneForCreateInputBuilder b)
          updates]) = _$GNewsItemRelateToOneForCreateInput;

  GNewsItemCreateInput? get create;
  GNewsItemWhereUniqueInput? get connect;
  static Serializer<GNewsItemRelateToOneForCreateInput> get serializer =>
      _$gNewsItemRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNewsItemRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsItemRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNewsItemRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GKeywordWhereUniqueInput
    implements
        Built<GKeywordWhereUniqueInput, GKeywordWhereUniqueInputBuilder> {
  GKeywordWhereUniqueInput._();

  factory GKeywordWhereUniqueInput(
          [void Function(GKeywordWhereUniqueInputBuilder b) updates]) =
      _$GKeywordWhereUniqueInput;

  String? get id;
  static Serializer<GKeywordWhereUniqueInput> get serializer =>
      _$gKeywordWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordWhereUniqueInput.serializer,
        json,
      );
}

abstract class GKeywordWhereInput
    implements Built<GKeywordWhereInput, GKeywordWhereInputBuilder> {
  GKeywordWhereInput._();

  factory GKeywordWhereInput(
          [void Function(GKeywordWhereInputBuilder b) updates]) =
      _$GKeywordWhereInput;

  BuiltList<GKeywordWhereInput>? get AND;
  BuiltList<GKeywordWhereInput>? get OR;
  BuiltList<GKeywordWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  static Serializer<GKeywordWhereInput> get serializer =>
      _$gKeywordWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordWhereInput.serializer,
        json,
      );
}

abstract class GKeywordOrderByInput
    implements Built<GKeywordOrderByInput, GKeywordOrderByInputBuilder> {
  GKeywordOrderByInput._();

  factory GKeywordOrderByInput(
          [void Function(GKeywordOrderByInputBuilder b) updates]) =
      _$GKeywordOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  static Serializer<GKeywordOrderByInput> get serializer =>
      _$gKeywordOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordOrderByInput.serializer,
        json,
      );
}

abstract class GKeywordUpdateInput
    implements Built<GKeywordUpdateInput, GKeywordUpdateInputBuilder> {
  GKeywordUpdateInput._();

  factory GKeywordUpdateInput(
          [void Function(GKeywordUpdateInputBuilder b) updates]) =
      _$GKeywordUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  static Serializer<GKeywordUpdateInput> get serializer =>
      _$gKeywordUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordUpdateInput.serializer,
        json,
      );
}

abstract class GKeywordUpdateArgs
    implements Built<GKeywordUpdateArgs, GKeywordUpdateArgsBuilder> {
  GKeywordUpdateArgs._();

  factory GKeywordUpdateArgs(
          [void Function(GKeywordUpdateArgsBuilder b) updates]) =
      _$GKeywordUpdateArgs;

  GKeywordWhereUniqueInput get where;
  GKeywordUpdateInput get data;
  static Serializer<GKeywordUpdateArgs> get serializer =>
      _$gKeywordUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordUpdateArgs.serializer,
        json,
      );
}

abstract class GKeywordCreateInput
    implements Built<GKeywordCreateInput, GKeywordCreateInputBuilder> {
  GKeywordCreateInput._();

  factory GKeywordCreateInput(
          [void Function(GKeywordCreateInputBuilder b) updates]) =
      _$GKeywordCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  static Serializer<GKeywordCreateInput> get serializer =>
      _$gKeywordCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GKeywordCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GKeywordCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GKeywordCreateInput.serializer,
        json,
      );
}

abstract class GCouponWhereUniqueInput
    implements Built<GCouponWhereUniqueInput, GCouponWhereUniqueInputBuilder> {
  GCouponWhereUniqueInput._();

  factory GCouponWhereUniqueInput(
          [void Function(GCouponWhereUniqueInputBuilder b) updates]) =
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

  factory GCouponWhereInput(
          [void Function(GCouponWhereInputBuilder b) updates]) =
      _$GCouponWhereInput;

  BuiltList<GCouponWhereInput>? get AND;
  BuiltList<GCouponWhereInput>? get OR;
  BuiltList<GCouponWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get code;
  GBooleanFilter? get publiclyVisible;
  GStringFilter? get description;
  GDateTimeNullableFilter? get startFrom;
  GDateTimeNullableFilter? get expireBy;
  GVehicleManyRelationFilter? get vehicles;
  GStringNullableFilter? get vehiclesCondition;
  GProductManyRelationFilter? get products;
  GStringNullableFilter? get productsCondition;
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
          [void Function(GVehicleManyRelationFilterBuilder b) updates]) =
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

abstract class GProductManyRelationFilter
    implements
        Built<GProductManyRelationFilter, GProductManyRelationFilterBuilder> {
  GProductManyRelationFilter._();

  factory GProductManyRelationFilter(
          [void Function(GProductManyRelationFilterBuilder b) updates]) =
      _$GProductManyRelationFilter;

  GProductWhereInput? get every;
  GProductWhereInput? get some;
  GProductWhereInput? get none;
  static Serializer<GProductManyRelationFilter> get serializer =>
      _$gProductManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductManyRelationFilter.serializer,
        json,
      );
}

abstract class GCouponOrderByInput
    implements Built<GCouponOrderByInput, GCouponOrderByInputBuilder> {
  GCouponOrderByInput._();

  factory GCouponOrderByInput(
          [void Function(GCouponOrderByInputBuilder b) updates]) =
      _$GCouponOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get code;
  GOrderDirection? get publiclyVisible;
  GOrderDirection? get description;
  GOrderDirection? get startFrom;
  GOrderDirection? get expireBy;
  GOrderDirection? get vehiclesCondition;
  GOrderDirection? get productsCondition;
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

  factory GCouponUpdateInput(
          [void Function(GCouponUpdateInputBuilder b) updates]) =
      _$GCouponUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  bool? get publiclyVisible;
  String? get description;
  _i4.JsonObject? get logic;
  GDateTime? get startFrom;
  GDateTime? get expireBy;
  GVehicleRelateToManyForUpdateInput? get vehicles;
  String? get vehiclesCondition;
  GProductRelateToManyForUpdateInput? get products;
  String? get productsCondition;
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
      [void Function(GVehicleRelateToManyForUpdateInputBuilder b)
          updates]) = _$GVehicleRelateToManyForUpdateInput;

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

abstract class GProductRelateToManyForUpdateInput
    implements
        Built<GProductRelateToManyForUpdateInput,
            GProductRelateToManyForUpdateInputBuilder> {
  GProductRelateToManyForUpdateInput._();

  factory GProductRelateToManyForUpdateInput(
      [void Function(GProductRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductRelateToManyForUpdateInput;

  BuiltList<GProductWhereUniqueInput>? get disconnect;
  BuiltList<GProductWhereUniqueInput>? get set;
  BuiltList<GProductCreateInput>? get create;
  BuiltList<GProductWhereUniqueInput>? get connect;
  static Serializer<GProductRelateToManyForUpdateInput> get serializer =>
      _$gProductRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GCouponUpdateArgs
    implements Built<GCouponUpdateArgs, GCouponUpdateArgsBuilder> {
  GCouponUpdateArgs._();

  factory GCouponUpdateArgs(
          [void Function(GCouponUpdateArgsBuilder b) updates]) =
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

  factory GCouponCreateInput(
          [void Function(GCouponCreateInputBuilder b) updates]) =
      _$GCouponCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get code;
  bool? get publiclyVisible;
  String? get description;
  _i4.JsonObject? get logic;
  GDateTime? get startFrom;
  GDateTime? get expireBy;
  GVehicleRelateToManyForCreateInput? get vehicles;
  String? get vehiclesCondition;
  GProductRelateToManyForCreateInput? get products;
  String? get productsCondition;
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
      [void Function(GVehicleRelateToManyForCreateInputBuilder b)
          updates]) = _$GVehicleRelateToManyForCreateInput;

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

abstract class GProductRelateToManyForCreateInput
    implements
        Built<GProductRelateToManyForCreateInput,
            GProductRelateToManyForCreateInputBuilder> {
  GProductRelateToManyForCreateInput._();

  factory GProductRelateToManyForCreateInput(
      [void Function(GProductRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductRelateToManyForCreateInput;

  BuiltList<GProductCreateInput>? get create;
  BuiltList<GProductWhereUniqueInput>? get connect;
  static Serializer<GProductRelateToManyForCreateInput> get serializer =>
      _$gProductRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GOfferWhereUniqueInput
    implements Built<GOfferWhereUniqueInput, GOfferWhereUniqueInputBuilder> {
  GOfferWhereUniqueInput._();

  factory GOfferWhereUniqueInput(
          [void Function(GOfferWhereUniqueInputBuilder b) updates]) =
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

  factory GOfferWhereInput([void Function(GOfferWhereInputBuilder b) updates]) =
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
  GProductManyRelationFilter? get products;
  GStringNullableFilter? get productsCondition;
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

  factory GOfferOrderByInput(
          [void Function(GOfferOrderByInputBuilder b) updates]) =
      _$GOfferOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get code;
  GOrderDirection? get description;
  GOrderDirection? get startFrom;
  GOrderDirection? get expireBy;
  GOrderDirection? get vehiclesCondition;
  GOrderDirection? get productsCondition;
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

  factory GOfferUpdateInput(
          [void Function(GOfferUpdateInputBuilder b) updates]) =
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
  GProductRelateToManyForUpdateInput? get products;
  String? get productsCondition;
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

  factory GOfferUpdateArgs([void Function(GOfferUpdateArgsBuilder b) updates]) =
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

  factory GOfferCreateInput(
          [void Function(GOfferCreateInputBuilder b) updates]) =
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
  GProductRelateToManyForCreateInput? get products;
  String? get productsCondition;
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
          [void Function(GFeedbackWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GFeedbackWhereInputBuilder b) updates]) =
      _$GFeedbackWhereInput;

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
      [void Function(GFeedbackAttachmentManyRelationFilterBuilder b)
          updates]) = _$GFeedbackAttachmentManyRelationFilter;

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
          [void Function(GFeedbackOrderByInputBuilder b) updates]) =
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
          [void Function(GFeedbackUpdateInputBuilder b) updates]) =
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
      [void Function(GFeedbackAttachmentRelateToManyForUpdateInputBuilder b)
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
          [void Function(GFeedbackUpdateArgsBuilder b) updates]) =
      _$GFeedbackUpdateArgs;

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
          [void Function(GFeedbackCreateInputBuilder b) updates]) =
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
      [void Function(GFeedbackAttachmentRelateToManyForCreateInputBuilder b)
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
      [void Function(GFeedbackAttachmentWhereUniqueInputBuilder b)
          updates]) = _$GFeedbackAttachmentWhereUniqueInput;

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
          [void Function(GFeedbackAttachmentWhereInputBuilder b) updates]) =
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
          [void Function(GFeedbackAttachmentOrderByInputBuilder b) updates]) =
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
          [void Function(GFeedbackAttachmentUpdateInputBuilder b) updates]) =
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
      [void Function(GFeedbackRelateToOneForUpdateInputBuilder b)
          updates]) = _$GFeedbackRelateToOneForUpdateInput;

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
          [void Function(GFeedbackAttachmentUpdateArgsBuilder b) updates]) =
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
          [void Function(GFeedbackAttachmentCreateInputBuilder b) updates]) =
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
      [void Function(GFeedbackRelateToOneForCreateInputBuilder b)
          updates]) = _$GFeedbackRelateToOneForCreateInput;

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
          [void Function(GReportWhereUniqueInputBuilder b) updates]) =
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

  factory GReportWhereInput(
          [void Function(GReportWhereInputBuilder b) updates]) =
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
      [void Function(GReportAttachmentManyRelationFilterBuilder b)
          updates]) = _$GReportAttachmentManyRelationFilter;

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
          [void Function(GReportOrderByInputBuilder b) updates]) =
      _$GReportOrderByInput;

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

  factory GReportUpdateInput(
          [void Function(GReportUpdateInputBuilder b) updates]) =
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
      [void Function(GReportAttachmentRelateToManyForUpdateInputBuilder b)
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

  factory GReportUpdateArgs(
          [void Function(GReportUpdateArgsBuilder b) updates]) =
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

  factory GReportCreateInput(
          [void Function(GReportCreateInputBuilder b) updates]) =
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
      [void Function(GReportAttachmentRelateToManyForCreateInputBuilder b)
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
          [void Function(GReportAttachmentWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GReportAttachmentWhereInputBuilder b) updates]) =
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
          [void Function(GReportAttachmentOrderByInputBuilder b) updates]) =
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
          [void Function(GReportAttachmentUpdateInputBuilder b) updates]) =
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
          [void Function(GReportRelateToOneForUpdateInputBuilder b) updates]) =
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
          [void Function(GReportAttachmentUpdateArgsBuilder b) updates]) =
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
          [void Function(GReportAttachmentCreateInputBuilder b) updates]) =
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
          [void Function(GReportRelateToOneForCreateInputBuilder b) updates]) =
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

abstract class GProductTypeWhereUniqueInput
    implements
        Built<GProductTypeWhereUniqueInput,
            GProductTypeWhereUniqueInputBuilder> {
  GProductTypeWhereUniqueInput._();

  factory GProductTypeWhereUniqueInput(
          [void Function(GProductTypeWhereUniqueInputBuilder b) updates]) =
      _$GProductTypeWhereUniqueInput;

  String? get id;
  static Serializer<GProductTypeWhereUniqueInput> get serializer =>
      _$gProductTypeWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductTypeWhereInput
    implements Built<GProductTypeWhereInput, GProductTypeWhereInputBuilder> {
  GProductTypeWhereInput._();

  factory GProductTypeWhereInput(
          [void Function(GProductTypeWhereInputBuilder b) updates]) =
      _$GProductTypeWhereInput;

  BuiltList<GProductTypeWhereInput>? get AND;
  BuiltList<GProductTypeWhereInput>? get OR;
  BuiltList<GProductTypeWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  static Serializer<GProductTypeWhereInput> get serializer =>
      _$gProductTypeWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeWhereInput.serializer,
        json,
      );
}

abstract class GProductTypeOrderByInput
    implements
        Built<GProductTypeOrderByInput, GProductTypeOrderByInputBuilder> {
  GProductTypeOrderByInput._();

  factory GProductTypeOrderByInput(
          [void Function(GProductTypeOrderByInputBuilder b) updates]) =
      _$GProductTypeOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  static Serializer<GProductTypeOrderByInput> get serializer =>
      _$gProductTypeOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeOrderByInput.serializer,
        json,
      );
}

abstract class GProductTypeUpdateInput
    implements Built<GProductTypeUpdateInput, GProductTypeUpdateInputBuilder> {
  GProductTypeUpdateInput._();

  factory GProductTypeUpdateInput(
          [void Function(GProductTypeUpdateInputBuilder b) updates]) =
      _$GProductTypeUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GProductTypeUpdateInput> get serializer =>
      _$gProductTypeUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeUpdateInput.serializer,
        json,
      );
}

abstract class GProductTypeUpdateArgs
    implements Built<GProductTypeUpdateArgs, GProductTypeUpdateArgsBuilder> {
  GProductTypeUpdateArgs._();

  factory GProductTypeUpdateArgs(
          [void Function(GProductTypeUpdateArgsBuilder b) updates]) =
      _$GProductTypeUpdateArgs;

  GProductTypeWhereUniqueInput get where;
  GProductTypeUpdateInput get data;
  static Serializer<GProductTypeUpdateArgs> get serializer =>
      _$gProductTypeUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeUpdateArgs.serializer,
        json,
      );
}

abstract class GProductTypeCreateInput
    implements Built<GProductTypeCreateInput, GProductTypeCreateInputBuilder> {
  GProductTypeCreateInput._();

  factory GProductTypeCreateInput(
          [void Function(GProductTypeCreateInputBuilder b) updates]) =
      _$GProductTypeCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  static Serializer<GProductTypeCreateInput> get serializer =>
      _$gProductTypeCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeCreateInput.serializer,
        json,
      );
}

abstract class GProductWhereUniqueInput
    implements
        Built<GProductWhereUniqueInput, GProductWhereUniqueInputBuilder> {
  GProductWhereUniqueInput._();

  factory GProductWhereUniqueInput(
          [void Function(GProductWhereUniqueInputBuilder b) updates]) =
      _$GProductWhereUniqueInput;

  String? get id;
  static Serializer<GProductWhereUniqueInput> get serializer =>
      _$gProductWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductWhereInput
    implements Built<GProductWhereInput, GProductWhereInputBuilder> {
  GProductWhereInput._();

  factory GProductWhereInput(
          [void Function(GProductWhereInputBuilder b) updates]) =
      _$GProductWhereInput;

  BuiltList<GProductWhereInput>? get AND;
  BuiltList<GProductWhereInput>? get OR;
  BuiltList<GProductWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get description;
  GStringFilter? get longDescription;
  GProductTypeWhereInput? get type;
  GBrandWhereInput? get brand;
  GProductVariantManyRelationFilter? get variants;
  GProductSpecificationManyRelationFilter? get specifications;
  static Serializer<GProductWhereInput> get serializer =>
      _$gProductWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductWhereInput.serializer,
        json,
      );
}

abstract class GProductVariantManyRelationFilter
    implements
        Built<GProductVariantManyRelationFilter,
            GProductVariantManyRelationFilterBuilder> {
  GProductVariantManyRelationFilter._();

  factory GProductVariantManyRelationFilter(
          [void Function(GProductVariantManyRelationFilterBuilder b) updates]) =
      _$GProductVariantManyRelationFilter;

  GProductVariantWhereInput? get every;
  GProductVariantWhereInput? get some;
  GProductVariantWhereInput? get none;
  static Serializer<GProductVariantManyRelationFilter> get serializer =>
      _$gProductVariantManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantManyRelationFilter.serializer,
        json,
      );
}

abstract class GProductSpecificationManyRelationFilter
    implements
        Built<GProductSpecificationManyRelationFilter,
            GProductSpecificationManyRelationFilterBuilder> {
  GProductSpecificationManyRelationFilter._();

  factory GProductSpecificationManyRelationFilter(
      [void Function(GProductSpecificationManyRelationFilterBuilder b)
          updates]) = _$GProductSpecificationManyRelationFilter;

  GProductSpecificationWhereInput? get every;
  GProductSpecificationWhereInput? get some;
  GProductSpecificationWhereInput? get none;
  static Serializer<GProductSpecificationManyRelationFilter> get serializer =>
      _$gProductSpecificationManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationManyRelationFilter.serializer,
        json,
      );
}

abstract class GProductOrderByInput
    implements Built<GProductOrderByInput, GProductOrderByInputBuilder> {
  GProductOrderByInput._();

  factory GProductOrderByInput(
          [void Function(GProductOrderByInputBuilder b) updates]) =
      _$GProductOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get description;
  GOrderDirection? get longDescription;
  static Serializer<GProductOrderByInput> get serializer =>
      _$gProductOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductOrderByInput.serializer,
        json,
      );
}

abstract class GProductUpdateInput
    implements Built<GProductUpdateInput, GProductUpdateInputBuilder> {
  GProductUpdateInput._();

  factory GProductUpdateInput(
          [void Function(GProductUpdateInputBuilder b) updates]) =
      _$GProductUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  String? get longDescription;
  GProductTypeRelateToOneForUpdateInput? get type;
  GBrandRelateToOneForUpdateInput? get brand;
  GProductVariantRelateToManyForUpdateInput? get variants;
  GProductSpecificationRelateToManyForUpdateInput? get specifications;
  static Serializer<GProductUpdateInput> get serializer =>
      _$gProductUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductUpdateInput.serializer,
        json,
      );
}

abstract class GProductTypeRelateToOneForUpdateInput
    implements
        Built<GProductTypeRelateToOneForUpdateInput,
            GProductTypeRelateToOneForUpdateInputBuilder> {
  GProductTypeRelateToOneForUpdateInput._();

  factory GProductTypeRelateToOneForUpdateInput(
      [void Function(GProductTypeRelateToOneForUpdateInputBuilder b)
          updates]) = _$GProductTypeRelateToOneForUpdateInput;

  GProductTypeCreateInput? get create;
  GProductTypeWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GProductTypeRelateToOneForUpdateInput> get serializer =>
      _$gProductTypeRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GProductVariantRelateToManyForUpdateInput
    implements
        Built<GProductVariantRelateToManyForUpdateInput,
            GProductVariantRelateToManyForUpdateInputBuilder> {
  GProductVariantRelateToManyForUpdateInput._();

  factory GProductVariantRelateToManyForUpdateInput(
      [void Function(GProductVariantRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductVariantRelateToManyForUpdateInput;

  BuiltList<GProductVariantWhereUniqueInput>? get disconnect;
  BuiltList<GProductVariantWhereUniqueInput>? get set;
  BuiltList<GProductVariantCreateInput>? get create;
  BuiltList<GProductVariantWhereUniqueInput>? get connect;
  static Serializer<GProductVariantRelateToManyForUpdateInput> get serializer =>
      _$gProductVariantRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GProductSpecificationRelateToManyForUpdateInput
    implements
        Built<GProductSpecificationRelateToManyForUpdateInput,
            GProductSpecificationRelateToManyForUpdateInputBuilder> {
  GProductSpecificationRelateToManyForUpdateInput._();

  factory GProductSpecificationRelateToManyForUpdateInput(
      [void Function(GProductSpecificationRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductSpecificationRelateToManyForUpdateInput;

  BuiltList<GProductSpecificationWhereUniqueInput>? get disconnect;
  BuiltList<GProductSpecificationWhereUniqueInput>? get set;
  BuiltList<GProductSpecificationCreateInput>? get create;
  BuiltList<GProductSpecificationWhereUniqueInput>? get connect;
  static Serializer<GProductSpecificationRelateToManyForUpdateInput>
      get serializer =>
          _$gProductSpecificationRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GProductUpdateArgs
    implements Built<GProductUpdateArgs, GProductUpdateArgsBuilder> {
  GProductUpdateArgs._();

  factory GProductUpdateArgs(
          [void Function(GProductUpdateArgsBuilder b) updates]) =
      _$GProductUpdateArgs;

  GProductWhereUniqueInput get where;
  GProductUpdateInput get data;
  static Serializer<GProductUpdateArgs> get serializer =>
      _$gProductUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductUpdateArgs.serializer,
        json,
      );
}

abstract class GProductCreateInput
    implements Built<GProductCreateInput, GProductCreateInputBuilder> {
  GProductCreateInput._();

  factory GProductCreateInput(
          [void Function(GProductCreateInputBuilder b) updates]) =
      _$GProductCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get description;
  String? get longDescription;
  GProductTypeRelateToOneForCreateInput? get type;
  GBrandRelateToOneForCreateInput? get brand;
  GProductVariantRelateToManyForCreateInput? get variants;
  GProductSpecificationRelateToManyForCreateInput? get specifications;
  static Serializer<GProductCreateInput> get serializer =>
      _$gProductCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductCreateInput.serializer,
        json,
      );
}

abstract class GProductTypeRelateToOneForCreateInput
    implements
        Built<GProductTypeRelateToOneForCreateInput,
            GProductTypeRelateToOneForCreateInputBuilder> {
  GProductTypeRelateToOneForCreateInput._();

  factory GProductTypeRelateToOneForCreateInput(
      [void Function(GProductTypeRelateToOneForCreateInputBuilder b)
          updates]) = _$GProductTypeRelateToOneForCreateInput;

  GProductTypeCreateInput? get create;
  GProductTypeWhereUniqueInput? get connect;
  static Serializer<GProductTypeRelateToOneForCreateInput> get serializer =>
      _$gProductTypeRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductTypeRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductTypeRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductTypeRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GProductVariantRelateToManyForCreateInput
    implements
        Built<GProductVariantRelateToManyForCreateInput,
            GProductVariantRelateToManyForCreateInputBuilder> {
  GProductVariantRelateToManyForCreateInput._();

  factory GProductVariantRelateToManyForCreateInput(
      [void Function(GProductVariantRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductVariantRelateToManyForCreateInput;

  BuiltList<GProductVariantCreateInput>? get create;
  BuiltList<GProductVariantWhereUniqueInput>? get connect;
  static Serializer<GProductVariantRelateToManyForCreateInput> get serializer =>
      _$gProductVariantRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GProductSpecificationRelateToManyForCreateInput
    implements
        Built<GProductSpecificationRelateToManyForCreateInput,
            GProductSpecificationRelateToManyForCreateInputBuilder> {
  GProductSpecificationRelateToManyForCreateInput._();

  factory GProductSpecificationRelateToManyForCreateInput(
      [void Function(GProductSpecificationRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductSpecificationRelateToManyForCreateInput;

  BuiltList<GProductSpecificationCreateInput>? get create;
  BuiltList<GProductSpecificationWhereUniqueInput>? get connect;
  static Serializer<GProductSpecificationRelateToManyForCreateInput>
      get serializer =>
          _$gProductSpecificationRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GProductSpecificationWhereUniqueInput
    implements
        Built<GProductSpecificationWhereUniqueInput,
            GProductSpecificationWhereUniqueInputBuilder> {
  GProductSpecificationWhereUniqueInput._();

  factory GProductSpecificationWhereUniqueInput(
      [void Function(GProductSpecificationWhereUniqueInputBuilder b)
          updates]) = _$GProductSpecificationWhereUniqueInput;

  String? get id;
  static Serializer<GProductSpecificationWhereUniqueInput> get serializer =>
      _$gProductSpecificationWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductSpecificationWhereInput
    implements
        Built<GProductSpecificationWhereInput,
            GProductSpecificationWhereInputBuilder> {
  GProductSpecificationWhereInput._();

  factory GProductSpecificationWhereInput(
          [void Function(GProductSpecificationWhereInputBuilder b) updates]) =
      _$GProductSpecificationWhereInput;

  BuiltList<GProductSpecificationWhereInput>? get AND;
  BuiltList<GProductSpecificationWhereInput>? get OR;
  BuiltList<GProductSpecificationWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GSpecificationWhereInput? get specification;
  GStringFilter? get type;
  GIntNullableFilter? get intValue;
  GStringFilter? get stringValue;
  GSpecificationCategoryWhereInput? get category;
  GProductWhereInput? get product;
  GBooleanFilter? get isKeyFeature;
  static Serializer<GProductSpecificationWhereInput> get serializer =>
      _$gProductSpecificationWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationWhereInput.serializer,
        json,
      );
}

abstract class GProductSpecificationOrderByInput
    implements
        Built<GProductSpecificationOrderByInput,
            GProductSpecificationOrderByInputBuilder> {
  GProductSpecificationOrderByInput._();

  factory GProductSpecificationOrderByInput(
          [void Function(GProductSpecificationOrderByInputBuilder b) updates]) =
      _$GProductSpecificationOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get intValue;
  GOrderDirection? get stringValue;
  GOrderDirection? get isKeyFeature;
  static Serializer<GProductSpecificationOrderByInput> get serializer =>
      _$gProductSpecificationOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationOrderByInput.serializer,
        json,
      );
}

abstract class GProductSpecificationUpdateInput
    implements
        Built<GProductSpecificationUpdateInput,
            GProductSpecificationUpdateInputBuilder> {
  GProductSpecificationUpdateInput._();

  factory GProductSpecificationUpdateInput(
          [void Function(GProductSpecificationUpdateInputBuilder b) updates]) =
      _$GProductSpecificationUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GSpecificationRelateToOneForUpdateInput? get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GSpecificationCategoryRelateToOneForUpdateInput? get category;
  GProductRelateToOneForUpdateInput? get product;
  bool? get isKeyFeature;
  static Serializer<GProductSpecificationUpdateInput> get serializer =>
      _$gProductSpecificationUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationUpdateInput.serializer,
        json,
      );
}

abstract class GProductSpecificationUpdateArgs
    implements
        Built<GProductSpecificationUpdateArgs,
            GProductSpecificationUpdateArgsBuilder> {
  GProductSpecificationUpdateArgs._();

  factory GProductSpecificationUpdateArgs(
          [void Function(GProductSpecificationUpdateArgsBuilder b) updates]) =
      _$GProductSpecificationUpdateArgs;

  GProductSpecificationWhereUniqueInput get where;
  GProductSpecificationUpdateInput get data;
  static Serializer<GProductSpecificationUpdateArgs> get serializer =>
      _$gProductSpecificationUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationUpdateArgs.serializer,
        json,
      );
}

abstract class GProductSpecificationCreateInput
    implements
        Built<GProductSpecificationCreateInput,
            GProductSpecificationCreateInputBuilder> {
  GProductSpecificationCreateInput._();

  factory GProductSpecificationCreateInput(
          [void Function(GProductSpecificationCreateInputBuilder b) updates]) =
      _$GProductSpecificationCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GSpecificationRelateToOneForCreateInput? get specification;
  String? get type;
  int? get intValue;
  String? get stringValue;
  GSpecificationCategoryRelateToOneForCreateInput? get category;
  GProductRelateToOneForCreateInput? get product;
  bool? get isKeyFeature;
  static Serializer<GProductSpecificationCreateInput> get serializer =>
      _$gProductSpecificationCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductSpecificationCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductSpecificationCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductSpecificationCreateInput.serializer,
        json,
      );
}

abstract class GProductVariantWhereUniqueInput
    implements
        Built<GProductVariantWhereUniqueInput,
            GProductVariantWhereUniqueInputBuilder> {
  GProductVariantWhereUniqueInput._();

  factory GProductVariantWhereUniqueInput(
          [void Function(GProductVariantWhereUniqueInputBuilder b) updates]) =
      _$GProductVariantWhereUniqueInput;

  String? get id;
  String? get key;
  static Serializer<GProductVariantWhereUniqueInput> get serializer =>
      _$gProductVariantWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductVariantWhereInput
    implements
        Built<GProductVariantWhereInput, GProductVariantWhereInputBuilder> {
  GProductVariantWhereInput._();

  factory GProductVariantWhereInput(
          [void Function(GProductVariantWhereInputBuilder b) updates]) =
      _$GProductVariantWhereInput;

  BuiltList<GProductVariantWhereInput>? get AND;
  BuiltList<GProductVariantWhereInput>? get OR;
  BuiltList<GProductVariantWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get key;
  GProductWhereInput? get product;
  GIntNullableFilter? get index;
  @BuiltValueField(wireName: 'default')
  GBooleanFilter? get Gdefault;
  GProductSpecificationManyRelationFilter? get specifications;
  GTagManyRelationFilter? get tags;
  GPriceManyRelationFilter? get prices;
  GProductImageManyRelationFilter? get images;
  GProductVideoManyRelationFilter? get videos;
  GProductGalleryItemManyRelationFilter? get gallery;
  GProductReelManyRelationFilter? get reels;
  GStringFilter? get gtin;
  GBooleanFilter? get disabled;
  static Serializer<GProductVariantWhereInput> get serializer =>
      _$gProductVariantWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantWhereInput.serializer,
        json,
      );
}

abstract class GProductImageManyRelationFilter
    implements
        Built<GProductImageManyRelationFilter,
            GProductImageManyRelationFilterBuilder> {
  GProductImageManyRelationFilter._();

  factory GProductImageManyRelationFilter(
          [void Function(GProductImageManyRelationFilterBuilder b) updates]) =
      _$GProductImageManyRelationFilter;

  GProductImageWhereInput? get every;
  GProductImageWhereInput? get some;
  GProductImageWhereInput? get none;
  static Serializer<GProductImageManyRelationFilter> get serializer =>
      _$gProductImageManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageManyRelationFilter.serializer,
        json,
      );
}

abstract class GProductVideoManyRelationFilter
    implements
        Built<GProductVideoManyRelationFilter,
            GProductVideoManyRelationFilterBuilder> {
  GProductVideoManyRelationFilter._();

  factory GProductVideoManyRelationFilter(
          [void Function(GProductVideoManyRelationFilterBuilder b) updates]) =
      _$GProductVideoManyRelationFilter;

  GProductVideoWhereInput? get every;
  GProductVideoWhereInput? get some;
  GProductVideoWhereInput? get none;
  static Serializer<GProductVideoManyRelationFilter> get serializer =>
      _$gProductVideoManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoManyRelationFilter.serializer,
        json,
      );
}

abstract class GProductGalleryItemManyRelationFilter
    implements
        Built<GProductGalleryItemManyRelationFilter,
            GProductGalleryItemManyRelationFilterBuilder> {
  GProductGalleryItemManyRelationFilter._();

  factory GProductGalleryItemManyRelationFilter(
      [void Function(GProductGalleryItemManyRelationFilterBuilder b)
          updates]) = _$GProductGalleryItemManyRelationFilter;

  GProductGalleryItemWhereInput? get every;
  GProductGalleryItemWhereInput? get some;
  GProductGalleryItemWhereInput? get none;
  static Serializer<GProductGalleryItemManyRelationFilter> get serializer =>
      _$gProductGalleryItemManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemManyRelationFilter? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemManyRelationFilter.serializer,
        json,
      );
}

abstract class GProductReelManyRelationFilter
    implements
        Built<GProductReelManyRelationFilter,
            GProductReelManyRelationFilterBuilder> {
  GProductReelManyRelationFilter._();

  factory GProductReelManyRelationFilter(
          [void Function(GProductReelManyRelationFilterBuilder b) updates]) =
      _$GProductReelManyRelationFilter;

  GProductReelWhereInput? get every;
  GProductReelWhereInput? get some;
  GProductReelWhereInput? get none;
  static Serializer<GProductReelManyRelationFilter> get serializer =>
      _$gProductReelManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelManyRelationFilter.serializer,
        json,
      );
}

abstract class GProductVariantOrderByInput
    implements
        Built<GProductVariantOrderByInput, GProductVariantOrderByInputBuilder> {
  GProductVariantOrderByInput._();

  factory GProductVariantOrderByInput(
          [void Function(GProductVariantOrderByInputBuilder b) updates]) =
      _$GProductVariantOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get key;
  GOrderDirection? get index;
  @BuiltValueField(wireName: 'default')
  GOrderDirection? get Gdefault;
  GOrderDirection? get gtin;
  GOrderDirection? get disabled;
  static Serializer<GProductVariantOrderByInput> get serializer =>
      _$gProductVariantOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantOrderByInput.serializer,
        json,
      );
}

abstract class GProductVariantUpdateInput
    implements
        Built<GProductVariantUpdateInput, GProductVariantUpdateInputBuilder> {
  GProductVariantUpdateInput._();

  factory GProductVariantUpdateInput(
          [void Function(GProductVariantUpdateInputBuilder b) updates]) =
      _$GProductVariantUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get key;
  GProductRelateToOneForUpdateInput? get product;
  int? get index;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GProductSpecificationRelateToManyForUpdateInput? get specifications;
  GTagRelateToManyForUpdateInput? get tags;
  GPriceRelateToManyForUpdateInput? get prices;
  GProductImageRelateToManyForUpdateInput? get images;
  GProductVideoRelateToManyForUpdateInput? get videos;
  GProductGalleryItemRelateToManyForUpdateInput? get gallery;
  GProductReelRelateToManyForUpdateInput? get reels;
  String? get gtin;
  bool? get disabled;
  static Serializer<GProductVariantUpdateInput> get serializer =>
      _$gProductVariantUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantUpdateInput.serializer,
        json,
      );
}

abstract class GProductImageRelateToManyForUpdateInput
    implements
        Built<GProductImageRelateToManyForUpdateInput,
            GProductImageRelateToManyForUpdateInputBuilder> {
  GProductImageRelateToManyForUpdateInput._();

  factory GProductImageRelateToManyForUpdateInput(
      [void Function(GProductImageRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductImageRelateToManyForUpdateInput;

  BuiltList<GProductImageWhereUniqueInput>? get disconnect;
  BuiltList<GProductImageWhereUniqueInput>? get set;
  BuiltList<GProductImageCreateInput>? get create;
  BuiltList<GProductImageWhereUniqueInput>? get connect;
  static Serializer<GProductImageRelateToManyForUpdateInput> get serializer =>
      _$gProductImageRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GProductVideoRelateToManyForUpdateInput
    implements
        Built<GProductVideoRelateToManyForUpdateInput,
            GProductVideoRelateToManyForUpdateInputBuilder> {
  GProductVideoRelateToManyForUpdateInput._();

  factory GProductVideoRelateToManyForUpdateInput(
      [void Function(GProductVideoRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductVideoRelateToManyForUpdateInput;

  BuiltList<GProductVideoWhereUniqueInput>? get disconnect;
  BuiltList<GProductVideoWhereUniqueInput>? get set;
  BuiltList<GProductVideoCreateInput>? get create;
  BuiltList<GProductVideoWhereUniqueInput>? get connect;
  static Serializer<GProductVideoRelateToManyForUpdateInput> get serializer =>
      _$gProductVideoRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemRelateToManyForUpdateInput
    implements
        Built<GProductGalleryItemRelateToManyForUpdateInput,
            GProductGalleryItemRelateToManyForUpdateInputBuilder> {
  GProductGalleryItemRelateToManyForUpdateInput._();

  factory GProductGalleryItemRelateToManyForUpdateInput(
      [void Function(GProductGalleryItemRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductGalleryItemRelateToManyForUpdateInput;

  BuiltList<GProductGalleryItemWhereUniqueInput>? get disconnect;
  BuiltList<GProductGalleryItemWhereUniqueInput>? get set;
  BuiltList<GProductGalleryItemCreateInput>? get create;
  BuiltList<GProductGalleryItemWhereUniqueInput>? get connect;
  static Serializer<GProductGalleryItemRelateToManyForUpdateInput>
      get serializer =>
          _$gProductGalleryItemRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GProductReelRelateToManyForUpdateInput
    implements
        Built<GProductReelRelateToManyForUpdateInput,
            GProductReelRelateToManyForUpdateInputBuilder> {
  GProductReelRelateToManyForUpdateInput._();

  factory GProductReelRelateToManyForUpdateInput(
      [void Function(GProductReelRelateToManyForUpdateInputBuilder b)
          updates]) = _$GProductReelRelateToManyForUpdateInput;

  BuiltList<GProductReelWhereUniqueInput>? get disconnect;
  BuiltList<GProductReelWhereUniqueInput>? get set;
  BuiltList<GProductReelCreateInput>? get create;
  BuiltList<GProductReelWhereUniqueInput>? get connect;
  static Serializer<GProductReelRelateToManyForUpdateInput> get serializer =>
      _$gProductReelRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GProductVariantUpdateArgs
    implements
        Built<GProductVariantUpdateArgs, GProductVariantUpdateArgsBuilder> {
  GProductVariantUpdateArgs._();

  factory GProductVariantUpdateArgs(
          [void Function(GProductVariantUpdateArgsBuilder b) updates]) =
      _$GProductVariantUpdateArgs;

  GProductVariantWhereUniqueInput get where;
  GProductVariantUpdateInput get data;
  static Serializer<GProductVariantUpdateArgs> get serializer =>
      _$gProductVariantUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantUpdateArgs.serializer,
        json,
      );
}

abstract class GProductVariantCreateInput
    implements
        Built<GProductVariantCreateInput, GProductVariantCreateInputBuilder> {
  GProductVariantCreateInput._();

  factory GProductVariantCreateInput(
          [void Function(GProductVariantCreateInputBuilder b) updates]) =
      _$GProductVariantCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get key;
  GProductRelateToOneForCreateInput? get product;
  int? get index;
  @BuiltValueField(wireName: 'default')
  bool? get Gdefault;
  GProductSpecificationRelateToManyForCreateInput? get specifications;
  GTagRelateToManyForCreateInput? get tags;
  GPriceRelateToManyForCreateInput? get prices;
  GProductImageRelateToManyForCreateInput? get images;
  GProductVideoRelateToManyForCreateInput? get videos;
  GProductGalleryItemRelateToManyForCreateInput? get gallery;
  GProductReelRelateToManyForCreateInput? get reels;
  String? get gtin;
  bool? get disabled;
  static Serializer<GProductVariantCreateInput> get serializer =>
      _$gProductVariantCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVariantCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVariantCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVariantCreateInput.serializer,
        json,
      );
}

abstract class GProductImageRelateToManyForCreateInput
    implements
        Built<GProductImageRelateToManyForCreateInput,
            GProductImageRelateToManyForCreateInputBuilder> {
  GProductImageRelateToManyForCreateInput._();

  factory GProductImageRelateToManyForCreateInput(
      [void Function(GProductImageRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductImageRelateToManyForCreateInput;

  BuiltList<GProductImageCreateInput>? get create;
  BuiltList<GProductImageWhereUniqueInput>? get connect;
  static Serializer<GProductImageRelateToManyForCreateInput> get serializer =>
      _$gProductImageRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GProductVideoRelateToManyForCreateInput
    implements
        Built<GProductVideoRelateToManyForCreateInput,
            GProductVideoRelateToManyForCreateInputBuilder> {
  GProductVideoRelateToManyForCreateInput._();

  factory GProductVideoRelateToManyForCreateInput(
      [void Function(GProductVideoRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductVideoRelateToManyForCreateInput;

  BuiltList<GProductVideoCreateInput>? get create;
  BuiltList<GProductVideoWhereUniqueInput>? get connect;
  static Serializer<GProductVideoRelateToManyForCreateInput> get serializer =>
      _$gProductVideoRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemRelateToManyForCreateInput
    implements
        Built<GProductGalleryItemRelateToManyForCreateInput,
            GProductGalleryItemRelateToManyForCreateInputBuilder> {
  GProductGalleryItemRelateToManyForCreateInput._();

  factory GProductGalleryItemRelateToManyForCreateInput(
      [void Function(GProductGalleryItemRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductGalleryItemRelateToManyForCreateInput;

  BuiltList<GProductGalleryItemCreateInput>? get create;
  BuiltList<GProductGalleryItemWhereUniqueInput>? get connect;
  static Serializer<GProductGalleryItemRelateToManyForCreateInput>
      get serializer =>
          _$gProductGalleryItemRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GProductReelRelateToManyForCreateInput
    implements
        Built<GProductReelRelateToManyForCreateInput,
            GProductReelRelateToManyForCreateInputBuilder> {
  GProductReelRelateToManyForCreateInput._();

  factory GProductReelRelateToManyForCreateInput(
      [void Function(GProductReelRelateToManyForCreateInputBuilder b)
          updates]) = _$GProductReelRelateToManyForCreateInput;

  BuiltList<GProductReelCreateInput>? get create;
  BuiltList<GProductReelWhereUniqueInput>? get connect;
  static Serializer<GProductReelRelateToManyForCreateInput> get serializer =>
      _$gProductReelRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GProductImageWhereUniqueInput
    implements
        Built<GProductImageWhereUniqueInput,
            GProductImageWhereUniqueInputBuilder> {
  GProductImageWhereUniqueInput._();

  factory GProductImageWhereUniqueInput(
          [void Function(GProductImageWhereUniqueInputBuilder b) updates]) =
      _$GProductImageWhereUniqueInput;

  String? get id;
  static Serializer<GProductImageWhereUniqueInput> get serializer =>
      _$gProductImageWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductImageWhereInput
    implements Built<GProductImageWhereInput, GProductImageWhereInputBuilder> {
  GProductImageWhereInput._();

  factory GProductImageWhereInput(
          [void Function(GProductImageWhereInputBuilder b) updates]) =
      _$GProductImageWhereInput;

  BuiltList<GProductImageWhereInput>? get AND;
  BuiltList<GProductImageWhereInput>? get OR;
  BuiltList<GProductImageWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GProductVariantWhereInput? get variant;
  static Serializer<GProductImageWhereInput> get serializer =>
      _$gProductImageWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageWhereInput.serializer,
        json,
      );
}

abstract class GProductImageOrderByInput
    implements
        Built<GProductImageOrderByInput, GProductImageOrderByInputBuilder> {
  GProductImageOrderByInput._();

  factory GProductImageOrderByInput(
          [void Function(GProductImageOrderByInputBuilder b) updates]) =
      _$GProductImageOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GProductImageOrderByInput> get serializer =>
      _$gProductImageOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageOrderByInput.serializer,
        json,
      );
}

abstract class GProductImageUpdateInput
    implements
        Built<GProductImageUpdateInput, GProductImageUpdateInputBuilder> {
  GProductImageUpdateInput._();

  factory GProductImageUpdateInput(
          [void Function(GProductImageUpdateInputBuilder b) updates]) =
      _$GProductImageUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GImageFieldInput? get image;
  GProductVariantRelateToOneForUpdateInput? get variant;
  static Serializer<GProductImageUpdateInput> get serializer =>
      _$gProductImageUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageUpdateInput.serializer,
        json,
      );
}

abstract class GProductImageUpdateArgs
    implements Built<GProductImageUpdateArgs, GProductImageUpdateArgsBuilder> {
  GProductImageUpdateArgs._();

  factory GProductImageUpdateArgs(
          [void Function(GProductImageUpdateArgsBuilder b) updates]) =
      _$GProductImageUpdateArgs;

  GProductImageWhereUniqueInput get where;
  GProductImageUpdateInput get data;
  static Serializer<GProductImageUpdateArgs> get serializer =>
      _$gProductImageUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageUpdateArgs.serializer,
        json,
      );
}

abstract class GProductImageCreateInput
    implements
        Built<GProductImageCreateInput, GProductImageCreateInputBuilder> {
  GProductImageCreateInput._();

  factory GProductImageCreateInput(
          [void Function(GProductImageCreateInputBuilder b) updates]) =
      _$GProductImageCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GImageFieldInput? get image;
  GProductVariantRelateToOneForCreateInput? get variant;
  static Serializer<GProductImageCreateInput> get serializer =>
      _$gProductImageCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductImageCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductImageCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductImageCreateInput.serializer,
        json,
      );
}

abstract class GProductVideoWhereUniqueInput
    implements
        Built<GProductVideoWhereUniqueInput,
            GProductVideoWhereUniqueInputBuilder> {
  GProductVideoWhereUniqueInput._();

  factory GProductVideoWhereUniqueInput(
          [void Function(GProductVideoWhereUniqueInputBuilder b) updates]) =
      _$GProductVideoWhereUniqueInput;

  String? get id;
  static Serializer<GProductVideoWhereUniqueInput> get serializer =>
      _$gProductVideoWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductVideoWhereInput
    implements Built<GProductVideoWhereInput, GProductVideoWhereInputBuilder> {
  GProductVideoWhereInput._();

  factory GProductVideoWhereInput(
          [void Function(GProductVideoWhereInputBuilder b) updates]) =
      _$GProductVideoWhereInput;

  BuiltList<GProductVideoWhereInput>? get AND;
  BuiltList<GProductVideoWhereInput>? get OR;
  BuiltList<GProductVideoWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GProductVariantWhereInput? get variant;
  static Serializer<GProductVideoWhereInput> get serializer =>
      _$gProductVideoWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoWhereInput.serializer,
        json,
      );
}

abstract class GProductVideoOrderByInput
    implements
        Built<GProductVideoOrderByInput, GProductVideoOrderByInputBuilder> {
  GProductVideoOrderByInput._();

  factory GProductVideoOrderByInput(
          [void Function(GProductVideoOrderByInputBuilder b) updates]) =
      _$GProductVideoOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GProductVideoOrderByInput> get serializer =>
      _$gProductVideoOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoOrderByInput.serializer,
        json,
      );
}

abstract class GProductVideoUpdateInput
    implements
        Built<GProductVideoUpdateInput, GProductVideoUpdateInputBuilder> {
  GProductVideoUpdateInput._();

  factory GProductVideoUpdateInput(
          [void Function(GProductVideoUpdateInputBuilder b) updates]) =
      _$GProductVideoUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get video;
  GProductVariantRelateToOneForUpdateInput? get variant;
  static Serializer<GProductVideoUpdateInput> get serializer =>
      _$gProductVideoUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoUpdateInput.serializer,
        json,
      );
}

abstract class GProductVideoUpdateArgs
    implements Built<GProductVideoUpdateArgs, GProductVideoUpdateArgsBuilder> {
  GProductVideoUpdateArgs._();

  factory GProductVideoUpdateArgs(
          [void Function(GProductVideoUpdateArgsBuilder b) updates]) =
      _$GProductVideoUpdateArgs;

  GProductVideoWhereUniqueInput get where;
  GProductVideoUpdateInput get data;
  static Serializer<GProductVideoUpdateArgs> get serializer =>
      _$gProductVideoUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoUpdateArgs.serializer,
        json,
      );
}

abstract class GProductVideoCreateInput
    implements
        Built<GProductVideoCreateInput, GProductVideoCreateInputBuilder> {
  GProductVideoCreateInput._();

  factory GProductVideoCreateInput(
          [void Function(GProductVideoCreateInputBuilder b) updates]) =
      _$GProductVideoCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GFileFieldInput? get video;
  GProductVariantRelateToOneForCreateInput? get variant;
  static Serializer<GProductVideoCreateInput> get serializer =>
      _$gProductVideoCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductVideoCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductVideoCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductVideoCreateInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemWhereUniqueInput
    implements
        Built<GProductGalleryItemWhereUniqueInput,
            GProductGalleryItemWhereUniqueInputBuilder> {
  GProductGalleryItemWhereUniqueInput._();

  factory GProductGalleryItemWhereUniqueInput(
      [void Function(GProductGalleryItemWhereUniqueInputBuilder b)
          updates]) = _$GProductGalleryItemWhereUniqueInput;

  String? get id;
  static Serializer<GProductGalleryItemWhereUniqueInput> get serializer =>
      _$gProductGalleryItemWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemWhereInput
    implements
        Built<GProductGalleryItemWhereInput,
            GProductGalleryItemWhereInputBuilder> {
  GProductGalleryItemWhereInput._();

  factory GProductGalleryItemWhereInput(
          [void Function(GProductGalleryItemWhereInputBuilder b) updates]) =
      _$GProductGalleryItemWhereInput;

  BuiltList<GProductGalleryItemWhereInput>? get AND;
  BuiltList<GProductGalleryItemWhereInput>? get OR;
  BuiltList<GProductGalleryItemWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get type;
  GStringFilter? get fileId;
  GProductVariantWhereInput? get variant;
  GIntNullableFilter? get index;
  static Serializer<GProductGalleryItemWhereInput> get serializer =>
      _$gProductGalleryItemWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemWhereInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemOrderByInput
    implements
        Built<GProductGalleryItemOrderByInput,
            GProductGalleryItemOrderByInputBuilder> {
  GProductGalleryItemOrderByInput._();

  factory GProductGalleryItemOrderByInput(
          [void Function(GProductGalleryItemOrderByInputBuilder b) updates]) =
      _$GProductGalleryItemOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get fileId;
  GOrderDirection? get index;
  static Serializer<GProductGalleryItemOrderByInput> get serializer =>
      _$gProductGalleryItemOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemOrderByInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemUpdateInput
    implements
        Built<GProductGalleryItemUpdateInput,
            GProductGalleryItemUpdateInputBuilder> {
  GProductGalleryItemUpdateInput._();

  factory GProductGalleryItemUpdateInput(
          [void Function(GProductGalleryItemUpdateInputBuilder b) updates]) =
      _$GProductGalleryItemUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GProductVariantRelateToOneForUpdateInput? get variant;
  int? get index;
  static Serializer<GProductGalleryItemUpdateInput> get serializer =>
      _$gProductGalleryItemUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemUpdateInput.serializer,
        json,
      );
}

abstract class GProductGalleryItemUpdateArgs
    implements
        Built<GProductGalleryItemUpdateArgs,
            GProductGalleryItemUpdateArgsBuilder> {
  GProductGalleryItemUpdateArgs._();

  factory GProductGalleryItemUpdateArgs(
          [void Function(GProductGalleryItemUpdateArgsBuilder b) updates]) =
      _$GProductGalleryItemUpdateArgs;

  GProductGalleryItemWhereUniqueInput get where;
  GProductGalleryItemUpdateInput get data;
  static Serializer<GProductGalleryItemUpdateArgs> get serializer =>
      _$gProductGalleryItemUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemUpdateArgs.serializer,
        json,
      );
}

abstract class GProductGalleryItemCreateInput
    implements
        Built<GProductGalleryItemCreateInput,
            GProductGalleryItemCreateInputBuilder> {
  GProductGalleryItemCreateInput._();

  factory GProductGalleryItemCreateInput(
          [void Function(GProductGalleryItemCreateInputBuilder b) updates]) =
      _$GProductGalleryItemCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GProductVariantRelateToOneForCreateInput? get variant;
  int? get index;
  static Serializer<GProductGalleryItemCreateInput> get serializer =>
      _$gProductGalleryItemCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductGalleryItemCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductGalleryItemCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductGalleryItemCreateInput.serializer,
        json,
      );
}

abstract class GProductReelWhereUniqueInput
    implements
        Built<GProductReelWhereUniqueInput,
            GProductReelWhereUniqueInputBuilder> {
  GProductReelWhereUniqueInput._();

  factory GProductReelWhereUniqueInput(
          [void Function(GProductReelWhereUniqueInputBuilder b) updates]) =
      _$GProductReelWhereUniqueInput;

  String? get id;
  static Serializer<GProductReelWhereUniqueInput> get serializer =>
      _$gProductReelWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductReelWhereInput
    implements Built<GProductReelWhereInput, GProductReelWhereInputBuilder> {
  GProductReelWhereInput._();

  factory GProductReelWhereInput(
          [void Function(GProductReelWhereInputBuilder b) updates]) =
      _$GProductReelWhereInput;

  BuiltList<GProductReelWhereInput>? get AND;
  BuiltList<GProductReelWhereInput>? get OR;
  BuiltList<GProductReelWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get type;
  GStringFilter? get fileId;
  GProductVariantWhereInput? get variant;
  GIntNullableFilter? get index;
  GBooleanFilter? get disabled;
  static Serializer<GProductReelWhereInput> get serializer =>
      _$gProductReelWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelWhereInput.serializer,
        json,
      );
}

abstract class GProductReelOrderByInput
    implements
        Built<GProductReelOrderByInput, GProductReelOrderByInputBuilder> {
  GProductReelOrderByInput._();

  factory GProductReelOrderByInput(
          [void Function(GProductReelOrderByInputBuilder b) updates]) =
      _$GProductReelOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get type;
  GOrderDirection? get fileId;
  GOrderDirection? get index;
  GOrderDirection? get disabled;
  static Serializer<GProductReelOrderByInput> get serializer =>
      _$gProductReelOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelOrderByInput.serializer,
        json,
      );
}

abstract class GProductReelUpdateInput
    implements Built<GProductReelUpdateInput, GProductReelUpdateInputBuilder> {
  GProductReelUpdateInput._();

  factory GProductReelUpdateInput(
          [void Function(GProductReelUpdateInputBuilder b) updates]) =
      _$GProductReelUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GProductVariantRelateToOneForUpdateInput? get variant;
  int? get index;
  bool? get disabled;
  static Serializer<GProductReelUpdateInput> get serializer =>
      _$gProductReelUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelUpdateInput.serializer,
        json,
      );
}

abstract class GProductReelUpdateArgs
    implements Built<GProductReelUpdateArgs, GProductReelUpdateArgsBuilder> {
  GProductReelUpdateArgs._();

  factory GProductReelUpdateArgs(
          [void Function(GProductReelUpdateArgsBuilder b) updates]) =
      _$GProductReelUpdateArgs;

  GProductReelWhereUniqueInput get where;
  GProductReelUpdateInput get data;
  static Serializer<GProductReelUpdateArgs> get serializer =>
      _$gProductReelUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelUpdateArgs.serializer,
        json,
      );
}

abstract class GProductReelCreateInput
    implements Built<GProductReelCreateInput, GProductReelCreateInputBuilder> {
  GProductReelCreateInput._();

  factory GProductReelCreateInput(
          [void Function(GProductReelCreateInputBuilder b) updates]) =
      _$GProductReelCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get type;
  String? get fileId;
  GProductVariantRelateToOneForCreateInput? get variant;
  int? get index;
  bool? get disabled;
  static Serializer<GProductReelCreateInput> get serializer =>
      _$gProductReelCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductReelCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductReelCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductReelCreateInput.serializer,
        json,
      );
}

abstract class GProductDealerWhereUniqueInput
    implements
        Built<GProductDealerWhereUniqueInput,
            GProductDealerWhereUniqueInputBuilder> {
  GProductDealerWhereUniqueInput._();

  factory GProductDealerWhereUniqueInput(
          [void Function(GProductDealerWhereUniqueInputBuilder b) updates]) =
      _$GProductDealerWhereUniqueInput;

  String? get id;
  static Serializer<GProductDealerWhereUniqueInput> get serializer =>
      _$gProductDealerWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductDealerWhereInput
    implements
        Built<GProductDealerWhereInput, GProductDealerWhereInputBuilder> {
  GProductDealerWhereInput._();

  factory GProductDealerWhereInput(
          [void Function(GProductDealerWhereInputBuilder b) updates]) =
      _$GProductDealerWhereInput;

  BuiltList<GProductDealerWhereInput>? get AND;
  BuiltList<GProductDealerWhereInput>? get OR;
  BuiltList<GProductDealerWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GProductVariantWhereInput? get productVariant;
  GGuaranteeManyRelationFilter? get guarantees;
  GPriceManyRelationFilter? get prices;
  GIntNullableFilter? get stock;
  static Serializer<GProductDealerWhereInput> get serializer =>
      _$gProductDealerWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerWhereInput.serializer,
        json,
      );
}

abstract class GProductDealerOrderByInput
    implements
        Built<GProductDealerOrderByInput, GProductDealerOrderByInputBuilder> {
  GProductDealerOrderByInput._();

  factory GProductDealerOrderByInput(
          [void Function(GProductDealerOrderByInputBuilder b) updates]) =
      _$GProductDealerOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get stock;
  static Serializer<GProductDealerOrderByInput> get serializer =>
      _$gProductDealerOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerOrderByInput.serializer,
        json,
      );
}

abstract class GProductDealerUpdateInput
    implements
        Built<GProductDealerUpdateInput, GProductDealerUpdateInputBuilder> {
  GProductDealerUpdateInput._();

  factory GProductDealerUpdateInput(
          [void Function(GProductDealerUpdateInputBuilder b) updates]) =
      _$GProductDealerUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GProductVariantRelateToOneForUpdateInput? get productVariant;
  GGuaranteeRelateToManyForUpdateInput? get guarantees;
  GPriceRelateToManyForUpdateInput? get prices;
  int? get stock;
  static Serializer<GProductDealerUpdateInput> get serializer =>
      _$gProductDealerUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerUpdateInput.serializer,
        json,
      );
}

abstract class GProductDealerUpdateArgs
    implements
        Built<GProductDealerUpdateArgs, GProductDealerUpdateArgsBuilder> {
  GProductDealerUpdateArgs._();

  factory GProductDealerUpdateArgs(
          [void Function(GProductDealerUpdateArgsBuilder b) updates]) =
      _$GProductDealerUpdateArgs;

  GProductDealerWhereUniqueInput get where;
  GProductDealerUpdateInput get data;
  static Serializer<GProductDealerUpdateArgs> get serializer =>
      _$gProductDealerUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerUpdateArgs.serializer,
        json,
      );
}

abstract class GProductDealerCreateInput
    implements
        Built<GProductDealerCreateInput, GProductDealerCreateInputBuilder> {
  GProductDealerCreateInput._();

  factory GProductDealerCreateInput(
          [void Function(GProductDealerCreateInputBuilder b) updates]) =
      _$GProductDealerCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GProductVariantRelateToOneForCreateInput? get productVariant;
  GGuaranteeRelateToManyForCreateInput? get guarantees;
  GPriceRelateToManyForCreateInput? get prices;
  int? get stock;
  static Serializer<GProductDealerCreateInput> get serializer =>
      _$gProductDealerCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerCreateInput.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestWhereUniqueInput
    implements
        Built<GProductDealerStockRequestWhereUniqueInput,
            GProductDealerStockRequestWhereUniqueInputBuilder> {
  GProductDealerStockRequestWhereUniqueInput._();

  factory GProductDealerStockRequestWhereUniqueInput(
      [void Function(GProductDealerStockRequestWhereUniqueInputBuilder b)
          updates]) = _$GProductDealerStockRequestWhereUniqueInput;

  String? get id;
  static Serializer<GProductDealerStockRequestWhereUniqueInput>
      get serializer => _$gProductDealerStockRequestWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerStockRequestWhereUniqueInput.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestWhereInput
    implements
        Built<GProductDealerStockRequestWhereInput,
            GProductDealerStockRequestWhereInputBuilder> {
  GProductDealerStockRequestWhereInput._();

  factory GProductDealerStockRequestWhereInput(
      [void Function(GProductDealerStockRequestWhereInputBuilder b)
          updates]) = _$GProductDealerStockRequestWhereInput;

  BuiltList<GProductDealerStockRequestWhereInput>? get AND;
  BuiltList<GProductDealerStockRequestWhereInput>? get OR;
  BuiltList<GProductDealerStockRequestWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GDealerWhereInput? get dealer;
  GProductVariantWhereInput? get productVariant;
  GGuaranteeManyRelationFilter? get guarantees;
  GIntNullableFilter? get stock;
  GBooleanFilter? get accepted;
  GStringNullableFilter? get type;
  static Serializer<GProductDealerStockRequestWhereInput> get serializer =>
      _$gProductDealerStockRequestWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerStockRequestWhereInput.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestOrderByInput
    implements
        Built<GProductDealerStockRequestOrderByInput,
            GProductDealerStockRequestOrderByInputBuilder> {
  GProductDealerStockRequestOrderByInput._();

  factory GProductDealerStockRequestOrderByInput(
      [void Function(GProductDealerStockRequestOrderByInputBuilder b)
          updates]) = _$GProductDealerStockRequestOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get stock;
  GOrderDirection? get accepted;
  GOrderDirection? get type;
  static Serializer<GProductDealerStockRequestOrderByInput> get serializer =>
      _$gProductDealerStockRequestOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerStockRequestOrderByInput.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestUpdateInput
    implements
        Built<GProductDealerStockRequestUpdateInput,
            GProductDealerStockRequestUpdateInputBuilder> {
  GProductDealerStockRequestUpdateInput._();

  factory GProductDealerStockRequestUpdateInput(
      [void Function(GProductDealerStockRequestUpdateInputBuilder b)
          updates]) = _$GProductDealerStockRequestUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForUpdateInput? get dealer;
  GProductVariantRelateToOneForUpdateInput? get productVariant;
  GGuaranteeRelateToManyForUpdateInput? get guarantees;
  int? get stock;
  bool? get accepted;
  String? get type;
  static Serializer<GProductDealerStockRequestUpdateInput> get serializer =>
      _$gProductDealerStockRequestUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerStockRequestUpdateInput.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestUpdateArgs
    implements
        Built<GProductDealerStockRequestUpdateArgs,
            GProductDealerStockRequestUpdateArgsBuilder> {
  GProductDealerStockRequestUpdateArgs._();

  factory GProductDealerStockRequestUpdateArgs(
      [void Function(GProductDealerStockRequestUpdateArgsBuilder b)
          updates]) = _$GProductDealerStockRequestUpdateArgs;

  GProductDealerStockRequestWhereUniqueInput get where;
  GProductDealerStockRequestUpdateInput get data;
  static Serializer<GProductDealerStockRequestUpdateArgs> get serializer =>
      _$gProductDealerStockRequestUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestUpdateArgs? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerStockRequestUpdateArgs.serializer,
        json,
      );
}

abstract class GProductDealerStockRequestCreateInput
    implements
        Built<GProductDealerStockRequestCreateInput,
            GProductDealerStockRequestCreateInputBuilder> {
  GProductDealerStockRequestCreateInput._();

  factory GProductDealerStockRequestCreateInput(
      [void Function(GProductDealerStockRequestCreateInputBuilder b)
          updates]) = _$GProductDealerStockRequestCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GDealerRelateToOneForCreateInput? get dealer;
  GProductVariantRelateToOneForCreateInput? get productVariant;
  GGuaranteeRelateToManyForCreateInput? get guarantees;
  int? get stock;
  bool? get accepted;
  String? get type;
  static Serializer<GProductDealerStockRequestCreateInput> get serializer =>
      _$gProductDealerStockRequestCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GProductDealerStockRequestCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GProductDealerStockRequestCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GProductDealerStockRequestCreateInput.serializer,
        json,
      );
}

abstract class GCategoryWhereUniqueInput
    implements
        Built<GCategoryWhereUniqueInput, GCategoryWhereUniqueInputBuilder> {
  GCategoryWhereUniqueInput._();

  factory GCategoryWhereUniqueInput(
          [void Function(GCategoryWhereUniqueInputBuilder b) updates]) =
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
          [void Function(GCategoryWhereInputBuilder b) updates]) =
      _$GCategoryWhereInput;

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
          [void Function(GCategoryOrderByInputBuilder b) updates]) =
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
          [void Function(GCategoryUpdateInputBuilder b) updates]) =
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
          [void Function(GCategoryUpdateArgsBuilder b) updates]) =
      _$GCategoryUpdateArgs;

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
          [void Function(GCategoryCreateInputBuilder b) updates]) =
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

abstract class GSearchWhereUniqueInput
    implements Built<GSearchWhereUniqueInput, GSearchWhereUniqueInputBuilder> {
  GSearchWhereUniqueInput._();

  factory GSearchWhereUniqueInput(
          [void Function(GSearchWhereUniqueInputBuilder b) updates]) =
      _$GSearchWhereUniqueInput;

  String? get id;
  static Serializer<GSearchWhereUniqueInput> get serializer =>
      _$gSearchWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchWhereUniqueInput.serializer,
        json,
      );
}

abstract class GSearchWhereInput
    implements Built<GSearchWhereInput, GSearchWhereInputBuilder> {
  GSearchWhereInput._();

  factory GSearchWhereInput(
          [void Function(GSearchWhereInputBuilder b) updates]) =
      _$GSearchWhereInput;

  BuiltList<GSearchWhereInput>? get AND;
  BuiltList<GSearchWhereInput>? get OR;
  BuiltList<GSearchWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get searchText;
  GIntNullableFilter? get rank;
  GStringFilter? get type;
  GSearchUserManyRelationFilter? get users;
  static Serializer<GSearchWhereInput> get serializer =>
      _$gSearchWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchWhereInput.serializer,
        json,
      );
}

abstract class GSearchUserManyRelationFilter
    implements
        Built<GSearchUserManyRelationFilter,
            GSearchUserManyRelationFilterBuilder> {
  GSearchUserManyRelationFilter._();

  factory GSearchUserManyRelationFilter(
          [void Function(GSearchUserManyRelationFilterBuilder b) updates]) =
      _$GSearchUserManyRelationFilter;

  GSearchUserWhereInput? get every;
  GSearchUserWhereInput? get some;
  GSearchUserWhereInput? get none;
  static Serializer<GSearchUserManyRelationFilter> get serializer =>
      _$gSearchUserManyRelationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserManyRelationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserManyRelationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserManyRelationFilter.serializer,
        json,
      );
}

abstract class GSearchOrderByInput
    implements Built<GSearchOrderByInput, GSearchOrderByInputBuilder> {
  GSearchOrderByInput._();

  factory GSearchOrderByInput(
          [void Function(GSearchOrderByInputBuilder b) updates]) =
      _$GSearchOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get searchText;
  GOrderDirection? get rank;
  GOrderDirection? get type;
  static Serializer<GSearchOrderByInput> get serializer =>
      _$gSearchOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchOrderByInput.serializer,
        json,
      );
}

abstract class GSearchUpdateInput
    implements Built<GSearchUpdateInput, GSearchUpdateInputBuilder> {
  GSearchUpdateInput._();

  factory GSearchUpdateInput(
          [void Function(GSearchUpdateInputBuilder b) updates]) =
      _$GSearchUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get searchText;
  int? get rank;
  String? get type;
  GSearchUserRelateToManyForUpdateInput? get users;
  static Serializer<GSearchUpdateInput> get serializer =>
      _$gSearchUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUpdateInput.serializer,
        json,
      );
}

abstract class GSearchUserRelateToManyForUpdateInput
    implements
        Built<GSearchUserRelateToManyForUpdateInput,
            GSearchUserRelateToManyForUpdateInputBuilder> {
  GSearchUserRelateToManyForUpdateInput._();

  factory GSearchUserRelateToManyForUpdateInput(
      [void Function(GSearchUserRelateToManyForUpdateInputBuilder b)
          updates]) = _$GSearchUserRelateToManyForUpdateInput;

  BuiltList<GSearchUserWhereUniqueInput>? get disconnect;
  BuiltList<GSearchUserWhereUniqueInput>? get set;
  BuiltList<GSearchUserCreateInput>? get create;
  BuiltList<GSearchUserWhereUniqueInput>? get connect;
  static Serializer<GSearchUserRelateToManyForUpdateInput> get serializer =>
      _$gSearchUserRelateToManyForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserRelateToManyForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserRelateToManyForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserRelateToManyForUpdateInput.serializer,
        json,
      );
}

abstract class GSearchUpdateArgs
    implements Built<GSearchUpdateArgs, GSearchUpdateArgsBuilder> {
  GSearchUpdateArgs._();

  factory GSearchUpdateArgs(
          [void Function(GSearchUpdateArgsBuilder b) updates]) =
      _$GSearchUpdateArgs;

  GSearchWhereUniqueInput get where;
  GSearchUpdateInput get data;
  static Serializer<GSearchUpdateArgs> get serializer =>
      _$gSearchUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUpdateArgs.serializer,
        json,
      );
}

abstract class GSearchCreateInput
    implements Built<GSearchCreateInput, GSearchCreateInputBuilder> {
  GSearchCreateInput._();

  factory GSearchCreateInput(
          [void Function(GSearchCreateInputBuilder b) updates]) =
      _$GSearchCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get searchText;
  int? get rank;
  String? get type;
  GSearchUserRelateToManyForCreateInput? get users;
  static Serializer<GSearchCreateInput> get serializer =>
      _$gSearchCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchCreateInput.serializer,
        json,
      );
}

abstract class GSearchUserRelateToManyForCreateInput
    implements
        Built<GSearchUserRelateToManyForCreateInput,
            GSearchUserRelateToManyForCreateInputBuilder> {
  GSearchUserRelateToManyForCreateInput._();

  factory GSearchUserRelateToManyForCreateInput(
      [void Function(GSearchUserRelateToManyForCreateInputBuilder b)
          updates]) = _$GSearchUserRelateToManyForCreateInput;

  BuiltList<GSearchUserCreateInput>? get create;
  BuiltList<GSearchUserWhereUniqueInput>? get connect;
  static Serializer<GSearchUserRelateToManyForCreateInput> get serializer =>
      _$gSearchUserRelateToManyForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserRelateToManyForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserRelateToManyForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserRelateToManyForCreateInput.serializer,
        json,
      );
}

abstract class GSearchUserWhereUniqueInput
    implements
        Built<GSearchUserWhereUniqueInput, GSearchUserWhereUniqueInputBuilder> {
  GSearchUserWhereUniqueInput._();

  factory GSearchUserWhereUniqueInput(
          [void Function(GSearchUserWhereUniqueInputBuilder b) updates]) =
      _$GSearchUserWhereUniqueInput;

  String? get id;
  static Serializer<GSearchUserWhereUniqueInput> get serializer =>
      _$gSearchUserWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserWhereUniqueInput.serializer,
        json,
      );
}

abstract class GSearchUserWhereInput
    implements Built<GSearchUserWhereInput, GSearchUserWhereInputBuilder> {
  GSearchUserWhereInput._();

  factory GSearchUserWhereInput(
          [void Function(GSearchUserWhereInputBuilder b) updates]) =
      _$GSearchUserWhereInput;

  BuiltList<GSearchUserWhereInput>? get AND;
  BuiltList<GSearchUserWhereInput>? get OR;
  BuiltList<GSearchUserWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GIntNullableFilter? get rank;
  GSearchWhereInput? get search;
  static Serializer<GSearchUserWhereInput> get serializer =>
      _$gSearchUserWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserWhereInput.serializer,
        json,
      );
}

abstract class GSearchUserOrderByInput
    implements Built<GSearchUserOrderByInput, GSearchUserOrderByInputBuilder> {
  GSearchUserOrderByInput._();

  factory GSearchUserOrderByInput(
          [void Function(GSearchUserOrderByInputBuilder b) updates]) =
      _$GSearchUserOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get rank;
  static Serializer<GSearchUserOrderByInput> get serializer =>
      _$gSearchUserOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserOrderByInput.serializer,
        json,
      );
}

abstract class GSearchUserUpdateInput
    implements Built<GSearchUserUpdateInput, GSearchUserUpdateInputBuilder> {
  GSearchUserUpdateInput._();

  factory GSearchUserUpdateInput(
          [void Function(GSearchUserUpdateInputBuilder b) updates]) =
      _$GSearchUserUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  int? get rank;
  GSearchRelateToOneForUpdateInput? get search;
  static Serializer<GSearchUserUpdateInput> get serializer =>
      _$gSearchUserUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserUpdateInput.serializer,
        json,
      );
}

abstract class GSearchRelateToOneForUpdateInput
    implements
        Built<GSearchRelateToOneForUpdateInput,
            GSearchRelateToOneForUpdateInputBuilder> {
  GSearchRelateToOneForUpdateInput._();

  factory GSearchRelateToOneForUpdateInput(
          [void Function(GSearchRelateToOneForUpdateInputBuilder b) updates]) =
      _$GSearchRelateToOneForUpdateInput;

  GSearchCreateInput? get create;
  GSearchWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GSearchRelateToOneForUpdateInput> get serializer =>
      _$gSearchRelateToOneForUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchRelateToOneForUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchRelateToOneForUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchRelateToOneForUpdateInput.serializer,
        json,
      );
}

abstract class GSearchUserUpdateArgs
    implements Built<GSearchUserUpdateArgs, GSearchUserUpdateArgsBuilder> {
  GSearchUserUpdateArgs._();

  factory GSearchUserUpdateArgs(
          [void Function(GSearchUserUpdateArgsBuilder b) updates]) =
      _$GSearchUserUpdateArgs;

  GSearchUserWhereUniqueInput get where;
  GSearchUserUpdateInput get data;
  static Serializer<GSearchUserUpdateArgs> get serializer =>
      _$gSearchUserUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserUpdateArgs.serializer,
        json,
      );
}

abstract class GSearchUserCreateInput
    implements Built<GSearchUserCreateInput, GSearchUserCreateInputBuilder> {
  GSearchUserCreateInput._();

  factory GSearchUserCreateInput(
          [void Function(GSearchUserCreateInputBuilder b) updates]) =
      _$GSearchUserCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  int? get rank;
  GSearchRelateToOneForCreateInput? get search;
  static Serializer<GSearchUserCreateInput> get serializer =>
      _$gSearchUserCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchUserCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchUserCreateInput.serializer,
        json,
      );
}

abstract class GSearchRelateToOneForCreateInput
    implements
        Built<GSearchRelateToOneForCreateInput,
            GSearchRelateToOneForCreateInputBuilder> {
  GSearchRelateToOneForCreateInput._();

  factory GSearchRelateToOneForCreateInput(
          [void Function(GSearchRelateToOneForCreateInputBuilder b) updates]) =
      _$GSearchRelateToOneForCreateInput;

  GSearchCreateInput? get create;
  GSearchWhereUniqueInput? get connect;
  static Serializer<GSearchRelateToOneForCreateInput> get serializer =>
      _$gSearchRelateToOneForCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchRelateToOneForCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchRelateToOneForCreateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchRelateToOneForCreateInput.serializer,
        json,
      );
}

abstract class GFinanceOfferEnquiryWhereUniqueInput
    implements
        Built<GFinanceOfferEnquiryWhereUniqueInput,
            GFinanceOfferEnquiryWhereUniqueInputBuilder> {
  GFinanceOfferEnquiryWhereUniqueInput._();

  factory GFinanceOfferEnquiryWhereUniqueInput(
      [void Function(GFinanceOfferEnquiryWhereUniqueInputBuilder b)
          updates]) = _$GFinanceOfferEnquiryWhereUniqueInput;

  String? get id;
  static Serializer<GFinanceOfferEnquiryWhereUniqueInput> get serializer =>
      _$gFinanceOfferEnquiryWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinanceOfferEnquiryWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinanceOfferEnquiryWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinanceOfferEnquiryWhereUniqueInput.serializer,
        json,
      );
}

abstract class GFinanceOfferEnquiryWhereInput
    implements
        Built<GFinanceOfferEnquiryWhereInput,
            GFinanceOfferEnquiryWhereInputBuilder> {
  GFinanceOfferEnquiryWhereInput._();

  factory GFinanceOfferEnquiryWhereInput(
          [void Function(GFinanceOfferEnquiryWhereInputBuilder b) updates]) =
      _$GFinanceOfferEnquiryWhereInput;

  BuiltList<GFinanceOfferEnquiryWhereInput>? get AND;
  BuiltList<GFinanceOfferEnquiryWhereInput>? get OR;
  BuiltList<GFinanceOfferEnquiryWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get name;
  GStringFilter? get phoneNumber;
  GStringFilter? get alternativeNumber;
  GStringFilter? get employmentType;
  GStringFilter? get address;
  GStringFilter? get annualIncome;
  static Serializer<GFinanceOfferEnquiryWhereInput> get serializer =>
      _$gFinanceOfferEnquiryWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinanceOfferEnquiryWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinanceOfferEnquiryWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinanceOfferEnquiryWhereInput.serializer,
        json,
      );
}

abstract class GFinanceOfferEnquiryOrderByInput
    implements
        Built<GFinanceOfferEnquiryOrderByInput,
            GFinanceOfferEnquiryOrderByInputBuilder> {
  GFinanceOfferEnquiryOrderByInput._();

  factory GFinanceOfferEnquiryOrderByInput(
          [void Function(GFinanceOfferEnquiryOrderByInputBuilder b) updates]) =
      _$GFinanceOfferEnquiryOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get name;
  GOrderDirection? get phoneNumber;
  GOrderDirection? get alternativeNumber;
  GOrderDirection? get employmentType;
  GOrderDirection? get address;
  GOrderDirection? get annualIncome;
  static Serializer<GFinanceOfferEnquiryOrderByInput> get serializer =>
      _$gFinanceOfferEnquiryOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinanceOfferEnquiryOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinanceOfferEnquiryOrderByInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinanceOfferEnquiryOrderByInput.serializer,
        json,
      );
}

abstract class GFinanceOfferEnquiryUpdateInput
    implements
        Built<GFinanceOfferEnquiryUpdateInput,
            GFinanceOfferEnquiryUpdateInputBuilder> {
  GFinanceOfferEnquiryUpdateInput._();

  factory GFinanceOfferEnquiryUpdateInput(
          [void Function(GFinanceOfferEnquiryUpdateInputBuilder b) updates]) =
      _$GFinanceOfferEnquiryUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get alternativeNumber;
  String? get employmentType;
  String? get address;
  String? get annualIncome;
  static Serializer<GFinanceOfferEnquiryUpdateInput> get serializer =>
      _$gFinanceOfferEnquiryUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinanceOfferEnquiryUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinanceOfferEnquiryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinanceOfferEnquiryUpdateInput.serializer,
        json,
      );
}

abstract class GFinanceOfferEnquiryUpdateArgs
    implements
        Built<GFinanceOfferEnquiryUpdateArgs,
            GFinanceOfferEnquiryUpdateArgsBuilder> {
  GFinanceOfferEnquiryUpdateArgs._();

  factory GFinanceOfferEnquiryUpdateArgs(
          [void Function(GFinanceOfferEnquiryUpdateArgsBuilder b) updates]) =
      _$GFinanceOfferEnquiryUpdateArgs;

  GFinanceOfferEnquiryWhereUniqueInput get where;
  GFinanceOfferEnquiryUpdateInput get data;
  static Serializer<GFinanceOfferEnquiryUpdateArgs> get serializer =>
      _$gFinanceOfferEnquiryUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinanceOfferEnquiryUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinanceOfferEnquiryUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinanceOfferEnquiryUpdateArgs.serializer,
        json,
      );
}

abstract class GFinanceOfferEnquiryCreateInput
    implements
        Built<GFinanceOfferEnquiryCreateInput,
            GFinanceOfferEnquiryCreateInputBuilder> {
  GFinanceOfferEnquiryCreateInput._();

  factory GFinanceOfferEnquiryCreateInput(
          [void Function(GFinanceOfferEnquiryCreateInputBuilder b) updates]) =
      _$GFinanceOfferEnquiryCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get name;
  String? get phoneNumber;
  String? get alternativeNumber;
  String? get employmentType;
  String? get address;
  String? get annualIncome;
  static Serializer<GFinanceOfferEnquiryCreateInput> get serializer =>
      _$gFinanceOfferEnquiryCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinanceOfferEnquiryCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinanceOfferEnquiryCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinanceOfferEnquiryCreateInput.serializer,
        json,
      );
}

abstract class GContactUsWhereUniqueInput
    implements
        Built<GContactUsWhereUniqueInput, GContactUsWhereUniqueInputBuilder> {
  GContactUsWhereUniqueInput._();

  factory GContactUsWhereUniqueInput(
          [void Function(GContactUsWhereUniqueInputBuilder b) updates]) =
      _$GContactUsWhereUniqueInput;

  String? get id;
  static Serializer<GContactUsWhereUniqueInput> get serializer =>
      _$gContactUsWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUsWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUsWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUsWhereUniqueInput.serializer,
        json,
      );
}

abstract class GContactUsWhereInput
    implements Built<GContactUsWhereInput, GContactUsWhereInputBuilder> {
  GContactUsWhereInput._();

  factory GContactUsWhereInput(
          [void Function(GContactUsWhereInputBuilder b) updates]) =
      _$GContactUsWhereInput;

  BuiltList<GContactUsWhereInput>? get AND;
  BuiltList<GContactUsWhereInput>? get OR;
  BuiltList<GContactUsWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GStringFilter? get contact;
  static Serializer<GContactUsWhereInput> get serializer =>
      _$gContactUsWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUsWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUsWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUsWhereInput.serializer,
        json,
      );
}

abstract class GContactUsOrderByInput
    implements Built<GContactUsOrderByInput, GContactUsOrderByInputBuilder> {
  GContactUsOrderByInput._();

  factory GContactUsOrderByInput(
          [void Function(GContactUsOrderByInputBuilder b) updates]) =
      _$GContactUsOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  GOrderDirection? get contact;
  static Serializer<GContactUsOrderByInput> get serializer =>
      _$gContactUsOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUsOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUsOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUsOrderByInput.serializer,
        json,
      );
}

abstract class GContactUsUpdateInput
    implements Built<GContactUsUpdateInput, GContactUsUpdateInputBuilder> {
  GContactUsUpdateInput._();

  factory GContactUsUpdateInput(
          [void Function(GContactUsUpdateInputBuilder b) updates]) =
      _$GContactUsUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get contact;
  static Serializer<GContactUsUpdateInput> get serializer =>
      _$gContactUsUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUsUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUsUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUsUpdateInput.serializer,
        json,
      );
}

abstract class GContactUsUpdateArgs
    implements Built<GContactUsUpdateArgs, GContactUsUpdateArgsBuilder> {
  GContactUsUpdateArgs._();

  factory GContactUsUpdateArgs(
          [void Function(GContactUsUpdateArgsBuilder b) updates]) =
      _$GContactUsUpdateArgs;

  GContactUsWhereUniqueInput get where;
  GContactUsUpdateInput get data;
  static Serializer<GContactUsUpdateArgs> get serializer =>
      _$gContactUsUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUsUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUsUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUsUpdateArgs.serializer,
        json,
      );
}

abstract class GContactUsCreateInput
    implements Built<GContactUsCreateInput, GContactUsCreateInputBuilder> {
  GContactUsCreateInput._();

  factory GContactUsCreateInput(
          [void Function(GContactUsCreateInputBuilder b) updates]) =
      _$GContactUsCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  String? get contact;
  static Serializer<GContactUsCreateInput> get serializer =>
      _$gContactUsCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUsCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUsCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUsCreateInput.serializer,
        json,
      );
}

abstract class GNotifyUserWhereUniqueInput
    implements
        Built<GNotifyUserWhereUniqueInput, GNotifyUserWhereUniqueInputBuilder> {
  GNotifyUserWhereUniqueInput._();

  factory GNotifyUserWhereUniqueInput(
          [void Function(GNotifyUserWhereUniqueInputBuilder b) updates]) =
      _$GNotifyUserWhereUniqueInput;

  String? get id;
  static Serializer<GNotifyUserWhereUniqueInput> get serializer =>
      _$gNotifyUserWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotifyUserWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotifyUserWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotifyUserWhereUniqueInput.serializer,
        json,
      );
}

abstract class GNotifyUserWhereInput
    implements Built<GNotifyUserWhereInput, GNotifyUserWhereInputBuilder> {
  GNotifyUserWhereInput._();

  factory GNotifyUserWhereInput(
          [void Function(GNotifyUserWhereInputBuilder b) updates]) =
      _$GNotifyUserWhereInput;

  BuiltList<GNotifyUserWhereInput>? get AND;
  BuiltList<GNotifyUserWhereInput>? get OR;
  BuiltList<GNotifyUserWhereInput>? get NOT;
  GIDFilter? get id;
  GDateTimeNullableFilter? get createdAt;
  GDateTimeNullableFilter? get modifiedAt;
  GUserWhereInput? get user;
  GProductWhereInput? get product;
  GVehicleWhereInput? get vehicle;
  static Serializer<GNotifyUserWhereInput> get serializer =>
      _$gNotifyUserWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotifyUserWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotifyUserWhereInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotifyUserWhereInput.serializer,
        json,
      );
}

abstract class GNotifyUserOrderByInput
    implements Built<GNotifyUserOrderByInput, GNotifyUserOrderByInputBuilder> {
  GNotifyUserOrderByInput._();

  factory GNotifyUserOrderByInput(
          [void Function(GNotifyUserOrderByInputBuilder b) updates]) =
      _$GNotifyUserOrderByInput;

  GOrderDirection? get id;
  GOrderDirection? get createdAt;
  GOrderDirection? get modifiedAt;
  static Serializer<GNotifyUserOrderByInput> get serializer =>
      _$gNotifyUserOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotifyUserOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotifyUserOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotifyUserOrderByInput.serializer,
        json,
      );
}

abstract class GNotifyUserUpdateInput
    implements Built<GNotifyUserUpdateInput, GNotifyUserUpdateInputBuilder> {
  GNotifyUserUpdateInput._();

  factory GNotifyUserUpdateInput(
          [void Function(GNotifyUserUpdateInputBuilder b) updates]) =
      _$GNotifyUserUpdateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForUpdateInput? get user;
  GProductRelateToOneForUpdateInput? get product;
  GVehicleRelateToOneForUpdateInput? get vehicle;
  static Serializer<GNotifyUserUpdateInput> get serializer =>
      _$gNotifyUserUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotifyUserUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotifyUserUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotifyUserUpdateInput.serializer,
        json,
      );
}

abstract class GNotifyUserUpdateArgs
    implements Built<GNotifyUserUpdateArgs, GNotifyUserUpdateArgsBuilder> {
  GNotifyUserUpdateArgs._();

  factory GNotifyUserUpdateArgs(
          [void Function(GNotifyUserUpdateArgsBuilder b) updates]) =
      _$GNotifyUserUpdateArgs;

  GNotifyUserWhereUniqueInput get where;
  GNotifyUserUpdateInput get data;
  static Serializer<GNotifyUserUpdateArgs> get serializer =>
      _$gNotifyUserUpdateArgsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotifyUserUpdateArgs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotifyUserUpdateArgs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotifyUserUpdateArgs.serializer,
        json,
      );
}

abstract class GNotifyUserCreateInput
    implements Built<GNotifyUserCreateInput, GNotifyUserCreateInputBuilder> {
  GNotifyUserCreateInput._();

  factory GNotifyUserCreateInput(
          [void Function(GNotifyUserCreateInputBuilder b) updates]) =
      _$GNotifyUserCreateInput;

  GDateTime? get createdAt;
  GDateTime? get modifiedAt;
  GUserRelateToOneForCreateInput? get user;
  GProductRelateToOneForCreateInput? get product;
  GVehicleRelateToOneForCreateInput? get vehicle;
  static Serializer<GNotifyUserCreateInput> get serializer =>
      _$gNotifyUserCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotifyUserCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotifyUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotifyUserCreateInput.serializer,
        json,
      );
}

class Gtype extends EnumClass {
  const Gtype._(String name) : super(name);

  static const Gtype VEHICLE_DESCRIPTION = _$gtypeVEHICLE_DESCRIPTION;

  static const Gtype VEHICLE_LONG_DESCRIPTION = _$gtypeVEHICLE_LONG_DESCRIPTION;

  static const Gtype PRODUCT_DESCRIPTION = _$gtypePRODUCT_DESCRIPTION;

  static Serializer<Gtype> get serializer => _$gtypeSerializer;

  static BuiltSet<Gtype> get values => _$gtypeValues;

  static Gtype valueOf(String name) => _$gtypeValueOf(name);
}

abstract class GOrderItem implements Built<GOrderItem, GOrderItemBuilder> {
  GOrderItem._();

  factory GOrderItem([void Function(GOrderItemBuilder b) updates]) =
      _$GOrderItem;

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

  static const GOrderItemType productDealer = _$gOrderItemTypeproductDealer;

  static Serializer<GOrderItemType> get serializer =>
      _$gOrderItemTypeSerializer;

  static BuiltSet<GOrderItemType> get values => _$gOrderItemTypeValues;

  static GOrderItemType valueOf(String name) => _$gOrderItemTypeValueOf(name);
}

abstract class GPaymentItem
    implements Built<GPaymentItem, GPaymentItemBuilder> {
  GPaymentItem._();

  factory GPaymentItem([void Function(GPaymentItemBuilder b) updates]) =
      _$GPaymentItem;

  GPaymentItemType get type;
  double get amount;
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

class GUpdateSearchType extends EnumClass {
  const GUpdateSearchType._(String name) : super(name);

  static const GUpdateSearchType vehicle = _$gUpdateSearchTypevehicle;

  static const GUpdateSearchType product = _$gUpdateSearchTypeproduct;

  static const GUpdateSearchType all = _$gUpdateSearchTypeall;

  static Serializer<GUpdateSearchType> get serializer =>
      _$gUpdateSearchTypeSerializer;

  static BuiltSet<GUpdateSearchType> get values => _$gUpdateSearchTypeValues;

  static GUpdateSearchType valueOf(String name) =>
      _$gUpdateSearchTypeValueOf(name);
}

abstract class GCreateInitialUserInput
    implements Built<GCreateInitialUserInput, GCreateInitialUserInputBuilder> {
  GCreateInitialUserInput._();

  factory GCreateInitialUserInput(
          [void Function(GCreateInitialUserInputBuilder b) updates]) =
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

  factory GItem([void Function(GItemBuilder b) updates]) = _$GItem;

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

  static const GCouponItemType productDealer = _$gCouponItemTypeproductDealer;

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
