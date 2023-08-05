import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';

///Custom Textfield
class KTextField extends StatelessWidget {
  ///Custom Textfield
  KTextField({
    this.maxLength,
    super.key,
    this.hintText,
    this.label,
    this.controller,
    this.inputType,
    this.suffixIcon,
    this.prefixIcon,
    this.obsecureText = false,
  });

  String? hintText;
  String? label;
  Widget? suffixIcon;
  Widget? prefixIcon;

  bool obsecureText;
  TextEditingController? controller;
  TextInputType? inputType;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      controller: controller,
      obscureText: obsecureText,
      maxLength: maxLength,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        counterText: '',
        fillColor: AppTheme.white,
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.black.withOpacity(.2),
        label: Text(label ?? ''),
        labelStyle: const TextStyle(
          color: AppTheme.textColor,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
        ),
      ),
    );
  }
}
