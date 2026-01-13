import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lady_driver/core/components/methods/show_snack_bar.dart';
import 'package:lady_driver/core/functions/extension.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/core/theme/app_text_style.dart';
import 'package:lady_driver/features/Auth/presentation/bloc/auth_bloc.dart';
import 'package:lady_driver/features/Auth/presentation/widgets/login_screen_button.dart';
import 'package:lady_driver/features/Auth/presentation/widgets/login_screen_form.dart';
import 'package:lady_driver/gen/assets.gen.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final ValueNotifier<bool> isPasswordVisible = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isEmpty = ValueNotifier<bool>(false);
  final ValueNotifier<bool> rememberMe = ValueNotifier<bool>(false);
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    _emailController.addListener(checkEmpty);
    _passwordController.addListener(checkEmpty);
  }

  void checkEmpty() {
    isEmpty.value =
        _emailController.text.trim().isNotEmpty &&
        _passwordController.text.trim().isNotEmpty;
  }

  @override
  void dispose() {
    isPasswordVisible.dispose();
    isEmpty.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Assets.images.byMyCarCuate.image(),
            LoginForm(
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController,
              isPasswordVisible: isPasswordVisible,
            ),
            SizedBox(height: context.height * 0.01),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                child: Text(
                  "هل نسيت كلمة المرور ؟",
                  style: customAppTextStyle(
                    size: AppFontSize.fontSize(12),
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                ValueListenableBuilder(
                  valueListenable: rememberMe,
                  builder: (context, value, child) {
                    return Checkbox(
                      value: value,
                      onChanged: (value) {
                        rememberMe.value = value ?? false;
                      },
                    );
                  },
                ),
                Text(
                  "تذكرني",
                  style: customAppTextStyle(
                    size: AppFontSize.fontSize(12),
                    color: AppColors.fourthColor,
                  ),
                ),
              ],
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is Error) {
                  showFlushBar(context, state.message);
                }
              },
              builder: (context, state) {
                if (state is Loading) {
                  return const SpinKitFadingCircle(
                    color: AppColors.primaryColor,
                  );
                }
                return LoginButton(
                  formKey: _formKey,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  isEmpty: isEmpty,
                );
              },
            ),
          ],
        ),
      ).paddingAll(36),
    );
  }
}
