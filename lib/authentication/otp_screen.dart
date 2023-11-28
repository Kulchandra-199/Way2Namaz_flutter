import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:way_to_namaz_v1/bottom_bar_navigation.dart';
import 'package:way_to_namaz_v1/extension.dart';
import 'package:way_to_namaz_v1/utils.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

bool isTapped = false;

class _OTPScreenState extends State<OTPScreen> {
  bool isResendTapped = false;
  final mobileController = TextEditingController();
  String completeNo = "";
  int start = 30;
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FocusNode _pinPutFocusNode = FocusNode();
  final TextEditingController _pinPutController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _listenOtp();
  }

  void _listenOtp() async {
    await SmsAutoFill().listenForCode();
  }

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          start = 30;
          isResendTapped = false;
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    BoxDecoration pinPutDecoration = BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.green, width: 2)));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fem = width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // firstscreenzhb (3:2)
          width: double.infinity,
          height: height,
          decoration: const BoxDecoration(
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
              Container(
                margin: EdgeInsets.only(top: height * 0.45),
                width: (width / 100) * 95,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //mobile textfield
                        Text(
                          'Enter 6 Digit Code You',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 26 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.455 * ffem / fem,
                            color: Color(0xff0C2D53),
                          ),
                        ),
                        // SizedBox(height: (height / 100) * 3),
                        //description label
                        Text(
                          'Received On Your Phone',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 26 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.455 * ffem / fem,
                            color: Color(0xff0C2D53),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Number!',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 26 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.455 * ffem / fem,
                            color: Color(0xff0C2D53),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(
                          height: (height / 100) * 3,
                        ),

                        _textOTP(height, pinPutDecoration),

                        Text(
                          isResendTapped
                              ? 'Resend OTP in:  '
                              : 'Not Received Yet?',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 17 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.455 * ffem / fem,
                            color: Color(0xff0C2D53),
                          ),
                        ),

                        //description label
                        Text(
                          isResendTapped
                              ? 'Resend OTP in:  '
                              : 'Send Code Again!',
                          style: SafeGoogleFont(
                            'Secular One',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.455 * ffem / fem,
                            color: 'E2B72D'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle4Xqw (507:53)
                left: 54 * fem,
                top: 700 * fem,
                child: Align(
                  child: GestureDetector(
                    onTap: () => Get.to(BottomBarNavigation(
                      index: 0,
                    )),
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
                              'Verify',
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

  _textOTP(double height, pinPutDecoration) {
    return Padding(
      padding: EdgeInsets.only(bottom: (height / 100) * 2),
      child: PinPut(
        eachFieldHeight: 40,
        eachFieldWidth: 40,
        fieldsCount: 6,
        autofocus: true,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.green,
        ),
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: pinPutDecoration,
        selectedFieldDecoration: pinPutDecoration,
        followingFieldDecoration: pinPutDecoration,
        pinAnimationType: PinAnimationType.fade,
        onTap: () {
          setState(() {
            isTapped = true;
          });
        },
      ),
    );
  }
}
