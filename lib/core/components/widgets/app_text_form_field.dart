import 'package:flutter/material.dart';
import 'package:lady_driver/core/components/models/text_felid_form_model.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/core/theme/app_text_style.dart';

class AppTextFormField extends StatelessWidget {
  final TextFelidFormModel textFelidFormModel;
  const AppTextFormField({super.key, required this.textFelidFormModel});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: textFelidFormModel.isReadOnly,
      inputFormatters: textFelidFormModel.inputFormatters ?? [],
      onTapOutside: (textField) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: (value) => textFelidFormModel.onChange?.call(),
      onFieldSubmitted: (_) {
        FocusScope.of(context).nextFocus();
      },
      
      textInputAction: TextInputAction.next,
      controller: textFelidFormModel.controller,
      obscureText: textFelidFormModel.obscureText ?? false,
      decoration: InputDecoration(
        hintStyle: customAppTextStyle(size: 12, color: AppColors.fourthColor),
        hintText: textFelidFormModel.hintText,
        labelText: textFelidFormModel.labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(color: textFelidFormModel.labelTextColor),
        prefixIcon: textFelidFormModel.prefixIcon != null
            ? Icon(textFelidFormModel.prefixIcon, color: AppColors.fourthColor)
            : null,
        suffixIcon: textFelidFormModel.suffixIcon != null
            ? IconButton(
                onPressed: textFelidFormModel.suffixOnPressed,
                icon: Icon(
                  textFelidFormModel.suffixIcon,
                  color: AppColors.fourthColor,
                ),
              )
            : null,
      ),
      style: customAppTextStyle(
        size: AppFontSize.fontSize(14),
        color: AppColors.primaryColor,
      ),
      keyboardType: textFelidFormModel.textInputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (text) {
        if (textFelidFormModel.controller.text.trim().isEmpty) {
          return "برجاء ادخال ${textFelidFormModel.errorDescription}";
        }
        return null;
      },
    );
  }
}
