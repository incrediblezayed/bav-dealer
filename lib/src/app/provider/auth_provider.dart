import 'dart:async';
import 'dart:io';

import 'package:dealerapp/src/app/UI/Homepage/homepage.dart';
import 'package:dealerapp/src/app/UI/forgot_password/change_password.dart';
import 'package:dealerapp/src/app/UI/forgot_password/forgot_password.dart';
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
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
  File? file;

  set agree(bool value) {
    _agree = value;
    notifyListeners();
  }

  ///Pick Image Function
  Future<void> pickImage() async {
    try {
      final xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (xFile != null) {
        file = File(xFile.path);
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
      AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      return null;
    } else {
      return data;
    }
  }

  final AuthRepository _authRepository = AuthRepository();

  Future<void> createDealer() async {
    final user = cacheProvider.getUserId();
    final check = await _authRepository.createDealer(user!);
    if (check != null) {
      await cacheProvider.setDealerId(check);
      await AppRoutes.push(page: const HomePage());
    } else {
      AppRoutes.showErrorSnackbar(message: 'Something Went Wrong');
    }
  }

  Future<String> getDealerId() async {
    return (await _authRepository.getDealerByUser()) ?? '';
  }

  Future<void> regsiter() async {
    try {
      if (firstNameController.text.isEmpty ||
          lastNameController.text.isEmpty ||
          phoneNumberController.text.isEmpty ||
          emailIdController.text.isEmpty ||
          passwordController.text.isEmpty) {
        AppRoutes.showErrorSnackbar(message: 'Please enter all fields');
        return;
      }

      if (_agree == false) {
        AppRoutes.showErrorSnackbar(
          message: 'Please agree to terms and conditions',
        );
        return;
      }

      final response = await _authRepository.register(
        name: '${firstNameController.text} ${lastNameController.text}',
        phoneNumber: phoneNumberController.text,
        email: emailIdController.text,
        password: passwordController.text,
      );

      if (response) {
        final loggedIn = await loginApi(fromSignUp: true);
        if (!loggedIn) {
          AppRoutes.showErrorSnackbar(message: 'Failed to create User');
          return;
        } else {
          await signUpPageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }
      }
    } catch (e) {
      print(e);
    }
  }

  /// This Method hits the login api and gets the relevant data back
  /// [fromSignUp] is used to check if the user is logging in
  Future<bool> loginApi({required bool fromSignUp}) async {
    final data = await _authRepository.login(
      phoneNumberController.text,
      passwordController.text,
    );
    if (data.containsKey('message')) {
      AppRoutes.showErrorSnackbar(message: data['message'] as String);
      return false;
    } else {
      final user = UserModel.fromJson(data['item'] as Map<String, dynamic>);
      if (!fromSignUp) {
        if (!(user.phoneNumberVerified ?? true)) {
          AppRoutes.showErrorSnackbar(message: 'User not verified');
          return false;
        }
      }
      final sessionToken = data['sessionToken'] as String;
      await cacheProvider.setSessionToken(sessionToken);
      final newUser = await _authRepository.getUser(userId: user.id!);
      await cacheProvider.setUserId(user.id!);

      if (!fromSignUp) {
        await cacheProvider.setUser(newUser!);
      } else {
        await _authRepository.updateUser(
          id: user.id!,
          name: newUser!.name!,
          email: newUser.email!,
          phoneNumber: newUser.phoneNumber!,
        );
        await getCurrentUserOtp(isEmail: false);
      }
      return true;
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
        AppRoutes.showSuccessSnackbar(message: otp);
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
      AppRoutes.showErrorSnackbar(message: 'Please enter phone and password');
      return;
    }

    if (phoneNumberController.text.length < 10) {
      AppRoutes.showErrorSnackbar(message: 'Phone number must be 10 numbers');
      return;
    }

    unawaited(AppRoutes.showLoadingDialog());
    final response = await loginApi(fromSignUp: false);
    AppRoutes.pop();
    if (response) {
      await cacheProvider.setDealerId(await getDealerId());
      await AppRoutes.pushAndRemoveUntil(page: const HomePage());
    }
  }

  ///Validate OTP Method
  ///
  ///It is used to Validate the user
  Future<void> validateOTP({required bool isEmail}) async {
    try {
      final key = isEmail ? 'emailVerification' : 'phoneNumberVerification';

      final response = await _authRepository.validateOTP(
        key,
        otpController.map((e) => e.text).join(),
      );
      if (response) {
        await createDealer();
      } else {
        throw Exception('Something went wrong');
      }
    } catch (e) {
      e.log();
      AppRoutes.showErrorSnackbar(message: e.toString());
    }
  }

  PageController pageController = PageController();

  ///
  TextEditingController mobileController = TextEditingController();

  ///OTP Controller
  List<TextEditingController> otpController =
      List.generate(6, (index) => TextEditingController());

  ///Name Controller
  TextEditingController firstNameController = TextEditingController();

  ///
  TextEditingController lastNameController = TextEditingController();

  ///
  TextEditingController phoneNumberController = TextEditingController();

  ///
  TextEditingController emailIdController = TextEditingController();

  ///
  TextEditingController passwordController = TextEditingController();

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

  ///List of forgot passwaord pages
  ///
  final List<Widget> forgotPasswordPages = [
    const ForgotPasswordPage(),
    const ChangePasswordPage(),
    // const PasswordChangeSuccessPage(),
  ];

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
}
