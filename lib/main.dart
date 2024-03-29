import 'package:flutter/material.dart';

import 'package:parveej_bank/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IndusMobile',
      theme: ThemeData(fontFamily: "arial"),
      home: const SplashScreen(),
    );
  }
}
