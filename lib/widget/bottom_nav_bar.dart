import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:side_bar_animation/const/color.dart';
import 'package:side_bar_animation/screen/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
   // HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          _selectedIndex = value;
        }),
        type: BottomNavigationBarType.shifting,

        elevation: 10,
        //iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icon/home.svg',
              height: 40,
              width: 40,
              color: _selectedIndex == 0 ? secondarycolor : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icon/fav.svg',
              height: 40,
              width: 40,
              color: _selectedIndex == 1 ? secondarycolor : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icon/compass.svg',
              height: 40,
              width: 40,
              color: _selectedIndex == 2 ? secondarycolor : Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icon/cart.svg',
              height: 40,
              width: 40,
              color: _selectedIndex == 3 ? secondarycolor : Colors.black,
            ),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icon/noti.svg',
              height: 40,
              width: 40,
              color: _selectedIndex == 4 ? secondarycolor : Colors.black,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
