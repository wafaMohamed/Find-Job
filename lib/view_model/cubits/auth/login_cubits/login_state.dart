part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

//! --------------------------------------------------

class LoginInitial extends LoginState {}

class LoadingLoginState extends LoginState {}

class SuccessLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  final String errorMessage;

  ErrorLoginState(this.errorMessage);
}