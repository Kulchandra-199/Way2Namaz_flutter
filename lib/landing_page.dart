import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:way_to_namaz_v1/authentication/phone_auth_screen.dart';
import 'package:way_to_namaz_v1/utils.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fem = width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // firstscreenzhb (3:2)
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // maskgroupvbF (506:47)
                left: -width * 0.35,
                right: -width * 0.35,
                bottom: -height * 0.15,
                child: Align(
                  child: Image.asset('assets/page-1/images/mask-group-aaH.png',
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                // rm194aew13011dEm (505:46)
                left: 0,
                right: 0,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: Image.asset(
                      'assets/page-1/images/rm194-aew-13-01-1-aMB.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle4Xqw (507:53)
                left: 54 * fem,
                top: 599 * fem,
                child: Align(
                  child: GestureDetector(
                    onTap: () => Get.to(PhoneAuthScreen()),
                    child: SizedBox(
                      width: 321 * fem,
                      height: 61 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8 * fem),
                          gradient: const LinearGradient(
                            begin: Alignment(-1.349, 0.016),
                            end: Alignment(1, 0.016),
                            colors: [Color(0xff00a153), Color(0xffe2b72d)],
                            stops: [0, 1],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: SafeGoogleFont(
                                'Secular One',
                                fontSize: 28 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.455 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // way2namazlogo11ed (502:44)
                left: 96 * fem,
                top: 190 * fem,
                child: Align(
                  child: SizedBox(
                    width: 236 * fem,
                    height: 167 * fem,
                    child: Image.asset(
                      'assets/page-1/images/way2namaz-logo-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
