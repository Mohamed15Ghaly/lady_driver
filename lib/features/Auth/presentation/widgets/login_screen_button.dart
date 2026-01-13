import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lady_driver/core/components/methods/show_snack_bar.dart';
import 'package:lady_driver/core/components/widgets/app_material_button.dart';
import 'package:lady_driver/core/functions/app_regex.dart';
import 'package:lady_driver/features/Auth/presentation/bloc/auth_bloc.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final ValueNotifier<bool> isEmpty;
  const LoginButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.isEmpty,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isEmpty,
      builder: (context, value, child) {
        return AppMaterialButton(
          isActive: isEmpty.value,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              if (!AppRegex.isEmailValid(emailController.text.trim())) {
                showFlushBar(context, 'البريد إلكتروني غير صحيح');
              } else if (!AppRegex.passwordSatisfyAllCondition(
                passwordController.text.trim(),
              )) {
                showFlushBar(
                  context,
                  'كلمة المرور غير صحيحة يجب أن تحتوي علي 8 حروف ورقم وحرف كبير وحرف صغير وحرف خاص ',
                );
              } else {
                final cubit = context.read<AuthBloc>();
                cubit.add(
                  Login(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  ),
                );
              }
            }
          },
          buttonString: 'تسجيل الدخول',
        );
      },
    );
  }
}
