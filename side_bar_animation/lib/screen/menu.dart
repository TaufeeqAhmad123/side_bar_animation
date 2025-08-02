import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: ListTile(
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text('Homes', style: TextStyle(color: Colors.white)),
        onTap: () {
          ZoomDrawer.of(context)?.close();
        },
      ),
    );
  }
}
