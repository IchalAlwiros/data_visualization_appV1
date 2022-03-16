import 'package:data_visialization/pages/homePage.dart';
import 'package:data_visialization/pages/secondPage.dart';
import 'package:data_visialization/pages/tabbarPage.dart';
import 'package:data_visialization/widget/carouselTest.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class PresistentBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      navBarHeight: 70,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3.0, 2.0),
              blurRadius: 20,
              color: Colors.grey,
            )
          ]),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style13, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      SecondPage(),
      TabPage(),
      //TimelineKu(),
      CarouselTest(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.amber,
        inactiveColorPrimary: Colors.deepOrange,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.task_alt_outlined),
        title: ("Settings"),
        activeColorPrimary: Colors.amber,
        inactiveColorPrimary: Colors.deepOrange,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.graphic_eq),
        title: (""),
        activeColorPrimary: Colors.amber,
        inactiveColorPrimary: Colors.deepOrange,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: (""),
        activeColorPrimary: Colors.amber,
        inactiveColorPrimary: Colors.deepOrange,
      ),
    ];
  }
}
