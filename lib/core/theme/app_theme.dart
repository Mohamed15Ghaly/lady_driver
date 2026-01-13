import 'package:flutter/material.dart';
import 'package:lady_driver/core/theme/app_border_radius.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/core/theme/app_text_style.dart';

ThemeData lightMode() {
  return ThemeData(
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(AppColors.defaultBackgroundColor),
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.r(5)),
      side: const BorderSide(color: AppColors.primaryColor, width: 1.5),
      checkColor: WidgetStateProperty.all(AppColors.primaryColor),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      closeIconColor: AppColors.secondaryColor,
      backgroundColor: AppColors.thirdColor.withValues(alpha: .5),
      contentTextStyle: customAppTextStyle(
        size: AppFontSize.fontSize(14),
        color: AppColors.secondaryColor,
      ),
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.r(10)),
      actionTextColor: AppColors.primaryColor,
      showCloseIcon: true,
      dismissDirection: DismissDirection.down,
      disabledActionTextColor: AppColors.secondaryColor,
      actionOverflowThreshold: 0.5,
      actionBackgroundColor: AppColors.primaryColor,
      disabledActionBackgroundColor: AppColors.secondaryColor,
      elevation: 10,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
    brightness: Brightness.light,
    fontFamily: "ClashDisplay",
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      seedColor: AppColors.primaryColor,
    ),
    useMaterial3: false,
    tooltipTheme: TooltipThemeData(
      textStyle: customAppTextStyle(
        size: AppFontSize.fontSize(14),
        color: AppColors.secondaryColor,
      ),
      decoration: BoxDecoration(
        color: AppColors.mediumGreyColor,
        borderRadius: AppBorderRadius.r(5),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 39, 11, 11),
        textStyle: customAppTextStyle(
          size: AppFontSize.fontSize(14),
          color: AppColors.secondaryColor,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.defaultBackgroundColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.thirdColor),
      titleTextStyle: customAppTextStyle(
        size: AppFontSize.fontSize(16),
        color: AppColors.thirdColor,
        weight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.fourthColor,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: customAppTextStyle(
        size: AppFontSize.fontSize(10),
        color: AppColors.primaryColor,
      ),
      unselectedLabelStyle: customAppTextStyle(
        size: AppFontSize.fontSize(10),
        color: AppColors.fourthColor,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.transparentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: AppBorderRadius.onlyR(20),
          topRight: AppBorderRadius.onlyR(20),
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.secondaryColor),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.r(16)),
      height: 56,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: customAppTextStyle(size: AppFontSize.fontSize(12)),
      labelStyle: customAppTextStyle(
        size: AppFontSize.fontSize(12),
        color: AppColors.fourthColor,
      ),
      filled: true,
      fillColor: AppColors.fillColor,
      counterStyle: customAppTextStyle(
        size: AppFontSize.fontSize(12),
        color: AppColors.fourthColor,
      ),
      border: OutlineInputBorder(borderRadius: AppBorderRadius.r(16)),
      enabledBorder: OutlineInputBorder(
        borderRadius: AppBorderRadius.r(8),
        borderSide: const BorderSide(color: AppColors.thirdColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppBorderRadius.r(8),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: AppBorderRadius.r(8),
        borderSide: const BorderSide(color: AppColors.errorColor),
      ),
      errorStyle: customAppTextStyle(
        size: AppFontSize.fontSize(12),
        color: AppColors.errorColor,
        weight: FontWeight.bold,
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.r(16)),
    ),
  );
}
