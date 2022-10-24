import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_screen.dart';
import 'grid.dart';

class PersistentTabsWidget extends StatefulWidget {
  @override
  _PersistentTabsWidgetState createState() => _PersistentTabsWidgetState();
}

class _PersistentTabsWidgetState extends State<PersistentTabsWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  final List<Tab> tabs = [
    const Tab(text: 'قوائم القراءة'),
    const Tab(text: 'حائط المناقشات'),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.transparent,
      // toolbarHeight: 2,
      flexibleSpace: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: leftPadding),
              child: TabBar(
                controller: tabController,
                labelPadding:  EdgeInsets.symmetric(horizontal: 5.w),
                indicatorColor: Colors.brown,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                tabs: tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
