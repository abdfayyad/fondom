import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fondom2/src/features/profile/prisentation/widget/switcher.dart';

import '../profile_screen.dart';


class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 20.h,
      ),
      Container(
        padding:
        EdgeInsets.only(left: leftPadding, right: leftPadding),
        child: Text(
          'Account',
          style: TextStyle(
              color: Colors.grey[800],
              // decorationThickness:5,
              fontWeight: FontWeight.normal,
              fontSize: 20.sp),
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          padding:
          EdgeInsets.symmetric(horizontal: leftPadding, vertical: 10.h),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '+963 936357552',
                style: TextStyle(
                  fontSize: 17.sp,
                  color: Color(0xff666666)
                ),
              ),
              SizedBox(height: 5.h),
              const Text(
                'Tap to change phone number',
                style: TextStyle(
                  color: Color(0xff8B8585),
                  fontFamily: 'Amiri',
                ),
              ),
            ],
          ),
        ),
      ),
      const Divider(),
      InkWell(
        onTap: () {},
        child: Container(
          padding:
          EdgeInsets.symmetric(horizontal: leftPadding, vertical: 10.h),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'This account for test the UI',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff666666)
                ),
              ),
              SizedBox(height: 5.h),
               Text(
                'Bio',
                style: TextStyle(
                  fontSize: 14.sp,
                  color:const Color(0xff8B8585),

                ),
              ),
      
            ],
          ),
        ),
      ),
     const Divider(),
      NotificationsWidget(),
    ]);
  }
}
