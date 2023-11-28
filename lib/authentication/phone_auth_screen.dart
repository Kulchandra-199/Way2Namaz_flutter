import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:way_to_namaz_v1/authentication/otp_screen.dart';
import 'package:way_to_namaz_v1/utils.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  var mobileController = TextEditingController();
  var completeNo = "";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fem = width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
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
                    child: Image.asset(
                        'assets/page-1/images/mask-group-aaH.png',
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
                  margin: EdgeInsets.only(top: (height / 100) * 35),
                  height: (height / 100) * 44,
                  padding: EdgeInsets.only(
                    bottom: (height / 100) * 4,
                    top: (height / 100) * 12,
                    left: 20,
                    right: 20,
                  ),
                  width: width,
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Pin label
                      Text(
                        'Enter Your 10 Digit',
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
                        'Phone Number Here!',
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
                        height: (height / 100) * 6,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: width * 0.08,
                  right: width * 0.08,
                  top: 530 * fem,
                  child: SizedBox(
                    width: (width / 100) * 95,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        children: [
                          //mobile textfield
                          Stack(
                            children: [
                              Container(
                                width: (width / 100) * 85,
                              ),
                              IntlPhoneField(
                                autofocus: true,
                                keyboardType: TextInputType.number,
                                controller: mobileController,
                                initialCountryCode: 'IN',
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                  completeNo = phone.completeNumber;
                                },
                                decoration: const InputDecoration(
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  hintText: 'Mobile No',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 13,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    gapPadding: 10,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    gapPadding: 10,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    gapPadding: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle4Xqw (507:53)
                  left: 54 * fem,
                  top: 650 * fem,
                  child: Align(
                    child: GestureDetector(
                      onTap: () => Get.to(OTPScreen()),
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
      ),
    );
  }
}
