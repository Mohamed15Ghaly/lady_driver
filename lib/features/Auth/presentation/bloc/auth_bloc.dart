import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lady_driver/core/functions/internet_connection_checker.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<Login>((event, emit) async {
      if (await internetConnectionChecker() == false) {
        emit(const Error(message: "لا يوجد اتصال بالانترنت "));
      }
      emit(Loading());
      await Future.delayed(const Duration(seconds: 3));
      emit(const Error(message: "حدث خطأ"));
    });
  }
}
