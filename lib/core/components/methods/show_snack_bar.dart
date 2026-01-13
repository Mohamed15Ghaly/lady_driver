import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/core/theme/app_text_style.dart';

void showFlushBar(BuildContext context, String message) {
  Flushbar(
    messageText: Text(
      message,
      style: customAppTextStyle(size: 12, color: AppColors.secondaryColor),
    ),
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(16),
    borderRadius: BorderRadius.circular(8),
    backgroundColor: AppColors.errorColor,
    flushbarPosition: FlushbarPosition.TOP,
    icon: const Icon(Icons.error_outline, color: AppColors.secondaryColor),
    isDismissible: true,
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    onTap: (flushbar) => flushbar.dismiss(),
  ).show(context);
}
