import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../util/componantes/defaltbuttom.dart';
import '../../../util/componantes/textform_register.dart';

class ForgetPassword extends StatelessWidget {
   ForgetPassword({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return   Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: SizedBox(
                              width: 454.61.w,
                              height: 379.h,
                              child: Image.asset('assets/images/login.png'))),
                       Text(
                        ' Find your account !',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.h),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                       Text(
                        ' Enter your Email address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.h),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      myTextField(
                          width: 354.w,
                          height: 46.h,
                          controller: controller,
                          validatorValue: 'Email address must not be empty',

                          labelText: 'Email address',

                          // hintText: 'Enter Your Password',

                          onFieldSubmitted: (value) {
                            // if(formKey.currentState!.validate())
                            // {
                            //
                            // }
                          }),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child:defaultbutton(
                            function: () {
                              // if(formKey.currentState!.validate())
                              //   {
                              //     LoginCubit.get(context).userLoginIn(
                              //         emilController.text,
                              //         passwordController.text);
                              //   }
                            },
                            text: 'Continue',
                            textColor: Colors.white,
                            width: 259.w,
                            height: 48.h,
                            fontSizeText: 18.sp,
                            backround: const Color(0xFF5A729E)),
                      ),

                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color:Color(0xff424343) ,))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
