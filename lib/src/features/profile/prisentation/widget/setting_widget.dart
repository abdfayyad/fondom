import 'package:flutter/material.dart';

import '../profile_screen.dart';


class SettingWidget extends StatelessWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: leftPadding, right: leftPadding, top: 10),
                // child: Text(
                //   'Best Channels',
                //   style: TextStyle(
                //     fontFamily: 'Amiri',
                //     color: Colors.grey[800],
                //     fontWeight: FontWeight.bold,
                //     fontSize: 16,
                //   ),
                // ),
              )
            ],
          )
        ],
      ),
      // SizedBox(
      //   height: 150.0,
      //   child: ListView.separated(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: 4,
      //     itemBuilder: (context, index) {
      //       print('$index');
      //       return InkWell(
      //         onTap: () {},
      //         child: SizedBox(
      //           width: 100.0,
      //           child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Stack(alignment: Alignment.bottomCenter, children: [
      //                   Stack(
      //                     children: [
      //                       Container(
      //                         margin: const EdgeInsets.symmetric(
      //                             horizontal: 15, vertical: 2),
      //                         decoration: const BoxDecoration(
      //                           color: Colors.white54,
      //                           boxShadow: [
      //                             BoxShadow(
      //                               offset: Offset(0, 4),
      //                               blurRadius: 1,
      //                               color: Colors.black12,
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                       /* index < 2
      //           ? Container(
      //                 margin: EdgeInsets.symmetric(horizontal: padding, vertical: padding),
      //                 padding: EdgeInsets.symmetric(horizontal: 35),
      //                 color: Colors.red,
      //                 child: Text(
      //                   'NEW',
      //                   style: TextStyle(
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 17,
      //                     color: Colors.white,
      //                     fontFamily: 'OpenSans',
      //                   ),
      //                 ),
      //               )
      //           : Spacer(),*/
      //                     ],
      //                   ),
      //                   Container(
      //                     decoration: const BoxDecoration(
      //                       shape: BoxShape.circle,
      //                       boxShadow: [
      //                         BoxShadow(
      //                           offset: Offset(6, 5),
      //                           blurRadius: 2.5,
      //                           color: Colors.black26,
      //                         ),
      //                       ],
      //                     ),
      //                     child: CircleAvatar(
      //                       backgroundColor: Colors.grey[200],
      //                       radius: 50,
      //                       child: ClipOval(
      //                         child: /*LoginCubit.get(context).currentImage != null
      //                                 ? Image.file(Cubite.get(context).currentImage)
      //                                  :*/
      //                             Image.asset('assets/images/image21.jpg',
      //                                 fit: BoxFit.fill,
      //                                 width: 120,
      //                                 height: 120),
      //                       ),
      //                     ),
      //                   ),
      //                 ]),
      //                 SizedBox(height: 10),
      //                 const Text(
      //                   "name",
      //                   style: TextStyle(
      //                     fontFamily: 'Amiri',
      //                   ),
      //                 )
      //               ]),
      //         ),
      //       );
      //     },
      //     separatorBuilder: (BuildContext context, int index) =>
      //         const SizedBox(width: 30),
      //   ),
      // )
    ]);
  }
}
