import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:way_to_namaz_v1/splash_screen.dart';

void main() {
  runApp(const WayToNamaz());
}

class WayToNamaz extends StatelessWidget {
  const WayToNamaz({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            bodyLarge: TextStyle(fontFamily: GoogleFonts.secularOne.toString()),
            bodyMedium:
                TextStyle(fontFamily: GoogleFonts.secularOne.toString()),
            bodySmall: TextStyle(fontFamily: GoogleFonts.secularOne.toString()),
            titleLarge:
                TextStyle(fontFamily: GoogleFonts.secularOne.toString()),
            titleMedium:
                TextStyle(fontFamily: GoogleFonts.secularOne.toString()),
            titleSmall:
                TextStyle(fontFamily: GoogleFonts.secularOne.toString())),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
