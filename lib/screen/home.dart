import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:side_bar_animation/const/color.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primaryColor2,
       appBar: AppBar(
        title: const Text('Home Screen'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ZoomDrawer.of(context)?.toggle();
          },
        ),
      ),
      
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}