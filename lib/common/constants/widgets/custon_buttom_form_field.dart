import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';

class CustomTextformField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  CustomTextformField({
    Key? key,
    required this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.controller,
    this.keyBoardType,
    this.maxLength, this.textInputAction,
  }) : super(key: key);

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  final defaultBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greenlightTwo));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
      child: TextFormField(
        textInputAction: widget.textInputAction,
        maxLength: widget.maxLength,
        keyboardType: widget.keyBoardType,
        controller: widget.controller,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle:
              AppTextStyle.inputLabelText.copyWith(color: AppColors.grey),
          labelText: widget.labelText?.toUpperCase(),
          border: defaultBorder,
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(
            color: Colors.red,
          )),
          focusedErrorBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(
            color: Colors.red,
          )),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}