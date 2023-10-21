// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///Custom Textfield
class KTextField extends StatelessWidget {
  ///Custom Textfield
  const KTextField({
    super.key,
    this.hintText,
    this.readOnly,
    this.inputType,
    this.controller,
    this.inputFormatters,
    this.label,
    this.suffixIcon,
    this.prefixIcon,
    this.obsecureText = false,
    this.maxLength,
    this.suffixIconConstraints,
    this.onChanged,
    this.contextMenuBuilder,
    this.focusNode,
  });

  ///hintText
  final String? hintText;

  final bool? readOnly;

  final TextInputType? inputType;

  final TextEditingController? controller;

  final List<TextInputFormatter>? inputFormatters;

  ///label
  final String? label;

  ///suffixIcon
  final Widget? suffixIcon;

  ///prefixIcon
  final Widget? prefixIcon;

  /// obsecureText
  final bool obsecureText;

  /// controller

  ///inputType

  ///text length
  final int? maxLength;

  final void Function(String? value)? onChanged;

  final FocusNode? focusNode;

  final BoxConstraints? suffixIconConstraints;
  final Widget Function(BuildContext context, EditableTextState state)?
      contextMenuBuilder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      contextMenuBuilder: contextMenuBuilder,
      onChanged: onChanged,
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
        suffixIconConstraints: suffixIconConstraints,
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
