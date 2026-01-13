part of 'auth_bloc.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

class Loading extends AuthState {}

class Success extends AuthState {}

class Error extends AuthState with EquatableMixin {
  final String message;
  const Error({required this.message});
  @override
  List<Object?> get props => [message];
}
