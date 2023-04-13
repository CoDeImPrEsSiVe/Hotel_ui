// ignore_for_file: unused_import

import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:hotel_ui/page/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';


void main() {
  runApp(const LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  const LoginUiApp({super.key});

  final Color _primaryColor = Colors.pinkAccent;
  final Color _accentColor = Colors.blueAccent;
// DC54FE
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginPage',
      theme: ThemeData(
        primaryColor: _primaryColor,
        // ignore: deprecated_member_use
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const splash_screen(title: 'UpBuy HOTEL '),
    );
  }
}
