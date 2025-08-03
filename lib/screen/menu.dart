import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            'Main Menu',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),

          menuEidget(image: 'icon/profile.svg', title: 'Profile'),
          menuEidget(image: 'icon/cart.svg', title: 'Cart'),
          menuEidget(image: 'icon/cup.svg', title: 'Menu'),
          menuEidget(image: 'icon/discount.svg', title: 'Discount '),
          menuEidget(image: 'icon/privacy.svg', title: 'Privac'),
          menuEidget(image: 'icon/check.svg', title: 'Completed'),
        ],
      ),
    );
  }
}

class menuEidget extends StatelessWidget {
  final String title, image;
  const menuEidget({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(image, height: 30, width: 30, color: Colors.white),
          SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
