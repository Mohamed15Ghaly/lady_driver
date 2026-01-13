import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lady_driver/core/theme/app_theme.dart';
import 'package:lady_driver/features/Auth/presentation/bloc/auth_bloc.dart';
import 'package:lady_driver/features/Auth/presentation/pages/login_screen.dart';
import 'package:lady_driver/l10n/app_localizations.dart';

class LadyDriver extends StatelessWidget {
  const LadyDriver({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lady Driver',
      theme: lightMode(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ar')],
      locale: const Locale('ar'),
      home: BlocProvider(
        create: (context) => AuthBloc(),
        child: const LoginScreen(),
      ),
    );
  }
}
