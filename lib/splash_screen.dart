import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:way_to_namaz_v1/landing_page.dart';
import 'package:way_to_namaz_v1/utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2))
        .whenComplete(() => Get.to(const LandingPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // slashscreenmt1 (502:30)
        padding: EdgeInsets.fromLTRB(23 * fem, 24 * fem, 23 * fem, 328 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xffc3b42f), Color(0xff2f953e)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // phoneuppereB7 (502:38)
              margin:
                  EdgeInsets.fromLTRB(2 * fem, 24 * fem, 2 * fem, 245 * fem),
              width: double.infinity,
            ),
            SizedBox(
              // way2namazlogowhite0114u3 (503:45)
              width: 382 * fem,
              height: 277 * fem,
              child: Image.asset(
                'assets/page-1/images/way2namaz-logo-white-01-1.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
