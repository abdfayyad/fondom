import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PanelWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) =>Container(
    padding: EdgeInsets.zero,
    child: Column(
      children: [
        SizedBox(height: 13.h,),
        Container(
          height: 1.h,
          width: 74.w,
          color: Color(0xff707070),
        ),
        SizedBox(height: 35.h,),
        Text('Lyrics',style: TextStyle(),),
        SizedBox(height: 20.h,),
        body(),
      ],
    ),
    decoration: BoxDecoration(
        color: Color(0xffC1C1C1),
      borderRadius: BorderRadius.vertical(top: Radius.circular(23)),

    ),
 
    
  );
Widget body()=>Column(
  children: [
    Text('abdfy'),
  ],
);

}
