import 'package:flutter/material.dart';
import 'package:lady_driver/core/functions/extension.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/core/theme/app_text_style.dart';
import 'package:lady_driver/features/Auth/presentation/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("تسجيل الدخول")),
      bottomNavigationBar: SizedBox(
        height: 50,
        width: context.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ليس لديك حساب ؟",
                style: customAppTextStyle(
                  size: 12,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(width: context.width * 0.025),
              InkWell(
                child: Text(
                  "انشاء حساب",
                  style: customAppTextStyle(
                    size: 12,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const LoginScreenBody(),
    );
  }
}
