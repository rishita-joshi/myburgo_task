import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:myburgo_test/utils/theme_class.dart';
import 'package:nb_utils/nb_utils.dart';

import 'home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  int currentIndex = 0;

  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [
          HomePage(),
          Center(
              child: Text(
            "Childcare Page ",
            style: boldTextStyle(size: 30),
          )),
          Center(
              child: Text(
            "Self Care",
            style: boldTextStyle(size: 30),
          )),
          Center(
              child: Text(
            "Community",
            style: boldTextStyle(size: 30),
          )),
          Center(
              child: Text(
            "My Learning",
            style: boldTextStyle(size: 30),
          )),
        ][currentIndex],
        bottomNavigationBar: MotionTabBar(
          controller:
              _motionTabBarController, // Add this controller if you need to change your tab programmatically
          initialSelectedTab: "Home",
          useSafeArea: true, // default: true, apply safe area wrapper
          labels: const [
            "Home",
            "Childcare",
            "Self Care",
            "Community",
            "My Learning"
          ],
          icons: const [
            Icons.home,
            Icons.people_alt,
            Icons.settings,
            Icons.dashboard,
            Icons.dashboard,
          ],

          tabSize: 50,
          tabBarHeight: 55,
          textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          tabIconColor: Colors.white,
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: Colors.white,
          tabIconSelectedColor: ThemeClass.darkPrimeryColor,
          tabBarColor: ThemeClass.darkPrimeryColor,
          onTabItemSelected: (int value) {
            setState(() {
              currentIndex = value;
              // _tabController!.index = value;
              _motionTabBarController!.index = value;
              setState(() {});
            });
          },
        ));
  }
}
