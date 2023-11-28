import 'package:flutter/material.dart';
import 'package:way_to_namaz_v1/extension.dart';
import 'package:way_to_namaz_v1/utils.dart';

class IslamicStoreScreen extends StatefulWidget {
  const IslamicStoreScreen({Key? key}) : super(key: key);

  @override
  _IslamicStoreScreenState createState() => _IslamicStoreScreenState();
}

class _IslamicStoreScreenState extends State<IslamicStoreScreen> {
  bool checkBoxValue1 = false;
  var textController = TextEditingController(text: "");

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
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40 * fem,
                          child: Text(
                            'Islamic Store',
                            style: SafeGoogleFont(
                              'Secular One',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.455 * ffem / fem,
                              letterSpacing: 0.1 * fem,
                              color: Color(0xff0c2d53),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width * 0.75,
                              height: 50,
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              margin: EdgeInsets.fromLTRB(
                                  25 * fem, 0 * fem, 5 * fem, 12 * fem),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: '#E2B72D'.toColor(), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image.asset(
                                        'assets/page-1/images/vector-H3b.png',
                                        width: 23 * fem,
                                        height: 23 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.57,
                                      height: 80,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            hintText: "Search Products...",
                                            alignLabelWithHint: true,
                                            hintStyle: SafeGoogleFont(
                                              'Secular One',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.455 * ffem / fem,
                                              letterSpacing: 0.135 * fem,
                                              color: Color(0xff2F953E)
                                                  .withOpacity(0.4),
                                            )),
                                        controller: textController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.15,
                              height: 50,
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(
                                  0, 0 * fem, 10 * fem, 12 * fem),
                              decoration: BoxDecoration(
                                  color: Color(0xff2f953e),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.asset(
                                'assets/page-1/images/mask-group-EkD.png',
                                fit: BoxFit.contain,
                                height: 27,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: width * 0.75,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            margin: EdgeInsets.fromLTRB(
                                25 * fem, 0 * fem, 25 * fem, 12 * fem),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'All',
                                  style: SafeGoogleFont(
                                    'Secular One',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.455 * ffem / fem,
                                    letterSpacing: 0.1 * fem,
                                    color: Color(0xff2F953E),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Health Care',
                                  style: SafeGoogleFont(
                                    'Secular One',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.455 * ffem / fem,
                                    letterSpacing: 0.1 * fem,
                                    color: Color(0xff2F953E).withOpacity(0.4),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Niqab',
                                  style: SafeGoogleFont(
                                    'Secular One',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.455 * ffem / fem,
                                    letterSpacing: 0.1 * fem,
                                    color: Color(0xff2F953E).withOpacity(0.4),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Namaz',
                                  style: SafeGoogleFont(
                                    'Secular One',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.455 * ffem / fem,
                                    letterSpacing: 0.1 * fem,
                                    color: Color(0xff2F953E).withOpacity(0.4),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Decoration',
                                  style: SafeGoogleFont(
                                    'Secular One',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.455 * ffem / fem,
                                    letterSpacing: 0.1 * fem,
                                    color: Color(0xff2F953E).withOpacity(0.4),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25 * fem),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 4 * 145 * fem,
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    // aQ5 (543:106)

                                    height: 130 * fem,
                                    decoration: BoxDecoration(
                                      color:
                                          Color(0x4ce2b72d).withOpacity(0.14),
                                      borderRadius:
                                          BorderRadius.circular(7 * fem),
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            width: 108 * fem,
                                            height: 101 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/pngwing-3.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Brown Tasbih',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.455 * ffem / fem,
                                                  letterSpacing: 0.1 * fem,
                                                  color: Color(0xff0c2d53),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Brown Tasbih',
                                                style: SafeGoogleFont(
                                                  'Secular One',
                                                  fontSize: 8 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.0 * ffem / fem,
                                                  letterSpacing: 0.1 * fem,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.4),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: width * 0.25,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '200',
                                                      style: SafeGoogleFont(
                                                        'Secular One',
                                                        fontSize: 15 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.0 * ffem / fem,
                                                        letterSpacing:
                                                            0.1 * fem,
                                                        color:
                                                            Color(0xff2F953E),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      'INR',
                                                      style: SafeGoogleFont(
                                                        'Secular One',
                                                        fontSize: 10 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.0 * ffem / fem,
                                                        letterSpacing:
                                                            0.1 * fem,
                                                        color:
                                                            Color(0xff2F953E),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 35 * fem,
                                                height: 35 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/mask-group-jQq.png',
                                                  width: 35 * fem,
                                                  height: 35 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
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
