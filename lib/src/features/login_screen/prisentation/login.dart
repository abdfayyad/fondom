import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fondom2/src/features/Verify_screen/prisentation/verify_screen.dart';
import 'package:fondom2/src/features/forget_password/prisentation/forget_password.dart';
import 'package:fondom2/src/features/music_player/music_player.dart';

import '../../../util/componantes/defaltbuttom.dart';
import '../../../util/componantes/textform_register.dart';
import 'bloc/cubit.dart';
import 'bloc/status.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // late LoginCubit loginCubit;

  var formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   // TODO: limplement initState
  //   // loginCubit=LoginCubit(dioHelper: DioHelper());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var emilController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginScreenStates>(
        listener: (context, state) {
          // if(state is LoginSuccessState)
          // {
          //   SharedPref.saveData(
          //       key: 'token',
          //       value: state.loginModel.data.token.type +
          //       ' '+
          //       state.loginModel.data.token.accessToken
          //   ).then((value) {
          //     print(SharedPref.getData(key: 'token'));
          //   });
          //   showToast(text: state.loginModel.message, state: ToastStates.ERROR);
          // }
          // if (state is LoginErrorState)
          //   {
          //     showToast(text: state.error, state: ToastStates.ERROR);
          //   }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: SizedBox(
                                width: 384.w,
                                height: 309.h,
                                child: Image.asset('assets/images/login.png'))),
                        const Text(
                          ' Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        myTextField(
                          width: 354.w,
                          height: 46.h,
                          controller: emilController,
                          prefixIcon: const Icon(Icons.email),
                          validatorValue: 'emil address must not be empty',
                          labelText: 'Email',
                         // hintText: 'Enter Your Emil Address',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        myTextField(
                            width: 354.w,
                            height: 46.h,
                            controller: passwordController,
                            validatorValue: 'password must not be empty',
                            prefixIcon: const Icon(Icons.lock),
                            labelText: 'password',
                            obscureText: LoginCubit.get(context).isPasswordShow,
                           // hintText: 'Enter Your Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                LoginCubit.get(context)
                                    .changePasswordVisibility();
                              },
                              icon: Icon(LoginCubit.get(context).suffix),
                            ),
                            onFieldSubmitted: (value) {
                              // if(formKey.currentState!.validate())
                              // {
                              //   LoginCubit.get(context).userLoginIn(
                              //       emilController.text,
                              //       passwordController.text);
                              // }
                            }),
                        SizedBox(
                          height: 26.h,
                        ),
                        Center(
                          child: ConditionalBuilder(
                            condition: state is! LoginLoadingState,
                            builder: (context) => defaultbutton(
                                function: () {
                                  // if(formKey.currentState!.validate())
                                  //   {
                                  //     LoginCubit.get(context).userLoginIn(
                                  //         emilController.text,
                                  //         passwordController.text);
                                  //   }
                                },
                                text: 'Login',
                                textColor: Colors.white,
                                width: 259.w,
                                height: 48.h,
                                fontSizeText: 18.sp,
                                backround: const Color(0xFF5A729E)),
                            fallback: (context) =>
                                const CircularProgressIndicator(),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgetPassword()));

                              },
                              child: const Text(
                                'Forget  your password ?',
                                style: TextStyle(

                                    fontSize: 14, color: Color(0xff44567B)),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have account ?',
                              style: TextStyle(fontSize: 14),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MusicPlayer()));

                                },
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff44567B)),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
