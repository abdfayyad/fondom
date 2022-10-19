
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MyVerifyTextField({
  required TextEditingController controller,
  ValueChanged<String>? onChanged,
  TextInputAction ?textInputAction,
  ValueChanged<String>? onFieldSubmitted,
}) {
  return SizedBox(
    width: 47.w,
    height: 52.74.h,
    child: TextFormField(
      textInputAction:textInputAction,
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted:onFieldSubmitted ,

      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
      style: TextStyle(color: Color(0xff424343)),
      decoration: InputDecoration(

        hintText:'0',hintStyle: TextStyle(color: Color(0xff424343)),
        labelStyle: TextStyle(color: Color(0xff424343)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22.0),
          borderSide: BorderSide(
            color: Color(0xFF2F4B7D),
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(22),borderSide: BorderSide(color: Color(0xFF2F4B7D))),),
    ),
  );
}