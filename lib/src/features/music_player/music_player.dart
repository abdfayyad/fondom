import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

import '../login_screen/prisentation/login.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  double _currentSliderValue = 0;

  bool isplay = false;
  IconData playIcon = Icons.play_circle_fill;

// final audioPlayer= AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

// @override
// void dispose(){
//   audioPlayer.dispose();
//   super.dispose();
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Story of my life',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff424343)),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'One Direction',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff8B8585)),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 41.h,
                  ),
                  DropShadowImage(
                    //this is the package class we called

                    //@image give Image.asset() or Image.network()
                    image: Image.asset(
                      'assets/images/khaled.jpg',
                      width: 307.w,
                      height: 307.h,
                    ),
                    //@borderRadius if not defined default value is 0
                    borderRadius: 20.r,
                    //@blurRadius if not defined default value is
                    blurRadius: 100.r,
                    //@offset default value is Offset(8,8)
                    offset: Offset(10, 20),
                    //@scale if not defined default value is 1
                    scale: 1.1,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LikeButton(
                        ///likeCount: 500,

                        countBuilder: (int? count, bool isLiked, String text) {
                          var color = isLiked ? Colors.black : Colors.black54;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            isLiked
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: isLiked ? Colors.red : Colors.black,
                            size: 35,
                          );
                        },
                        padding: EdgeInsets.all(10),
                      ),
                      ImageIcon(
                        AssetImage("assets/images/x.png"),
                        color: Colors.black,
                        size: 35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0:0',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.normal,color: Color(0xff8B8585),),),
                      Text('4:45',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.normal,color: Color(0xff8B8585),),),
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xff2F4B7D),
                    inactiveColor: Color(0xFFffffff),
                    value: _currentSliderValue.toDouble(),
                    min: 0,
                    max: 220,
                    onChanged: (value) async {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          color: Color(0xff666666),
                          onPressed: () {
                            //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          icon: Icon(
                            Icons.skip_previous,
                            size: 45.sp,
                          )),
                      SizedBox(
                        width: 65.w,
                      ),
                      IconButton(
                          color: Color(0xff2F4B7D),
                          onPressed: () {
                            setState(() {
                              isplay = !isplay;
                            });
                          },
                          icon: Icon(
                            isplay
                                ? Icons.pause_circle_filled
                                : Icons.play_circle_fill,
                            size: 52.sp,
                          )),
                      SizedBox(
                        width: 65.w,
                      ),
                      IconButton(
                          color: Color(0xff666666),
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            size: 45.sp,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffC1C1C1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(23.r),
                              topRight: Radius.circular(23.r))),
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 13.h,),
                          Container(
                            height: 1.h,
                            width: 74.w,
                            color: Color(0xff707070),
                          ),
                          SizedBox(height: 22.h,),
                          Text('Lyrics',style: TextStyle(color: Color(0xff707070)),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
