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

  XFile? _image;

  List<FocusNode> otpNode = List.generate(6, (index) => FocusNode());

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
      AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      return null;
    } else {
      await cacheProvider.setUser(data);
      return data;
    }
  }

  final AuthRepository _authRepository = AuthRepository();

  Future<void> createDealer() async {
    final user = cacheProvider.getUserId();
    final check = await _authRepository.createDealer(user!);
    if (check != null) {
      await cacheProvider.clear();
      clear();
      AppRoutes.showSuccessSnackbar(
          message:
              'Dealer Created Successfully, Please wait for admin approval & Login');
      unawaited(AppRoutes.push(page: const LoginPage()));
    } else {
      AppRoutes.showErrorSnackbar(message: 'Something Went Wrong');
    }
  }

  Future<GDealerData_dealers?> getDealerId() async {
    return (await _authRepository.getDealerByUser());
  }

  Future<void> regsiter() async {
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
    unawaited(AppRoutes.showLoadingDialog());
    try {
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
    } finally {
      AppRoutes.pop();
    }
  }

  String userId = '';

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
      return true;
    }
  }

  Future<void> resendOTPForSignUp() async {
    if (userId.isNotEmpty) {
      await _authRepository.updateUserForOtp(
          id: userId, phoneNumber: phoneNumberController.text);
    } else {
      AppRoutes.showErrorSnackbar(message: 'Something went wrong');
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
        /*    AppRoutes.showSuccessSnackbar(
          message: otp,
          duration: const Duration(minutes: 1),
        ); */
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
      var dealer = await getDealerId();
      if (dealer != null) {
        if (dealer.approved ?? false) {
          await cacheProvider.setDealerId(dealer.id);
          clear();
          await AppRoutes.pushAndRemoveUntil(page: const HomePage());
        } else {
          AppRoutes.showErrorSnackbar(
              message:
                  "You are not approved yet. Please wait for approval from admin");
          cacheProvider.clear();
        }
      } else {
        AppRoutes.showErrorSnackbar(
            message: "Something went wrong please try agian later");
        cacheProvider.clear();
      }
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

  void clear() {
    phoneNumberController.clear();
    passwordController.clear();
    otpController.forEach((element) {
      element.clear();
    });
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
        AppRoutes.showErrorSnackbar(
          message: response ?? 'Something went wrong',
        );
      } else {
        final userResponse = await getUser(id);
        await cacheProvider.setUser(userResponse!);
        AppRoutes.showSuccessSnackbar(message: 'Profile updated successfully');
      }
    } catch (e) {
      AppRoutes.showErrorSnackbar(
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
        AppRoutes.showErrorSnackbar(message: 'Please enter phone number');
        return;
      }
    }
    unawaited(AppRoutes.showLoadingDialog<void>());
    final data = await _authRepository.sendPasswordResetToken(
      phoneNumber: phoneNumberController.text,
    );
    AppRoutes.pop();
    if (data == null) {
      AppRoutes.showErrorSnackbar(message: 'Something went wrong');
    } else {
      if (isResend) {
        AppRoutes.showSuccessSnackbar(message: 'OTP resent successfully');
      } else {
        AppRoutes.showSuccessSnackbar(message: 'OTP sent successfully');
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
      AppRoutes.showErrorSnackbar(message: 'Please enter phone number');
      return;
    }
    final otp = otpController.map((e) => e.text).join();
    if (otp.isEmpty) {
      AppRoutes.showErrorSnackbar(message: 'Please enter OTP');
      return;
    }
    if (otp.length < 6) {
      AppRoutes.showErrorSnackbar(message: 'Please enter valid OTP');
      return;
    }
    final data = await _authRepository.verifyPasswordResetToken(
      phoneNumber: phoneNumberController.text,
      token: otp,
    );
    if (!data) {
      AppRoutes.showErrorSnackbar(message: 'Something went wrong');
    } else {
      AppRoutes.showSuccessSnackbar(message: 'OTP verified successfully');
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
        AppRoutes.showErrorSnackbar(message: 'Please enter password');
        return;
      }
      final data = await _authRepository.resetPassword(
        phoneNumber: phoneNumberController.text,
        password: passwordController.text,
        token: otpController.map((e) => e.text).join(),
      );
      if (!data) {
        AppRoutes.showErrorSnackbar(message: 'Something went wrong');
      } else {
        AppRoutes.showSuccessSnackbar(message: 'Password reset successfully');
        await cacheProvider.clear();
        await AppRoutes.pushAndRemoveUntil(
            page: const PasswordChangeSuccessPage());
      }
    } catch (e) {
      AppRoutes.showErrorSnackbar(message: e.toString());
    }
  }
}
