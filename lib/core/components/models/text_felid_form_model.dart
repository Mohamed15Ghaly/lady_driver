import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lady_driver/core/theme/app_colors.dart';

class TextFelidFormModel {
  TextFelidFormModel({
    this.hintText,
    this.labelText,

    required this.controller,
    required this.textInputType,
    this.suffixIcon,
    this.suffixOnPressed,
    this.onChange,
    this.obscureText,
    this.labelTextColor,
    this.prefixIcon,
    this.inputFormatters,
    this.isReadOnly = false,
    this.errorDescription,
  });
  final String? hintText, labelText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final TextInputType textInputType;
  bool? obscureText;
  IconData? suffixIcon;
  Function()? suffixOnPressed;
  Function()? onChange;
  Color? labelTextColor = AppColors.lightGreyColor;
  List<TextInputFormatter>? inputFormatters;
  final bool isReadOnly;
  final String? errorDescription;
}
