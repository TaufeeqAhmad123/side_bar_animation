import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:side_bar_animation/screen/home.dart';
import 'package:side_bar_animation/screen/menu.dart';

class ZoomDrawerScreen extends StatelessWidget {
  const ZoomDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.style3,
      borderRadius: 24.0,
      menuScreen: const MenuScreen(),
      mainScreen: const HomeScreen(),
      showShadow: true,
      angle: 0.0,
      menuBackgroundColor: Colors.redAccent,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}