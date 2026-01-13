import 'package:flutter/material.dart';
import 'package:lady_driver/core/theme/app_colors.dart';

enum AppFont { clashDisplay, cairo, almarai }

class AppFontSize {
  static double fontSize(double x) => x;
}

TextStyle customAppTextStyle({
  Color color = AppColors.textColor,
  required double size,
  FontWeight? weight,
}) {
  return TextStyle(
    fontFamily: "Alexandria",
    color: color,
    fontSize: size,
    fontWeight: weight ?? FontWeight.normal,
  );
}
