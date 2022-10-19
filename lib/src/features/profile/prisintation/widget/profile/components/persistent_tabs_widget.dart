import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_page.dart';

class PersistentTabsWidget extends StatefulWidget {
  const PersistentTabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  _PersistentTabsWidgetState createState() => _PersistentTabsWidgetState();
}

class _PersistentTabsWidgetState extends State<PersistentTabsWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  final List<Tab> tabs = [
    Tab(text: 'PlayLists'),
    Tab(text: 'My Channel'),
    Tab(text: 'Chat Room'),
    Tab(text: 'Statistics'),

  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
     // pinned: true,
      toolbarHeight: 25,
      flexibleSpace: Column(
        children: [
          Container(
            height: 51.h,
           // padding:  EdgeInsets.symmetric(horizontal: leftPadding),
            child: TabBar(
              splashBorderRadius: BorderRadius.circular(30.0),

              controller: tabController,
              labelPadding: const EdgeInsets.symmetric(horizontal: 5),
             // indicatorColor: Color(0xff5A729E),
              indicatorWeight: 6.h,
              indicator: BoxDecoration(
                color: Color(0xff5A729E),
              ),
              isScrollable: true,
              indicatorSize:TabBarIndicatorSize.label ,
              labelColor: Colors.grey,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: tabs,
            ),
          ),

        ],
      ),
    );
  }
}
