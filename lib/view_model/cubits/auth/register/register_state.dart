part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

//! --------------------------------------------------
class LoadingRegisterState extends RegisterState {}

class SuccessRegisterState extends RegisterState {}

class ErrorRegisterState extends RegisterState {
  final String errorMessage;

  ErrorRegisterState(this.errorMessage);
}
