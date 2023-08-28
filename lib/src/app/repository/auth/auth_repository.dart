import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.req.gql.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/get_it.dart';
import 'package:ferry/ferry.dart';

class AuthRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();
  Client get _client => _graphqlClient.client;

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
        throw Exception('Something went wrong');
      }

      return response.data?.createUser?.id != null;
    } catch (e) {
      print(e);
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

      return response.data?.validateUserOTP?.isNotEmpty ?? false;
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
  }) async {
    try {
      final response = await _client
          .request(
            GUpdateUserReq(
              (b) => b.vars
                ..where.id = id
                ..data.name = name
                ..data.phoneNumber = phoneNumber
                ..data.email = email,
            ),
          )
          .first;
      if (response.linkException != null) {
        throw response.linkException!;
      }
      if (response.data?.updateUser != null) {
        return response.data!.updateUser!.id;
      } else {
        return null;
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
}
