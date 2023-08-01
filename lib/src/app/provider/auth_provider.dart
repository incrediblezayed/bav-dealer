import 'package:dealerapp/src/app/UI/login/signup/add_email_page.dart';
import 'package:dealerapp/src/app/UI/login/signup/address_page.dart';
import 'package:dealerapp/src/app/UI/login/signup/create_your_password.dart';
import 'package:dealerapp/src/app/UI/login/signup/enter_your_details_page.dart';
import 'package:dealerapp/src/app/UI/login/signup/otp_verification_page.dart';
import 'package:dealerapp/src/app/UI/login/signup/signup_page.dart';
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

  ///List of pages
  final List<Widget> pages = [
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

  voidPageViewZero() {
    // if (mobileController.text.isEmpty) {
    //             ScaffoldMessenger.of(context).showSnackBar(
    //               const SnackBar(
    //                 backgroundColor: AppTheme.primaryColor,
    //                 content: Text('Please Enter Mobile No.'),
    //               ),
    //             );
    //           } else if (mobileController.text.length != 10) {
    //             ScaffoldMessenger.of(context).showSnackBar(
    //               const SnackBar(
    //                 backgroundColor: AppTheme.primaryColor,
    //                 content: Text('Minimum 10 Characters'),
    //               ),
    //             );
    //           } else if (currentPageIndex <
    //             pages.length - 1) {
    //             pageController.animateToPage(
    //               currentPageIndex + 1,
    //               duration: const Duration(milliseconds: 300),
    //               curve: Curves.easeInOut,
    //             );
    //           } else {}
  }
}
