import 'package:demofinsire/grid/grid_view.dart';
import 'package:demofinsire/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Feed App',
      theme: ThemeData(
        textTheme: GoogleFonts.oxygenTextTheme(),

      ),
      home: SplashPage(),
    );
  }
}



