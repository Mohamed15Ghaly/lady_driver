part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class Login extends AuthEvent with EquatableMixin {
  final String email;
  final String password;
  const Login({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
