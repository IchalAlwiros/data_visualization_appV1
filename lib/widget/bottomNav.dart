import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

class BottomNavIcons extends StatefulWidget {
  @override
  _BottomNavIconsState createState() => _BottomNavIconsState();
}

class _BottomNavIconsState extends State<BottomNavIcons> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,

      decoration: BoxDecoration(
        //color: Colors.reds,
        boxShadow: [
          BoxShadow(
              offset: Offset(3.0, 6.0), blurRadius: 20, color: Colors.grey),
        ],
      ),
      // margin: EdgeInsets.only(top:0 ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationDotBar(
          activeColor: Colors.red,
          color: Colors.amber,
          items: [
            BottomNavigationDotBarItem(
              icon: Icons.home,
              onTap: () {},
            ),
            BottomNavigationDotBarItem(
              icon: Icons.task,
              onTap: () {},
            ),
            BottomNavigationDotBarItem(
              icon: Icons.graphic_eq,
              onTap: () {},
            ),
            BottomNavigationDotBarItem(
              icon: Icons.person,
              onTap: () {},
            ),
          ],
          // currentIndex: _selectedIndex,
          // onTap: _onItemTapped,
          // type: BottomNavigationBarType.fixed,
          // showSelectedLabels: false,
          // unselectedItemColor: Color(0xffB3B5C4),
          // selectedItemColor: Color(0xffFFA801),

          // //currentIndex: 0,
          // elevation: 0,
          // iconSize: 26,
          // items: [
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     label: '',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.bookmark),
          //     label: '',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.person),
          //     label: '',
          //   ),
          //],
        ),
      ),
    );
  }
}
