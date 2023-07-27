import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../data_layer/model/register_model.dart';
import '../../../data_layer/repositry/dio_helper.dart';
import '../../../data_layer/repositry/endpoints.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);
  RegisterResponse? data;

  register(String name, String email, String password) async {
    emit(LoadingRegisterState());
    try {
      final response = await DioHelper.dio.post(
        EndPoints.registerEndPoint,
        data: {
          "name": name,
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        emit(SuccessRegisterState());

        /// Show a toast message for successful login
        Fluttertoast.showToast(
          msg: 'registration successful!',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
      } else if (response.statusCode == 401) {
        emit(ErrorRegisterState('Invalid credentials. Please try again.'));

        /// Show a toast message for login error
        Fluttertoast.showToast(
          msg: 'Invalid credentials. Please try again.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      } else {
        print(response.data);
        emit(ErrorRegisterState('An error occurred during register.'));

        /// Show a toast message for login error
        Fluttertoast.showToast(
          msg: 'An error occurred during login.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    } catch (error) {
      print(error.toString());
      emit(ErrorRegisterState('An error occurred during register.'));

      /// Show a toast message for login error
      Fluttertoast.showToast(
        msg: 'An error occurred during login.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }
  }
}
