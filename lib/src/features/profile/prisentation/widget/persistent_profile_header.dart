import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_screen.dart';
import 'profile_header_widget.dart';

double maxHeaderExtent = 400.0.h;
double minHeaderExtent = 80.0.h;

double avatarRadius = 30.h;
double minAvatarRadius = 20.h;
double maxAvatarRadius = 50.h;

double minLeftOffset = 20.w;
double maxleftOffset = 80.w;

double minTopOffset = 8.h;
double maxTopOffset = 50.h;

double minFontSize = 16.sp;
double maxFontSize = 18.sp;

class PersistentProfileHeader extends SliverPersistentHeaderDelegate {
  final user;

  PersistentProfileHeader({required this.user});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final paddingTop = MediaQuery.of(context).padding.top;
    double percent = (shrinkOffset - initialScrollOffset) /
        (maxExtent - initialScrollOffset - paddingTop - 60);

    double radius = avatarRadius * (1 - percent);
    radius = radius.clamp(minAvatarRadius, maxAvatarRadius);

    double leftOffset = maxleftOffset * 1.3 * percent;
    leftOffset = leftOffset.clamp(minLeftOffset, maxleftOffset);

    double topOffset = maxTopOffset * (1 - percent);
    topOffset = topOffset.clamp(minTopOffset, maxTopOffset);

    double fontSize = maxFontSize * 3 * (1 - percent);
    fontSize = fontSize.clamp(minFontSize, maxFontSize);

    bool mustExpand = shrinkOffset < initialScrollOffset * scrollDesiredPercent;

    return Container(
      decoration: BoxDecoration(
        //  borderRadius: BorderRadius.circular(22),
color : Colors.grey[200],
        // image: const DecorationImage(
        //   fit: BoxFit.fill,
        //   image: AssetImage('assets/images/image59.jpg'),
        // ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 1,
            color: Colors.grey.shade300,
          ),
        ],
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: duration,
            top: mustExpand ? 0 : paddingTop + topOffset,
            left: mustExpand ? 0 : leftOffset,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: duration,
                  height: mustExpand ? maxExtent - shrinkOffset : 2 * radius,
                  width: mustExpand
                      ? MediaQuery.of(context).size.width
                      : 2 * radius,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    shape: shrinkOffset < 160
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/khaled.jpg'),
                    ),
                  ),
                ),
                AnimatedContainer(
                    duration: duration,
                    height: mustExpand ? maxExtent - shrinkOffset : 2 * radius,
                    width: mustExpand
                        ? MediaQuery.of(context).size.width
                        : 2 * radius,
                    decoration: BoxDecoration(
                        gradient: mustExpand
                            ? LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.grey.withOpacity(0.0),
                                  Colors.black.withOpacity(0.5),
                                ],
                                stops: const [0.02, 1.0],
                              )
                            : null)),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: duration,
            top: mustExpand
                ? (maxExtent - shrinkOffset) - 70
                : percent > 0.9
                    ? paddingTop + 15
                    : paddingTop + topOffset + radius / 2 - 5,
            left: mustExpand ? 10 : leftOffset + 2 * radius + 10,
            child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.start,
              alignment: Alignment.center,
              children: [
                AnimatedDefaultTextStyle(
                    style: TextStyle(
                      fontSize: mustExpand ? 24.2 : fontSize + 0.2,


                      fontFamily: 'Amiri',
                      color: mustExpand ? Colors.white : Colors.grey[800],
                    ),
                    duration: const Duration(
                      milliseconds: 200,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Row(
                        children: const [
                          Text(
                            "hiam",
                          ),

                        ],
                      ),
                      Text(
                        "hiam@gmail.com",
                          style: TextStyle(

                            fontSize: mustExpand ? 14.sp : 13.sp,
                          ),
                          ),
                    ])),
              ],
            ),
          ),
          const ProfileHeaderWidget(
           paddingTop: 0,
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => maxHeaderExtent;

  @override
  double get minExtent => minHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
