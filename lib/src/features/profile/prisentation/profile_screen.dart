import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fondom2/src/features/profile/prisentation/screens/chat_room.dart';
import 'package:fondom2/src/features/profile/prisentation/screens/playlists.dart';
import 'package:fondom2/src/features/profile/prisentation/widget/divider.dart';
import 'package:fondom2/src/features/profile/prisentation/widget/persistent_profile_header.dart';
import 'package:fondom2/src/features/profile/prisentation/widget/profile_info_widget.dart';
import 'package:fondom2/src/features/profile/prisentation/widget/setting_widget.dart';

double leftPadding = 20.0.h;
double initialScrollOffset = 250.0.h;
double scrollDesiredPercent = 0.65;
Duration duration = const Duration(milliseconds: 100);
var formKey0 = GlobalKey<FormState>();
var readingNameController = TextEditingController();

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController =
      ScrollController(initialScrollOffset: initialScrollOffset);
  String? name;
  String names = '';
  final List<Tab> tabs = [
    const Tab(text: 'PlayLists'),
    const Tab(text: 'My Channels '),
    const Tab(text: 'Chat Room '),
    const Tab(text: 'Statistics '),
  ];

  void animateToMaxExtent() {
    scrollController.animateTo(
      50,
      duration: duration,
      curve: Curves.linear,
    );
  }

  void animateToNormalExtent() {
    scrollController.animateTo(
      initialScrollOffset,
      duration: duration,
      curve: Curves.linear,
    );
  }

  bool get scrollStopped =>
      !scrollController.position.isScrollingNotifier.value;

  bool get mustExpand =>
      scrollController.offset < initialScrollOffset * scrollDesiredPercent;

  bool get mustRetract =>
      !mustExpand && scrollController.offset < initialScrollOffset;

  void _handleScrollingActivity() {
    if (scrollStopped) {
      if (mustRetract) {
        animateToNormalExtent();
      } else if (mustExpand) {
        animateToMaxExtent();
      }
    }
  }

  bool error = false;

  @override
  void initState() {
    super.initState();
    error = false;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.position.isScrollingNotifier
          .addListener(_handleScrollingActivity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverPersistentHeader(
              delegate: PersistentProfileHeader(user: []),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileInfoWidget(),
                  ContainerDividerWidget(),
                ],
              ),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.grey.shade100,
              toolbarHeight: 16.h,
              automaticallyImplyLeading: false,
              // elevation: 5,
              flexibleSpace: Column(
                children: [
                  Container(
                   // padding: EdgeInsets.symmetric(horizontal: leftPadding),
                    child: TabBar(

                      labelPadding: EdgeInsets.symmetric(horizontal: 5.h),
                      indicatorColor: const Color(0XFF5A729E),
                      indicatorWeight: 5.sp,
                      labelColor: const Color(0XFF5A729E),
                      unselectedLabelColor: Colors.grey,
                      labelStyle:  TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp),
                      tabs: tabs,
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
                child: TabBarView(children: [
                  const PlayLists(),
                 Container(color: Colors.green),
                  ChatRoom(),
                 Container(color: Colors.red),
            ]))
          ],
        ),
      ),
    );
  }

  tes(index, number, context) {
    print('index  : $index , number : $number');
    return Container(
      color: Colors.red,
      child: Text('$index'),
    );
  }
}
