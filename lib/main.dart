import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lady_driver/core/functions/bloc_service.dart';
import 'package:lady_driver/core/theme/app_colors.dart';
import 'package:lady_driver/lady_driver.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocService();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.transparentColor,
    ),
  );

  runApp(const LadyDriver());
}
