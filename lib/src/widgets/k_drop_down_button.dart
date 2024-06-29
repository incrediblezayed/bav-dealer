import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KDropDownButton extends StatelessWidget {
  const KDropDownButton({
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
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.items,
  });

  final String? hintText;
  final int? maxLines;
  final bool? readOnly;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obsecureText;
  final int? maxLength;
  final List<DropdownMenuItem<String>>? items;

  final void Function(String value)? onChanged;
  final FocusNode? focusNode;
  final BoxConstraints? suffixIconConstraints;
  final Widget Function(BuildContext context, EditableTextState state)?
      contextMenuBuilder;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        fillColor: AppTheme.white,
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.black.withOpacity(.2),
        labelText: label,
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
      items: items,
      onChanged: onChanged != null ? (value) => onChanged!(value!) : null,
    );
  }
}
