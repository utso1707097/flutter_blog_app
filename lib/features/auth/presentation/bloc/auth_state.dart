part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uid;
  const AuthSuccess(this.uid);
}

final class AuthFailure extends AuthState {
  final String message;
  const AuthFailure(this.message);
}
