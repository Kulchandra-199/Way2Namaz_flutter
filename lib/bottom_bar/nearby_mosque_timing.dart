import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:way_to_namaz_v1/bottom_bar/prayer_timing_det.dart';
import 'package:way_to_namaz_v1/bottom_bar/timing_intro_screen.dart';
import 'package:way_to_namaz_v1/extension.dart';
import 'package:way_to_namaz_v1/utils.dart';

class NearbyMosqueTiming extends StatefulWidget {
  const NearbyMosqueTiming({Key? key}) : super(key: key);

  @override
  _NearbyMosqueTimingState createState() => _NearbyMosqueTimingState();
}

class _NearbyMosqueTimingState extends State<NearbyMosqueTiming> {
  bool checkBoxValue1 = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    double baseWidth = 428;
    double fem = width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nearby Mosque’s Prayer Timing',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Secular One',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.455 * ffem / fem,
                  letterSpacing: -0.36 * fem,
                  color: Color(0xff0c2d53),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 5 * 144 * fem,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: GestureDetector(
                          onTap: () => Get.to(PrayerTimingDetails()),
                          child: Container(
                            // aQ5 (543:106)
                            margin: EdgeInsets.fromLTRB(
                                25 * fem, 0 * fem, 25 * fem, 12 * fem),
                            width: double.infinity,
                            height: 130 * fem,
                            decoration: BoxDecoration(
                              color: Color(0x4ce2b72d),
                              borderRadius: BorderRadius.circular(7 * fem),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // maskgroupUEZ (543:108)
                                  left: 236 * fem,
                                  top: 13 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 127 * fem,
                                      height: 104 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/mask-group-3bT.png',
                                        width: 127 * fem,
                                        height: 104 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // ellipse1Zmo (543:111)
                                  left: 330 * fem,
                                  top: 18 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 28 * fem,
                                      height: 28 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14 * fem),
                                          color: Color(0xffe2b72d),
                                        ),
                                        child: Center(
                                          child: Align(
                                            child: index % 2 == 0
                                                ? Icon(
                                                    Icons.favorite,
                                                    size: 20 * fem,
                                                    color: '#2F953E'.toColor(),
                                                  )
                                                : Icon(
                                                    Icons.favorite_outline,
                                                    size: 20 * fem,
                                                    color: '#2F953E'.toColor(),
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // vector9k1 (544:132)
                                  left: 18 * fem,
                                  top: 103 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 11 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-V89.png',
                                        width: 11 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // prayertiming3Kb (544:133)
                                  left: 33 * fem,
                                  top: 103 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 80 * fem,
                                      height: 14 * fem,
                                      child: Text(
                                        'Prayer Timing',
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          letterSpacing: 0.135 * fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // milesJFX (543:114)
                                  left: 18 * fem,
                                  top: 83 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 70 * fem,
                                      height: 18 * fem,
                                      child: Text(
                                        '1.0 Miles',
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          color: Color(0xffe2b72d),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // street00townabccityabcnwP (543:115)
                                  left: 18 * fem,
                                  top: 70 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 160 * fem,
                                      height: 15 * fem,
                                      child: Text(
                                        'Street 00, Town abc, City abc',
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          letterSpacing: 0.1 * fem,
                                          color: Color(0xff000000),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // addressrwF (543:116)
                                  left: 18 * fem,
                                  top: 45 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 80 * fem,
                                      height: 24 * fem,
                                      child: Text(
                                        'Address',
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          color: Color(0xff0c2d53),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // mosquenamexDb (543:117)
                                  left: 18 * fem,
                                  top: 8 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 160 * fem,
                                      height: 30 * fem,
                                      child: Text(
                                        'Mosque Name',
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          color: Color(0xff2f953e),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
