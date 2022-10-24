import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatefulWidget {
  final double paddingTop;

  const ProfileHeaderWidget({required this.paddingTop});

  @override
  State<ProfileHeaderWidget> createState() => _ProfileHeaderWidgetState();
}

class _ProfileHeaderWidgetState extends State<ProfileHeaderWidget> {
  var val;
  List<Icon> icons = [
    Icon(Icons.person),
    Icon(Icons.admin_panel_settings, color: Colors.yellow[700], size: 30),
    Icon(Icons.admin_panel_settings, color: Colors.cyan[800], size: 30),
    Icon(Icons.directions_bike, color: Colors.yellow[900], size: 30)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 2 + widget.paddingTop,
        left: 0,
        width: MediaQuery.of(context).size.width,
        child: AppBar(
          automaticallyImplyLeading: false,
          iconTheme:  IconThemeData(color: Colors.grey[500]),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Row(children: [   IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:  Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.grey[500],
              ))]),
          leadingWidth: 100,
          actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,))
          ],
        ));
  }
}
