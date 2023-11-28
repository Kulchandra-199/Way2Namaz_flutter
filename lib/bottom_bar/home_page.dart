import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:way_to_namaz_v1/bottom_bar/donation.dart';
import 'package:way_to_namaz_v1/bottom_bar/islamic_store_screen.dart';
import 'package:way_to_namaz_v1/bottom_bar/nearby_mosque_timing.dart';
import 'package:way_to_namaz_v1/bottom_bar/timing_intro_screen.dart';
import 'dart:ui';

import 'package:way_to_namaz_v1/utils.dart';

import '../bottom_bar_navigation.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // homeCn9 (5:110)
          width: double.infinity,
          height: 926 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // oxH (507:107)
                left: 53 * fem,
                top: 663 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      16 * fem, 22 * fem, 27 * fem, 8 * fem),
                  width: 322 * fem,
                  height: 140 * fem,
                  decoration: BoxDecoration(
                    color: Color(0x232f953e),
                    borderRadius: BorderRadius.circular(12 * fem),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/page-1/images/mask-group-SpV.png',
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // islamicclassesshF (507:113)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 87 * fem, 96 * fem),
                        child: Text(
                          'Islamic Classes',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.0769230769 * ffem / fem,
                            letterSpacing: 0.065 * fem,
                            color: Color(0xff0c2d53),
                          ),
                        ),
                      ),
                      Container(
                        // onlinegroupstudyingAAZ (507:85)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 13 * fem, 0 * fem, 0 * fem),
                        width: 85 * fem,
                        height: 97 * fem,
                        child: Image.asset(
                          'assets/page-1/images/online-group-studying.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // 52d (507:100)
                left: 223 * fem,
                top: 508 * fem,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => BottomBarNavigation(
                            index: 4,
                          ))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 22 * fem, 13 * fem, 6 * fem),
                    width: 152 * fem,
                    height: 140 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x232f953e),
                      borderRadius: BorderRadius.circular(12 * fem),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/page-1/images/mask-group-n8V.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // islamicstorewKj (507:105)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 30 * fem, 17 * fem),
                          child: Text(
                            'Islamic Store',
                            style: SafeGoogleFont(
                              'Secular One',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.0769230769 * ffem / fem,
                              letterSpacing: 0.065 * fem,
                              color: Color(0xff0c2d53),
                            ),
                          ),
                        ),
                        Container(
                          // buyingS1b (507:88)
                          margin: EdgeInsets.fromLTRB(
                              45 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 81 * fem,
                          height: 62 * fem,
                          child: Image.asset(
                            'assets/page-1/images/buying.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // M8Z (507:92)
                left: 53 * fem,
                top: 475 * fem,
                child: GestureDetector(
                  onTap: () => Get.to(DonationScreen()),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 22 * fem, 5 * fem, 9 * fem),
                    width: 152 * fem,
                    height: 171 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x23e2b72d),
                      borderRadius: BorderRadius.circular(12 * fem),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/page-1/images/mask-group-R3b.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // donations2Eh (507:99)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 55 * fem, 30 * fem),
                          child: Text(
                            'Donations',
                            style: SafeGoogleFont(
                              'Secular One',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.0769230769 * ffem / fem,
                              letterSpacing: 0.065 * fem,
                              color: Color(0xff0c2d53),
                            ),
                          ),
                        ),
                        Container(
                          // charitybox8Yd (507:86)
                          margin: EdgeInsets.fromLTRB(
                              35 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 96 * fem,
                          height: 90 * fem,
                          child: Image.asset(
                            'assets/page-1/images/charity-box.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // 4BP (507:91)
                left: 223 * fem,
                top: 318 * fem,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => IntroScreenTiming())),
                  child: Container(
                    width: 152 * fem,
                    height: 171 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x23e2b72d),
                      borderRadius: BorderRadius.circular(12 * fem),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/page-1/images/mask-group-Pi5.png',
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // prayingmanZP3 (507:79)
                          left: 53 * fem,
                          top: 62 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 99 * fem,
                              height: 99 * fem,
                              child: Image.asset(
                                'assets/page-1/images/praying-man.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // clockGYM (507:82)
                          left: 111 * fem,
                          top: 54 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 28 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/page-1/images/clock.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // prayertimingoHP (507:89)
                          left: 16 * fem,
                          top: 22 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 14 * fem,
                              child: Text(
                                'Prayer Timing',
                                style: SafeGoogleFont(
                                  'Secular One',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.0769230769 * ffem / fem,
                                  letterSpacing: 0.065 * fem,
                                  color: Color(0xff0c2d53),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // 6GV (507:90)
                left: 53 * fem,
                top: 318 * fem,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => BottomBarNavigation(
                            index: 2,
                          ))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 22 * fem, 13 * fem, 9 * fem),
                    width: 152 * fem,
                    height: 150 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x232f953e),
                      borderRadius: BorderRadius.circular(12 * fem),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/page-1/images/mask-group-fjj.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // nearbymosquemtR (5:122)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 30 * fem, 13 * fem),
                          child: Text(
                            'Nearby Mosque',
                            style: SafeGoogleFont(
                              'Secular One',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.0769230769 * ffem / fem,
                              letterSpacing: 0.065 * fem,
                              color: Color(0xff0c2d53),
                            ),
                          ),
                        ),
                        Container(
                          // mosque6A1 (507:75)
                          margin: EdgeInsets.fromLTRB(
                              44 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 82 * fem,
                          height: 75 * fem,
                          child: Image.asset(
                            'assets/page-1/images/mosque.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle1123f (507:52)
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 428 * fem,
                    height: 246 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14 * fem),
                        color: Color(0xffe2b72d),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle298H (5:115)
                left: 25 * fem,
                top: 144 * fem,
                child: Align(
                  child: SizedBox(
                    width: 378 * fem,
                    height: 139 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8 * fem),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 2 * fem),
                            blurRadius: 2.5 * fem,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // imageq17 (7:136)
                left: 83 * fem,
                top: 88 * fem,
                child: Align(
                  child: SizedBox(
                    width: 312 * fem,
                    height: 195 * fem,
                    child: Image.asset(
                      'assets/page-1/images/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // amjsB (507:56)
                left: 140 * fem,
                top: 242 * fem,
                child: Align(
                  child: SizedBox(
                    width: 40 * fem,
                    height: 27 * fem,
                    child: Text(
                      'AM',
                      style: SafeGoogleFont(
                        'Secular One',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.455 * ffem / fem,
                        color: Color(0xff2f953e),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // EZ3 (7:143)
                left: 45 * fem,
                top: 230 * fem,
                child: Align(
                  child: SizedBox(
                    width: 100 * fem,
                    height: 38 * fem,
                    child: Text(
                      '05:00',
                      style: SafeGoogleFont(
                        'Raleway',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.175 * ffem / fem,
                        color: Color(0xff2f953e),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // nextprayer2hoursleftuntilfajrv (7:142)
                left: 45 * fem,
                top: 188 * fem,
                child: Align(
                  child: SizedBox(
                    width: 180 * fem,
                    height: 38 * fem,
                    child: Text(
                      'Next Prayer\n2 hours left until Fajr',
                      style: SafeGoogleFont(
                        'Secular One',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2650000141 * ffem / fem,
                        color: Color(0xff0c2d53),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // maskgroup2Uu (507:74)
                left: 83 * fem,
                top: 162 * fem,
                child: Align(
                  child: SizedBox(
                    width: 15 * fem,
                    height: 15 * fem,
                    child: Image.asset(
                      'assets/page-1/images/mask-group-71X.png',
                      width: 15 * fem,
                      height: 15 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // muteXgZ (7:137)
                left: 45 * fem,
                top: 161 * fem,
                child: Align(
                  child: SizedBox(
                    width: 40 * fem,
                    height: 18 * fem,
                    child: Text(
                      'Mute',
                      style: SafeGoogleFont(
                        'Secular One',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.455 * ffem / fem,
                        color: Color(0xff2f953e),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // indiaEL5 (7:135)
                right: 26 * fem,
                top: 103 * fem,
                child: Align(
                  child: SizedBox(
                    width: 60 * fem,
                    height: 30 * fem,
                    child: Text(
                      'India',
                      textAlign: TextAlign.right,
                      style: SafeGoogleFont(
                        'Secular One',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.455 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // mondayjGq (5:128)
                left: 28 * fem,
                top: 98 * fem,
                child: Align(
                  child: SizedBox(
                    width: 120 * fem,
                    height: 35 * fem,
                    child: Text(
                      'MONDAY',
                      style: SafeGoogleFont(
                        'Secular One',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.455 * ffem / fem,
                        color: Color(0xff0c2d53),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // vectordND (523:99)
                left: 381 * fem,
                top: 68 * fem,
                child: Align(
                  child: SizedBox(
                    width: 21 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-Cjf.png',
                      width: 21 * fem,
                      height: 21 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle19LZ (7:141)
                left: 358 * fem,
                top: 70 * fem,
                child: Align(
                  child: SizedBox(
                    width: 18 * fem,
                    height: 18 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2 * fem),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // vectorFeV (7:139)
                left: 363 * fem,
                top: 73 * fem,
                child: Align(
                  child: SizedBox(
                    width: 9 * fem,
                    height: 12 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-Ab7.png',
                      width: 9 * fem,
                      height: 12 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle12AFf (507:54)
                left: 335 * fem,
                top: 70 * fem,
                child: Align(
                  child: SizedBox(
                    width: 18 * fem,
                    height: 18 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2 * fem),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // vectorUn9 (507:55)
                left: 338 * fem,
                top: 74 * fem,
                child: Align(
                  child: SizedBox(
                    width: 11 * fem,
                    height: 11 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-gVj.png',
                      width: 11 * fem,
                      height: 11 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // phoneupperyU1 (5:130)
                left: 25 * fem,
                top: 24 * fem,
                child: Container(
                  width: 378 * fem,
                  height: 27 * fem,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
