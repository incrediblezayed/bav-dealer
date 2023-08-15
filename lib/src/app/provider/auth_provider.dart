import 'package:dealerapp/src/app/UI/forgot_password/change_password.dart';
import 'package:dealerapp/src/app/UI/forgot_password/forgot_password.dart';
import 'package:dealerapp/src/app/UI/signup/add_email_page.dart';
import 'package:dealerapp/src/app/UI/signup/address_page.dart';
import 'package:dealerapp/src/app/UI/signup/create_your_password.dart';
import 'package:dealerapp/src/app/UI/signup/enter_your_details_page.dart';
import 'package:dealerapp/src/app/UI/signup/otp_verification_page.dart';
import 'package:dealerapp/src/app/UI/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Auth Provider Instance
final authProvider = ChangeNotifierProvider((ref) => AuthProvider());

///Auth Class
class AuthProvider extends ChangeNotifier {
  ///Page controller
  PageController pageController = PageController();

  ///
  TextEditingController mobileController = TextEditingController();

  ///OTP Controller
  List<TextEditingController> otpController =
      List.generate(4, (index) => TextEditingController());

  ///Name Controller
  TextEditingController firstNameController = TextEditingController();

  ///
  TextEditingController lastNameController = TextEditingController();

  ///
  TextEditingController phoneNumberController = TextEditingController();

  ///
  TextEditingController emailIdController = TextEditingController();

  ///
  TextEditingController newPasswordController = TextEditingController();

  ///
  TextEditingController reTypeNewPasswordController = TextEditingController();

  ///
  TextEditingController shopAddressController = TextEditingController();

  ///index
  int currentPageIndex = 0;

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
    const OTPVerificationPage(),
    const EnterYourDetailsPage(),
    const AddressPage(),
    const AddEmailPage(),
    const CreateYourPasswordPage(),
  ];

  ///password
  bool isPassword = true;

  ///function
  void isObsecure() {
    isPassword = !isPassword;
    notifyListeners();
  }
}
