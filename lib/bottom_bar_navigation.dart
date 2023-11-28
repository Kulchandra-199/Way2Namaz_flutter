import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:way_to_namaz_v1/bottom_bar/favorite_mosque_screen.dart';

import 'package:way_to_namaz_v1/bottom_bar/home_page.dart';
import 'package:way_to_namaz_v1/bottom_bar/islamic_store_screen.dart';
import 'package:way_to_namaz_v1/bottom_bar/nearby_mosque_loc.dart';
import 'package:way_to_namaz_v1/bottom_bar/nearby_mosque_timing.dart';
import 'package:way_to_namaz_v1/extension.dart';

// ignore: must_be_immutable
class BottomBarNavigation extends StatefulWidget {
  BottomBarNavigation({super.key, this.index = 0});
  int index;

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomePage(),
      NearbyMosqueTiming(),
      NearbyMosqueLocation(),
      FavoriteMosqueScreen(),
      IslamicStoreScreen()
    ];
    // final items = [
    //   Image.asset(
    //     'assets/page-1/images/vector-gEZ.png',
    //     height: 25,
    //     width: 25,
    //   ),
    //   Image.asset(
    //     'assets/page-1/images/mask-group-qS5.png',
    //     height: 25,
    //     width: 25,
    //   ),
    //   Image.asset(
    //     'assets/page-1/images/vector-cjF.png',
    //     height: 25,
    //     width: 25,
    //   ),
    //   Image.asset(
    //     'assets/page-1/images/vector-KWu.png',
    //     height: 25,
    //     width: 25,
    //   ),
    //   Image.asset(
    //     'assets/page-1/images/vector-CX7.png',
    //     height: 25,
    //     width: 25,
    //   ),

    //   // Badge(
    //   //   badgeContent: null,
    //   //   child: const Icon(
    //   //     Icons.shopping_cart,
    //   //     size: 25,
    //   //     color: Colors.white,
    //   //   ),
    //   // ),
    // ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: screens[widget.index],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: GNav(
            backgroundColor: '#2D953E'.toColor(),
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: '#E2B72D'.toColor(),
            iconSize: 30,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 220),
            tabBackgroundColor: Colors.transparent,
            color: Colors.white,
            tabs: const [
              GButton(
                icon: Icons.house_sharp,
              ),
              GButton(
                icon: Icons.newspaper,
              ),
              GButton(
                icon: Icons.location_pin,
              ),
              GButton(
                icon: Icons.favorite,
              ),
              GButton(
                icon: Icons.qr_code,
              ),
            ],
            selectedIndex: widget.index,
            onTabChange: (index) {
              setState(() {
                widget.index = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
