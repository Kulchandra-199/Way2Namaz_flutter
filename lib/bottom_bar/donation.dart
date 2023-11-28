import 'package:flutter/material.dart';
import 'package:way_to_namaz_v1/extension.dart';
import 'package:way_to_namaz_v1/utils.dart';

class DonationScreen extends StatefulWidget {
  DonationScreen({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DonationScreenState createState() => _DonationScreenState();
}

bool isTapped = false;

class _DonationScreenState extends State<DonationScreen> {
  bool isResendTapped = false;
  int start = 30;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<FormState> _formKey = GlobalKey();

  var accountNumberController = TextEditingController();
  var amountController = TextEditingController();
  var marController = TextEditingController();
  var roiController = TextEditingController();
  var phoneController = TextEditingController();

  var _mosque = 'Select Mosque';
  var dropDown = true;

  var dropDownDay = true;

  var dropDownTimeslot = true;
  var _banks = 'Select Bank';
  var dropDownStandard = true;

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(30),
  );

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: 'Select Mosque', child: Text('Select Mosque'))
    ];
    for (int i = 0; i < 5; i++) {
      menuItems
          .add(DropdownMenuItem(value: 'Mosque $i', child: Text('Mosque $i')));
    }

    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsBank {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: 'Select Bank', child: Text('Select Bank'))
    ];
    for (int i = 0; i < 5; i++) {
      menuItems.add(DropdownMenuItem(value: 'Bank $i', child: Text('Bank $i')));
    }

    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double baseWidth = 428;
    double fem = screenWidth / baseWidth;
    double ffem = fem * 0.97;
    Widget buildNameWithProfileImage() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Make a Donation',
              style: SafeGoogleFont(
                'Secular One',
                fontSize: 26 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.455 * ffem / fem,
                color: Color(0xff2f953e),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  buildNameWithProfileImage(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    width: screenWidth * 0.9,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InputDecorator(
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'Account No',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 13,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                            ),
                            isEmpty: _mosque == null,
                            child: DropdownButton(
                              underline: const SizedBox(),
                              iconSize: 30,
                              iconEnabledColor: '#E2B72D'.toColor(),
                              isExpanded: true,
                              value: _mosque,
                              isDense: true,
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    _mosque = newValue!;
                                  },
                                );
                              },
                              items: dropdownItems,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    width: screenWidth * 0.9,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: InputDecorator(
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'Account No',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 13,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                            ),
                            isEmpty: _banks == null,
                            child: DropdownButton(
                              underline: const SizedBox(),
                              iconSize: 30,
                              iconEnabledColor: '#E2B72D'.toColor(),
                              isExpanded: true,
                              value: _banks,
                              isDense: true,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _banks = newValue!;

                                  dropDownStandard = false;
                                });
                              },
                              items: dropdownItemsBank,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    width: screenWidth * 0.9,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: InputDecorator(
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'Account No',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 13,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                            ),
                            isEmpty: accountNumberController == null,
                            child: SizedBox(
                              height: 30,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 11,
                                        top: 11,
                                        right: 15),
                                    hintText: "Account Number",
                                    hintStyle: TextStyle(color: Colors.black)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Account Number';
                                  }
                                },
                                maxLines: 1,
                                controller: accountNumberController,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    width: screenWidth * 0.9,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: InputDecorator(
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'Account No',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 13,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: '#E2B72D'.toColor(), width: 2),
                                borderRadius: BorderRadius.circular(8),
                                gapPadding: 10,
                              ),
                            ),
                            isEmpty: amountController == null,
                            child: SizedBox(
                              height: 30,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 11,
                                        top: 11,
                                        right: 15),
                                    hintText: "Amount",
                                    hintStyle: TextStyle(color: Colors.black)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Amount';
                                  }
                                },
                                maxLines: 1,
                                controller: amountController,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  GestureDetector(
                    onTap: () {},
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
                              'Donate',
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

                  //button
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
