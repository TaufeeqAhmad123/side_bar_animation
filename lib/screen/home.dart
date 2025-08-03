import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:side_bar_animation/const/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor2,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              topWidget(),
              SizedBox(height: 20),
              searchBar(),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Special Deals',
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '50% OFF',
                            style: GoogleFonts.lato(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'and get free delivery',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepOrange,
                            ),
                            child: Text(
                              'Order Now',
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Spacer(),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 140,
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: SvgPicture.asset(
                                'icon/profile.svg',
                                width: 100,
                                height: 100,
                                                        placeholderBuilder: (context) => Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),

                              ),
                            ),
                            Positioned(
                              right: 20,
                              child: SvgPicture.asset(
                                'icon/cup.svg',
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          suffixIcon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              'icon/filter.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
          ),
          prefixIcon: SvgPicture.asset(
            'icon/search.svg',
            width: 30,
            height: 30,
            color: Colors.black,
          ),

          hintText: 'Search for food',
          hintStyle: GoogleFonts.lato(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class topWidget extends StatelessWidget {
  const topWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: primaryColor,
        child: Icon(Icons.home, color: Colors.black),
      ),
      title: Text(
        'Hi Nana 🖐️',
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        'What do want to eat today!',
        style: GoogleFonts.lato(fontSize: 16, color: Colors.black54),
      ),
      trailing: SvgPicture.asset('icon/noti.svg', width: 30, height: 30),
    );
  }
}
