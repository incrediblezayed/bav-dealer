import 'dart:async';

import 'package:dealerapp/src/app/UI/Homepage/homepage.dart';
import 'package:dealerapp/src/app/UI/forgot_password/password_change_success_page.dart';
import 'package:dealerapp/src/app/UI/login/login_page.dart';
import 'package:dealerapp/src/app/UI/signup/address_page.dart';
import 'package:dealerapp/src/app/UI/signup/enter_your_details_page.dart';
import 'package:dealerapp/src/app/UI/signup/otp_verification_page.dart';
import 'package:dealerapp/src/app/UI/signup/signup_page.dart';
import 'package:dealerapp/src/app/model/user.model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/auth/auth_repository.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

enum LoginState { success, failure, otpVerification }

///Auth Provider Instance

///Auth Class
class AuthProvider extends ChangeNotifier {
  ///Page controller
  PageController signUpPageController = PageController();

  ///Mobile Controller
  ///
  ///
  bool _agree = false;

  bool get agree => _agree;

  XFile? _image;

  ///Getter for image
  XFile? get image => _image;

  set image(XFile? value) {
    _image = value;
    notifyListeners();
  }

  set agree(bool value) {
    _agree = value;
    notifyListeners();
  }

  ///Pick Image Function
  Future<void> pickImage() async {
    try {
      final xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (xFile != null) {
        image = xFile;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  ///Method to get the user from the database
  Future<GUserData_user?> getUser(String id) async {
    final data = await _authRepository.getUser(userId: id);

    if (data == null) {
      await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      return null;
    } else {
      await cacheProvider.setUser(data);
      return data;
    }
  }

  Future<GDealerData_dealers?> getDealerByUserId() async {
    return _authRepository.getDealerByUser();
  }

  final AuthRepository _authRepository = AuthRepository();

  Future<void> createDealer() async {
    final user = cacheProvider.getUserId();
    final check = await _authRepository.createDealer(user!);
    if (check != null) {
      await cacheProvider.clear();
      clear();
      await AppRoutes.showSuccessSnackbar(
        message:
            'Dealer Created Successfully, Please wait for admin approval & Login',
      );
      unawaited(AppRoutes.push(page: const LoginPage()));
    } else {
      await AppRoutes.showErrorSnackbar(message: 'Something Went Wrong');
    }
  }

  Future<GDealerData_dealers?> getDealerId() async {
    return _authRepository.getDealerByUser();
  }

  Future<void> register() async {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        emailIdController.text.isEmpty ||
        passwordController.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter all fields');
      return;
    }

    if (_agree == false) {
      await AppRoutes.showErrorSnackbar(
        message: 'Please agree to terms and conditions',
      );
      return;
    }
    final isEmailInUse = await checkIsUserRegistered(
        phoneNumber: null, email: emailIdController.text);
    if (isEmailInUse) {
      AppRoutes.showErrorSnackbar(message: 'Email is already in use');
      return;
    }
    unawaited(AppRoutes.showLoadingDialog());
    try {
      final response = await _authRepository.register(
          name: '${firstNameController.text} ${lastNameController.text}',
          phoneNumber: phoneNumberController.text,
          email: emailIdController.text,
          password: passwordController.text,
          city: shopAddressController.text);

      if (response) {
        final loggedIn = await loginApi(fromSignUp: true);
        if (loggedIn == LoginState.failure) {
          await AppRoutes.showErrorSnackbar(message: 'Failed to register User');
          return;
        } else {
          await signUpPageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }
      }
    } catch (e) {
      AppRoutes.showErrorSnackbar(message: e.toString());
      print(e);
    } finally {
      AppRoutes.pop();
    }
  }

  String userId = '';

  /// This Method hits the login api and gets the relevant data back
  /// [fromSignUp] is used to check if the user is logging in
  Future<LoginState> loginApi({required bool fromSignUp}) async {
    final data = await _authRepository.login(
      phoneNumberController.text,
      passwordController.text,
    );

    if (data.containsKey('message')) {
      await AppRoutes.showErrorSnackbar(message: data['message'] as String);
      return LoginState.failure;
    } else {
      final sessionToken = data['sessionToken'] as String;
      await cacheProvider.setSessionToken(sessionToken);
      final user = UserModel.fromJson(data['item'] as Map<String, dynamic>);

      if (!fromSignUp) {
        bool isPhoneVerified = user.phoneNumberVerified ?? false;
        if (!isPhoneVerified) {
          userId = user.id!;
          await _authRepository.updateUser(
              image: null,
              userDio: true,
              id: user.id!,
              email: user.email!,
              phoneNumber: user.phoneNumber!,
              name: user.name!);
          await getCurrentUserOtp(isEmail: false);
          return LoginState.otpVerification;
        }
        if (user.deactivate) {
          await AppRoutes.showErrorSnackbar(
              message: 'User not found Please register');
          return LoginState.failure;
        }
      }

      final newUser = await _authRepository.getUser(userId: user.id!);
      await cacheProvider.setUserId(user.id!);
      userId = user.id!;
      if (!fromSignUp) {
        await cacheProvider.setUser(newUser!);
      } else {
        await _authRepository.updateUser(
          userDio: true,
          id: user.id!,
          name: newUser!.name!,
          email: newUser.email!,
          phoneNumber: newUser.phoneNumber!,
          image: _image?.path,
        );
        await getCurrentUserOtp(isEmail: false);
      }
      return LoginState.success;
    }
  }

  Future<void> resendOTPForSignUp() async {
    if (userId.isNotEmpty) {
      await _authRepository.updateUserForOtp(
        id: userId,
        phoneNumber: phoneNumberController.text,
      );
    } else {
      await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
    }
  }

  /// Get CurrentUserOtp for loggedIn user
  Future<void> getCurrentUserOtp({required bool isEmail}) async {
    try {
      String? otp;
      if (isEmail) {
        otp = await _authRepository.getCurrentOtp('emailVerification');
      } else {
        otp = await _authRepository.getCurrentOtp('phoneNumberVerification');
      }
      if (otp != null) {
        print('$otp, +++++++++++++++++++++OTP+++++++++++++++');
        /*    AppRoutes.showSuccessSnackbar(
          message: otp,
          duration: const Duration(minutes: 1),
        ); */
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Failed to get OTP',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  ///Login Method
  ///
  ///It is used to login the user
  ///from the sign up page, this is mainly for the loading dialog
  Future<void> login() async {
    if (phoneNumberController.text.isEmpty || passwordController.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(
        message: 'Please enter phone and password',
      );
      return;
    }

    if (phoneNumberController.text.length < 10) {
      await AppRoutes.showErrorSnackbar(
        message: 'Phone number must be 10 numbers',
      );
      return;
    }

    unawaited(AppRoutes.showLoadingDialog());
    final response = await loginApi(fromSignUp: false);
    AppRoutes.pop();
    if (response == LoginState.success) {
      final dealer = await getDealerId();
      if (dealer != null) {
        if (dealer.approved ?? false) {
          await cacheProvider.setDealerId(dealer);
          clear();
          await AppRoutes.pushAndRemoveUntil(page: const HomePage());
        } else {
          await AppRoutes.showErrorSnackbar(
            message:
                'You are not approved yet. Please wait for approval from admin',
          );
          await cacheProvider.clear();
        }
      } else {
        await createDealer();
        await cacheProvider.clear();
      }
    } else if (response == LoginState.otpVerification) {
      AppRoutes.push(
          page: const OTPVerificationPage(
        isLoginVerification: true,
      ));
    }
  }

  ///Validate OTP Method
  ///
  ///It is used to Validate the user
  Future<void> validateOTP({
    required String key,
    bool isLoginVerificaion = false,
    String? otp,
  }) async {
    try {
      final otpKey = switch (key) {
        'email' => 'emailVerification',
        'phone' => 'phoneNumberVerification',
        'mou' => 'dealerMOUApproval',
        _ => throw Exception('Invalid key'),
      };
      final response = await _authRepository.validateOTP(
        otpKey,
        otp ?? otpController.text,
      );

      if (response == 'OTP Success') {
        if (key == 'mou') {
          AppRoutes.showSuccessSnackbar(message: 'OTP Verified Successfully');
        } else if (isLoginVerificaion) {
          await login();
        } else {
          await createDealer();
        }
      } else if (response == 'OTP Failed') {
        throw 'Invalid OTP';
      } else {
        throw response;
      }
    } catch (e) {
      String text = e.toString();
      if (text.contains('Exception:')) {
        text = text.split('Exception:').last;
      }
      await AppRoutes.showErrorSnackbar(message: text);
    }
  }

  Future<bool> sendMouApprovalOTP() async {
    return await _authRepository.sendMouApprovalOTP();
  }

  PageController pageController = PageController();

  ///
  TextEditingController mobileController = TextEditingController();

  ///OTP Controller
  TextEditingController otpController = TextEditingController();

  ///Name Controller
  TextEditingController firstNameController = TextEditingController();

  ///
  TextEditingController lastNameController = TextEditingController();

  ///
  TextEditingController phoneNumberController =
      TextEditingController(text: kDebugMode ? '6281082551' : '');

  ///
  TextEditingController emailIdController = TextEditingController();

  ///
  TextEditingController passwordController =
      TextEditingController(text: kDebugMode ? '123456789' : '');

  ///
  TextEditingController confirmPasswordController = TextEditingController();

  ///
  TextEditingController reTypeNewPasswordController = TextEditingController();

  ///
  TextEditingController shopAddressController = TextEditingController();

  ///index
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  set currentPageIndex(int i) {
    _currentPageIndex = i;
    notifyListeners();
  }

  Position? _position;

  Position? get position => _position;

  set position(Position? value) {
    _position = value;
    notifyListeners();
  }

  void clear() {
    phoneNumberController.clear();
    passwordController.clear();
    otpController.clear();
    /* for (final element in otpController) {
      element.clear();
    } */
    firstNameController.clear();
    lastNameController.clear();
    emailIdController.clear();
    confirmPasswordController.clear();
    reTypeNewPasswordController.clear();
    shopAddressController.clear();
    notifyListeners();
  }

  ///List of sign up pages
  final List<Widget> signUpPages = [
    const SignUpPage(),
    const EnterYourDetailsPage(),
    const AddressPage(),
    const OTPVerificationPage(),

    // const AddEmailPage(),

    // const CreateYourPasswordPage(),
  ];

  ///password
  bool isPassword = true;

  ///function
  void isObsecure() {
    isPassword = !isPassword;
    notifyListeners();
  }

  Future<(String, String, String, String)?> getAddressFromLatLong(
      LatLng latLng) async {
    final address = await _authRepository.getAddressFromLatlng(latLng: latLng);

    return address;
  }

  ///Method to update the user
  Future<void> updateUser({
    required String id,
    required String email,
    required String phoneNumber,
    required String name,
    String? address,
  }) async {
    try {
      final response = await _authRepository.updateUser(
        userDio: false,
        id: id,
        email: email,
        phoneNumber: phoneNumber,
        name: name,
        image: _image?.path,
        address: address,
      );
      if (response == null) {
        await AppRoutes.showErrorSnackbar(
          message: response ?? 'Something went wrong',
        );
      } else {
        final userResponse = await getUser(id);
        await cacheProvider.setUser(userResponse!);
        await AppRoutes.showSuccessSnackbar(
          message: 'Profile updated successfully',
        );
      }
    } catch (e) {
      await AppRoutes.showErrorSnackbar(
        message: (e as dynamic)?.message != null
            ? (e as dynamic).message.toString()
            : 'Something went wrong',
      );
    } finally {
      notifyListeners();
    }
  }

  ///Send Password Reset Token
  ///
  ///It is used to send the password reset token to the user
  Future<void> sendPasswordResetToken({bool isResend = false}) async {
    if (!isResend) {
      if (phoneNumberController.text.isEmpty) {
        await AppRoutes.showErrorSnackbar(message: 'Please enter phone number');
        return;
      }
    }
    unawaited(AppRoutes.showLoadingDialog<void>());
    final data = await _authRepository.sendPasswordResetToken(
      phoneNumber: phoneNumberController.text,
    );
    AppRoutes.pop();
    if (data == null) {
      await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
    } else {
      if (isResend) {
        await AppRoutes.showSuccessSnackbar(message: 'OTP resent successfully');
      } else {
        await AppRoutes.showSuccessSnackbar(message: 'OTP sent successfully');
      }
      //AppRoutes.showSuccessSnackbar(message: data);
      'OTP: $data'.log();
      if (!isResend) {
        await signUpPageController.animateToPage(
          1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
      notifyListeners();
    }
  }

  ///Verify password reset token
  ///
  ///It is used to verify the OTP sent to the user for password reset
  Future<void> verifyPasswordResetToken() async {
    if (phoneNumberController.text.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter phone number');
      return;
    }
    final otp = otpController.text;
    if (otp.isEmpty) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter OTP');
      return;
    }
    if (otp.length < 6) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter valid OTP');
      return;
    }
    final data = await _authRepository.verifyPasswordResetToken(
      phoneNumber: phoneNumberController.text,
      token: otp,
    );
    if (!data) {
      await AppRoutes.showErrorSnackbar(message: 'Please enter valid OTP');
    } else {
      await AppRoutes.showSuccessSnackbar(message: 'OTP verified successfully');
      await signUpPageController.animateToPage(
        2,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      notifyListeners();
    }
  }

  ///Reset Password
  Future<void> resetPassword() async {
    try {
      if (passwordController.text.isEmpty) {
        await AppRoutes.showErrorSnackbar(message: 'Please enter password');
        return;
      }
      final data = await _authRepository.resetPassword(
        phoneNumber: phoneNumberController.text,
        password: passwordController.text,
        token: otpController.text,
      );
      if (!data) {
        await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      } else {
        await AppRoutes.showSuccessSnackbar(
          message: 'Password reset successfully',
        );
        await cacheProvider.clear();
        await AppRoutes.pushAndRemoveUntil(
          page: const PasswordChangeSuccessPage(),
        );
      }
    } catch (e) {
      await AppRoutes.showErrorSnackbar(message: e.toString());
    }
  }

  Future<void> deactivateUser() async {
    final res = await _authRepository.deactivateUser();
    if (res) {
      await cacheProvider.clear();
      await AppRoutes.pushAndRemoveUntil(page: const LoginPage());
    } else {
      await AppRoutes.showErrorSnackbar(message: 'Something went wrong');
    }
  }

  Future<void> updatePosition() async {
    var pos = await _determinePosition();
    position = pos;
  }

  Future<Position?> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await AppRoutes.showInfoDialog(
        title: 'Enable Location',
        message: 'Please enable location for a smooth service',
        action: [
          TextButton(
            onPressed: () {
              AppRoutes.pop();
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () async {
              AppRoutes.pop();
              await Geolocator.openLocationSettings();
            },
            child: const Text('Yes'),
          ),
        ],
      );

      serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        Position? position = await Geolocator.getLastKnownPosition();
        if (position != null) {
          return position;
        } else {
          return null;
        }
      }
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> updateDealer() async {
    try {
      final response = await _authRepository.updateDealer(
          lat: position?.latitude ?? 0.0, long: position?.longitude ?? 0.0);
      if (response == null) {
        await AppRoutes.showErrorSnackbar(
          message: response ?? 'Something went wrong',
        );
      }
    } catch (e) {
      await AppRoutes.showErrorSnackbar(
        message: (e as dynamic)?.message != null
            ? (e as dynamic).message.toString()
            : 'Something went wrong',
      );
    }
    // finally {
    //   notifyListeners();
    // }
  }

  Future<bool> checkIsUserRegistered(
      {required String? phoneNumber, String? email}) async {
    try {
      final response = await _authRepository.checkIsUserRegistered(
          phoneNumber: phoneNumber, email: email);
      final isVerified = response;
      return isVerified;
    } catch (e) {
      throw Exception('Error checking user registration');
    }
  }
}
