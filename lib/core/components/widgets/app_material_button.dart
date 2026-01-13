import 'package:flutter/material.dart';
import 'package:lady_driver/core/functions/extension.dart';
import 'package:lady_driver/core/theme/app_border_radius.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/core/theme/app_text_style.dart';

class AppMaterialButton extends StatelessWidget {
  const AppMaterialButton({
    super.key,
    required this.onPressed,
    required this.buttonString,
    this.isActive = false,
  });

  final VoidCallback onPressed;
  final String buttonString;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.r(4),
        color: isActive
            ? AppColors.transparentColor
            : AppColors.buttonNotActive,
      ),
      width: context.width,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.r(4)),
        elevation: 0,
        color: isActive ? AppColors.primaryColor : AppColors.buttonNotActive,
        onPressed: isActive ? onPressed : null,
        child: Text(
          buttonString,
          style: customAppTextStyle(
            size: AppFontSize.fontSize(12),
            color: isActive
                ? AppColors.secondaryColor
                : AppColors.mediumGreyColor,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
