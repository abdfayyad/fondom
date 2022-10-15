

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../util/constance/end_points.dart';
import '../../../../util/dio_helper.dart';
import '../../data/models.dart';
import 'status.dart';
// import 'package:http/http.dart'as http;


class LoginCubit extends Cubit<LoginScreenStates>
{
  LoginCubit( ):super(LoginInitialState()) ;
  static LoginCubit get(context)=>BlocProvider.of(context);
 // final DioHelper dioHelper;
 late LoginModel loginModel;
  String ? errorState;
//
//   userLoginIn(email,password)async
//   {
//     emit(LoginLoadingState());
//     DioHelper.postData(
//         url:baseLogin,
//         data:{
//           'email':email,
//           'password':password,
//         }).then((value) {
// print(loginModel?.status);
// print(loginModel?.message);
//       loginModel=LoginModel.fromJson(value.data);
//       emit(LoginSuccessState(loginModel));
//     }).catchError((error){
//         print(error.toString());
//         emit(LoginErrorState(loginModel.message));
//
//
//     });
//   }
  IconData suffix=Icons.visibility;
  bool isPasswordShow=true;
  void changePasswordVisibility(){
    isPasswordShow=!isPasswordShow;

    suffix= isPasswordShow?
    Icons.visibility:Icons.visibility_off;
    emit(LoginChangePasswordVisibilityState());
  }
  // var headers = {
  //   'Accept': 'application/json'
  // };
  // UserLogin(LoginModel user)async {
  //   final headers = {
  //     'Accept': 'application/json'
  //   };
  //   await  http.MultipartRequest(
  //       'POST', Uri.parse('https://famdomapp.000webhostapp.com/api/login'));
  //   request.fields.addAll({
  //     'email': 'superadmin@gmail.com',
  //     'password': '123456a'
  //   });
  //
  //   request.headers.addAll(headers);
  //
  //   http.StreamedResponse response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //   }
  //   else {
  //   print(response.reasonPhrase);
  //   }
  // }
}