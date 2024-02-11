
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:chiketto/pages/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chiketto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: HexColor("#FAF6E7")),
      home: SplashScreen(),
    );
  }
}

