import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:way_to_namaz_v1/bottom_bar_navigation.dart';
import 'package:way_to_namaz_v1/extension.dart';
import 'package:way_to_namaz_v1/utils.dart';

class IntroScreenTiming extends StatefulWidget {
  const IntroScreenTiming({super.key});

  @override
  State<IntroScreenTiming> createState() => _IntroScreenTimingState();
}

class _IntroScreenTimingState extends State<IntroScreenTiming> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double baseWidth = 428;
    double fem = width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.black38.withOpacity(0.75),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: '#E2B72D'.toColor()),
                    child: Text(
                      'Add Your Nearest Mosque as a\nFavorite. Get Real Time\nNotifications About Namaz\nTiming.',
                      style: SafeGoogleFont(
                        'Secular One',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.455 * ffem / fem,
                        letterSpacing: 0.135 * fem,
                        color: Color(0xff0C2D53),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: '#E2B72D'.toColor()),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Please Update Accurate\nNamaz Timings to\nHelp Others.\nJazakAllah Khair',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.455 * ffem / fem,
                            letterSpacing: 0.135 * fem,
                            color: Color(0xff0C2D53),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                            onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                    builder: (_) => BottomBarNavigation(
                                          index: 1,
                                        ))),
                            child: Text('Skip'))
                      ],
                    ),
                  ),
                ],
              ),
            ],
            options: CarouselOptions(
              height: height,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
