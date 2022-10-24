import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.0.h,
                width: 355.5.w,
                color: Color(0xffDEDFE0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 13.w,
                    ),
                    CircleAvatar(
                      radius: 43.r,
                      backgroundImage: AssetImage('assets/images/ci.jpg'),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dragons 🐉',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: const Color(0xff424343),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Loujain:',
                                style: TextStyle(
                                    color: const Color(0xff0C58DC),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  'This song is soo beautiful abd',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: const Color(0xff424343),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            '50K member',
                            style: TextStyle(
                              color:const Color(0xff8B8585),
                                fontSize: 14.sp, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,))
                      ],
                    )
                  ],
                ),
              ),
            );
          });

  }
}
