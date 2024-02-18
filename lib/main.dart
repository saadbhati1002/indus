import 'package:flutter/material.dart';
import 'package:parveej_bank/screen/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'INDUS bank',
      theme: ThemeData(fontFamily: "arial"),
      home: const LoginScreen(),
    );
  }
}
