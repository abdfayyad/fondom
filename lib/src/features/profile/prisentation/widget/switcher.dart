import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_screen.dart';


class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({Key? key}) : super(key: key);

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  bool isOn = false;

  void setNotificationsState(bool value) {
    setState(() {
      isOn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: leftPadding,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Notifications',
                  style: TextStyle(
                    color:const Color(0xff666666),
                    fontSize: 17.sp,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  isOn ? 'On' : 'Off',
                  style:  TextStyle(
                    color:const Color(0xff8E8E8E),
                    fontSize: 14.sp
                  ),
                )
              ],
            ),
            Switch(
              value: isOn,
              onChanged: setNotificationsState,
              activeColor: const Color(0XFFC1C1C1),
              activeTrackColor:const Color(0XFF5A729E),
            ),
          ],
        ),
      ),
    );
  }
}
