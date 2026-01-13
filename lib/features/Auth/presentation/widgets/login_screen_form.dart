import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lady_driver/core/components/models/text_felid_form_model.dart';
import 'package:lady_driver/core/components/widgets/app_text_form_field.dart';
import 'package:lady_driver/core/functions/extension.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final ValueNotifier<bool> isPasswordVisible;
  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.isPasswordVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          FadeInLeft(
            child: AppTextFormField(
              textFelidFormModel: TextFelidFormModel(
                hintText: "البريد الإلكتروني",
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
                errorDescription: "بريد إلكتروني حقيقي",
              ),
            ),
          ),
          SizedBox(height: context.height * 0.025),
          ValueListenableBuilder(
            valueListenable: isPasswordVisible,
            builder: (context, value, child) {
              return FadeInRight(
                child: AppTextFormField(
                  textFelidFormModel: TextFelidFormModel(
                    hintText: "كلمة المرور",
                    controller: passwordController,
                    textInputType: TextInputType.visiblePassword,
                    prefixIcon: isPasswordVisible.value == true
                        ? Icons.lock_open_outlined
                        : Icons.lock_outlined,
                    obscureText: !isPasswordVisible.value,
                    suffixIcon: isPasswordVisible.value == true
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off_outlined,

                    suffixOnPressed: () =>
                        isPasswordVisible.value = !isPasswordVisible.value,
                    errorDescription: "كلمة مرور تحتوي علي حروف و ارقام",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
