import 'package:find_job_amit/data_layer/repositry/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../data_layer/model/login_model.dart';
import '../../../data_layer/repositry/dio_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  LoginResponse? user;

  // User? user;

  login(String email, String password) async {
    emit(LoadingLoginState());
    try {
      final response = await DioHelper.dio.post(
        EndPoints.loginEndPoint,
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        emit(SuccessLoginState());

        /// Show a toast message for successful login
        Fluttertoast.showToast(
          msg: 'Login successful!',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
      } else if (response.statusCode == 401) {
        emit(ErrorLoginState('Invalid credentials. Please try again.'));

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
        emit(ErrorLoginState('An error occurred during login.'));

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
      emit(ErrorLoginState('An error occurred during login.'));

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

/* register(String email, String name, String mobile, String pass) async {
    emit(LoadingRegisterState());
    await DioHelper.dio
        .post(
      registerEndPoint,
      data: FormData.fromMap({
        "name": name,
        "email": email,
        "password": pass,
        "mobile": mobile,
      }),
    )
        .then((value) {
      if (value.statusCode == 200) {
        emit(SuccessRegisterState());
      } else {
        print(value.data);
        emit(ErrorRegisterState());
      }
    }).catchError((error) {
      print(error.toString());
      emit(ErrorRegisterState());
    });
  }*/
