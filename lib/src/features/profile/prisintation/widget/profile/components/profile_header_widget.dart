import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    Key? key,
    required this.paddingTop,
  }) : super(key: key);
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10 + paddingTop,
      left: 0,
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded,color: Color(0xffC1C1C1),size: 30.sp,),

              onPressed: () {},
            ),
            Expanded(child: SizedBox()),
            IconButton(
              icon: Icon(Icons.more_vert,color: Color(0xffC1C1C1),size: 30.sp,),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
