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

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topWidget(),
                SizedBox(height: 20),
                searchBar(),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF3F434C),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(children: [dealWidget(), dealIcon()]),
                ),
                SizedBox(height: 20),
                rowWidget(),
                SizedBox(height: 20),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 15),

                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/image/sushi${index + 1}.png',
                                scale: 1,
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),

                              Text(
                                'Ebi Sushi',
                                style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Text('⭐ '),
                                  Text(
                                    '4.5',
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    ' (100 review)',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$ 12.99',
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      padding: EdgeInsets.all(10),

                                      decoration: BoxDecoration(
                                        color: Color(0xFFEB6F63),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        'icon/cart.svg',
                                        width: 30,
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class rowWidget extends StatelessWidget {
  const rowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Popular Foods',
          style: GoogleFonts.lato(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Text(
          'See All',
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}



class dealIcon extends StatelessWidget {
  const dealIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SizedBox(
        child: Stack(
          children: [
            Positioned(
              right: 20,
              bottom: 20,
              child: Image.asset(
                'assets/image/nigiri.png',
                width: 100,
                height: 80,
              ),
            ),
            Positioned(
              right: 20,
              top: 0,
              child: Image.asset(
                'assets/image/sushi.png',
                width: 80,
                height: 100,
              ),
            ),
            Positioned(
              right: 110,
              top: 40,
              child: Image.asset(
                'assets/image/salmon.png',
                width: 80,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class dealWidget extends StatelessWidget {
  const dealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Special Deals',
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              '50% OFF',
              style: GoogleFonts.lato(
                fontSize: 34,
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEB6F63),
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
