import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayLists extends StatelessWidget {
   const PlayLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal:14.w ),
      child: GridView.builder(
        shrinkWrap: true,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 163.w/250.h,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 25.h
          ),
          itemCount:20,
          itemBuilder: (BuildContext ctx, index) {
            return SizedBox(
              width:163.w ,
              height: 250.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color:const Color(0xffDEDFE0),
                        borderRadius: BorderRadius.circular(23.r),
                      ),
                      height: 210.h,
                     width: 150.w,
                     child: Column(children: [
                        SizedBox(height: 6.h,),
                      SizedBox(
                          width: 131.w,
                          height: 155.h,
                          child: Image.asset('assets/images/p1.jpg',fit: BoxFit.fill,), ),
                       Text('Favorites',
                         style: TextStyle(
                             fontSize: 17.sp,
                             fontWeight: FontWeight.normal,
                             color:const Color(0xff424343)
                         ),),
                       SizedBox(height: 5.h,),
                       Text('0 Song',
                         style: TextStyle(
                             fontSize: 14.sp,
                             fontWeight: FontWeight.normal,
                             color:const Color(0xff8B8585)
                         ),),
                     ],),
                    ),
                  ),
                  Positioned(
                     left: 8,
                    bottom: 70,
                    child: SizedBox(
                      width: 128.w,
                      height: 155.h,
                      child: Image.asset('assets/images/p2.jpg',fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 85,
                    child: SizedBox(
                      width: 128.w,
                      height: 155.h,
                      child:  Image.asset('assets/images/p3.jpg',fit: BoxFit.fill,),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
