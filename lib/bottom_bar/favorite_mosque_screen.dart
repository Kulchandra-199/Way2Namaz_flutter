import 'package:flutter/material.dart';
import 'package:way_to_namaz_v1/extension.dart';
import 'package:way_to_namaz_v1/utils.dart';

class FavoriteMosqueScreen extends StatefulWidget {
  const FavoriteMosqueScreen({Key? key}) : super(key: key);

  @override
  _FavoriteMosqueScreenState createState() => _FavoriteMosqueScreenState();
}

class _FavoriteMosqueScreenState extends State<FavoriteMosqueScreen> {
  bool checkBoxValue1 = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double baseWidth = 428;
    double fem = width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            height: height,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 300,
                      child: Stack(
                        children: [
                          Positioned(
                            // maskgroupHyX (524:274)
                            left: 245 * fem,
                            top: 42 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 157 * fem,
                                height: 128.57 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/mask-group-WUD.png',
                                  width: 157 * fem,
                                  height: 128.57 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle7ox9 (544:188)
                            left: 132 * fem,
                            top: 150 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 83 * fem,
                                height: 19 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                    gradient: const LinearGradient(
                                      begin: Alignment(-1.57, -0.053),
                                      end: Alignment(1, 0.016),
                                      colors: <Color>[
                                        Color(0xff00a153),
                                        Color(0xffe2b72d)
                                      ],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Alarm',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle6oS5 (524:284)
                            left: 29 * fem,
                            top: 150 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 100 * fem,
                                height: 19 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                    gradient: const LinearGradient(
                                      begin: Alignment(-1.57, -0.053),
                                      end: Alignment(1, 0.016),
                                      colors: <Color>[
                                        Color(0xff00a153),
                                        Color(0xffe2b72d)
                                      ],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Update Time',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Secular One',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.455 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // miles9eM (524:280)
                            left: 29 * fem,
                            top: 123 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 62 * fem,
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
                            // street00townabccityabc3zd (524:281)
                            left: 29 * fem,
                            top: 109 * fem,
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
                            // address8mB (524:282)
                            left: 29 * fem,
                            top: 84 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 100 * fem,
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
                            // mosquenamedxq (524:283)
                            left: 29 * fem,
                            top: 42 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 155 * fem,
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
                          Positioned(
                            // prayertimingwid (544:190)
                            left: 0,
                            right: 0,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                height: 40 * fem,
                                child: Text(
                                  'Favorite Mosque',
                                  style: SafeGoogleFont(
                                    'Secular One',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.455 * ffem / fem,
                                    letterSpacing: 0.1 * fem,
                                    color: Color(0xff0c2d53),
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5 * 120 * fem,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                      // aQ5 (543:106)
                                      margin: EdgeInsets.fromLTRB(25 * fem,
                                          0 * fem, 25 * fem, 12 * fem),
                                      width: double.infinity,
                                      height: 100 * fem,
                                      decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? Colors.transparent
                                            : '#E2B72D'
                                                .toColor()
                                                .withOpacity(0.3),
                                        border: Border.all(
                                            color: '#E2B72D'.toColor(),
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(7 * fem),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: width * 0.2,
                                              child: Text(
                                                'Fajr\n04:51',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 20 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.6 * ffem / fem,
                                                  letterSpacing: 0.8 * fem,
                                                  color: Color(0xff2f953e),
                                                ),
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.15,
                                              child: Text(
                                                'Jamaat\n05:00',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      2.6666666667 * ffem / fem,
                                                  letterSpacing: 0.48 * fem,
                                                  color: Color(0xff000000),
                                                ),
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.15,
                                              child: Text(
                                                'Qaza\n06:30',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      2.6666666667 * ffem / fem,
                                                  letterSpacing: 0.48 * fem,
                                                  color: Color(0xff000000),
                                                ),
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.15,
                                              child: Text(
                                                'Ishraaq\n07:00',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      2.6666666667 * ffem / fem,
                                                  letterSpacing: 0.48 * fem,
                                                  color: Color(0xff000000),
                                                ),
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.15,
                                              child: Text(
                                                'Chaasht\n09:03',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height:
                                                      2.6666666667 * ffem / fem,
                                                  letterSpacing: 0.48 * fem,
                                                  color: Color(0xff000000),
                                                ),
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
