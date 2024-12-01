// ignore_for_file: sdk_version_since

import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.req.gql.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/get_it.dart';
import 'package:ferry/ferry.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();
  Client get _client => _graphqlClient.client;

  Future<String?> createDealer(String id) async {
    try {
      final response = await _client
          .request(
            GCreateDealerReq(
              (b) => b.vars.data.user.connect.id = id,
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong');
      }
      return response.data?.createDealer?.id;
    } catch (e) {
      e.log();
    }
    return null;
  }

  Future<bool> register({
    required String name,
    required String phoneNumber,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client
          .request(
            GCreateUserReq(
              (b) => b
                ..vars.data.name = name
                ..vars.data.phoneNumber = phoneNumber
                ..vars.data.email = email
                ..vars.data.password = password,
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        if (response.linkException != null) {
          throw Exception('Something went wrong while registering');
        } else {
          throw Exception(response.graphqlErrors!.firstOrNull?.message ??
              'Something went wrong while registering');
        }
      }

      return response.data?.createUser?.id != null;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkIsUserRegistered(
      {required String? phoneNumber, String? email}) async {
    try {
      final inputBuilder = GUserWhereUniqueInput(
        (b) {
          b.phoneNumber = phoneNumber;
          b.email = email;
        },
      ).toBuilder();
      final phoneVerificationReq = GUserReq(
        (b) => b..vars.where = inputBuilder,
      );
      final response = await _client.request(phoneVerificationReq).first;
      if (response.data?.user != null) {
        return true;
      } else {
        return false;
      }
    } catch (e, trace) {
      e.log(stackTrace: trace);
    }
    return false;
  }

  ///Login user
  ///
  ///[phoneNumber] - Phone number of user
  ///[password] - Password of user
  Future<Map<String, dynamic>> login(
    String phoneNumber,
    String password,
  ) async {
    try {
      final response = await _client
          .request(
            GAuthenticateUserWithPasswordReq(
              (b) => b
                ..vars.phoneNumber = phoneNumber
                ..vars.password = password,
            ),
          )
          .first;

      if (response.data?.authenticateUserWithPassword?.toJson() == null) {
        return {
          'message': 'Something went wrong',
          'error': 'something went wrong',
        };
      } else {
        return response.data!.authenticateUserWithPassword!.toJson();
      }
    } catch (e) {
      e.log();
      return {'message': 'Something went wrong', 'error': e};
    }
  }

  ///Get user
  ///[userId] - Id of user
  Future<GUserData_user?> getUser({
    required String userId,
  }) async {
    try {
      final response = await _client
          .request(
            GUserReq(
              (b) => b..vars.where.id = userId,
            ),
          )
          .first;

      if (response.data?.user == null) {
        return null;
      } else {
        return response.data!.user!;
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  /// This method is used to validate the otp of user
  /// [key] - key of the otp key can be either emailVerification or phoneNumberVerification
  /// [otp] - otp of the user
  Future<bool> validateOTP(
    String key,
    String otp,
  ) async {
    try {
      final response = await _client
          .request(
            GValidateUserOTPReq(
              (b) => b
                ..vars.key = key
                ..vars.otp = otp,
            ),
          )
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false) == true) {
        throw Exception('Something went wrong while getting the otp');
      }
      if (response.data?.validateUserOTP == null ||
          response.data?.validateUserOTP == '' ||
          response.data?.validateUserOTP == 'OTP Failed') {
        return false;
      }
      return true;
    } catch (e) {
      e.log();
    }
    return false;
  }

  ///Update user
  /// Files will not be uploaded if [useFerry] is true
  Future<String?> updateUser({
    required String id,
    required String name,
    required String email,
    required String phoneNumber,
    required String? image,
    required bool userDio,
    String? address,
  }) async {
    try {
      {
        http.MultipartFile? imageFile;
        if (image != null) {
          imageFile = await http.MultipartFile.fromPath(
            '',
            image,
          );
        }

        final response = await (userDio
                ? _client
                : _graphqlClient.httpClient(
                    isMultipart: imageFile != null,
                    token: cacheProvider.getSessionToken()!,
                  ))
            .request(
          GUpdateUserReq((b) {
            b.vars.where.id = id;
            b.vars.data.name = name;
            b.vars.data.phoneNumber = phoneNumber;
            b.vars.data.email = email;
            if (address != null) b.vars.data.address = address;
            if (imageFile != null) b.vars.data.profile_image.upload = imageFile;
            b.fetchPolicy = FetchPolicy.NoCache;

            b;
          }),
        ).first;
        if (response.linkException != null) {
          throw response.linkException!;
        }
        if (response.data?.updateUser != null) {
          return response.data!.updateUser!.id;
        } else {
          return null;
        }
      }
    } catch (e) {
      e.log();
      return null;
    }
  }

  ///Update user
  /// Files will not be uploaded if [useFerry] is true
  Future<String?> updateUserForOtp({
    required String id,
    required String phoneNumber,
  }) async {
    try {
      {
        final response = await _client.request(
          GUpdateUserReq((b) {
            b.vars.where.id = id;
            b.vars.data.phoneNumber = phoneNumber;
            b.fetchPolicy = FetchPolicy.NoCache;
            b;
          }),
        ).first;
        if (response.linkException != null) {
          throw response.linkException!;
        }
        if (response.data?.updateUser != null) {
          return response.data!.updateUser!.id;
        } else {
          return null;
        }
      }
    } catch (e) {
      e.log();
      return null;
    }
  }

  /// THis method is used to get the current otp of user immediately after sign upt   1q
  Future<String?> getCurrentOtp(String key) async {
    try {
      final response = await _client
          .request(
            GCurrentUserOTPReq(
              (b) => b.vars.key = key,
            ),
          )
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false) == true) {
        throw Exception('Something went wrong while getting the otp');
      }
      if (response.data?.currentUserOTP != null) {
        response.data?.currentUserOTP.log();
        return response.data?.currentUserOTP;
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  Future<GDealerData_dealers?> getDealerByUser() async {
    try {
      final response = await _client
          .request(
            GDealerReq(
              (b) => b.vars.where.user.id.equals = cacheProvider.getUserId(),
            ),
          )
          .first;
      if (response.linkException != null) {
        throw Exception('Something went wrong');
      } else {
        return response.data?.dealers?.firstOrNull;
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  ///Reset Password
  Future<bool> resetPassword({
    required String token,
    required String phoneNumber,
    required String password,
  }) async {
    try {
      final response = await _client
          .request(
            GRedeemUserPasswordResetTokenReq(
              (b) => b
                ..vars.token = token
                ..vars.phoneNumber = phoneNumber
                ..vars.password = password,
            ),
          )
          .first;

      return response.data!.redeemUserPasswordResetToken == null;
    } catch (e) {
      e.log();
    }
    return false;
  }

  ///Send Password Reset Token
  Future<String?> sendPasswordResetToken({
    required String phoneNumber,
  }) async {
    try {
      final response = await _client
          .request(
            GSendUserPasswordResetLinkReq(
              (b) => b..vars.phoneNumber = phoneNumber,
            ),
          )
          .first;
      if (response.data?.sendUserPasswordResetLink != null) {
        return response.data!.sendUserPasswordResetLink;
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  ///Verify Password Reset Token
  Future<bool> verifyPasswordResetToken({
    required String token,
    required String phoneNumber,
  }) async {
    try {
      final response = await _client
          .request(
            GValidateUserPasswordResetTokenReq(
              (b) => b
                ..vars.token = token
                ..vars.phoneNumber = phoneNumber,
            ),
          )
          .first;
      if (response.data?.validateUserPasswordResetToken == null) {
        return true;
      }
    } catch (e) {
      e.log();
    }
    return false;
  }

  Future<bool> deactivateUser() async {
    final user = cacheProvider.getUser();
    final response = await _client
        .request(
          GUpdateUserReq(
            (b) => b
              ..vars.data.deactivate = true
              ..vars.where.id = user!.id,
          ),
        )
        .first;
    if (response.data?.updateUser?.id != null) {
      return true;
    }
    return false;
  }

  Future updateDealer({required double lat, required double long}) async {
    try {
      final dealerId = cacheProvider.getDealerId();

      final result = await _client
          .request(
            GUpdateDealerReq((b) => b.vars
              ..data.lLng = long
              ..data.lLat = lat
              ..where.id = dealerId),
          )
          .first;

      if (result.linkException != null) {
        throw result.linkException!;
      }

      if (result.graphqlErrors != null) {
        throw Exception(result.graphqlErrors?.firstOrNull?.message ??
            'Something went wrong while updating dealer details');
      }

      if (result.data?.updateDealer?.id != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      e.log();
      rethrow;
    }
  }

  Future<bool> sendMouApprovalOTP() async {
    try {
      await _client.request(GSendDealerMOUApprovalOTPReq()).first;

      return true;
    } catch (e) {
      e.log();
      return false;
    }
  }
}
