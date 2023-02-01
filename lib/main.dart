import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hotel_ui/page/splash_screen.dart';

void main() {
  runApp( LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
   LoginUiApp({super.key});
    
   final Color _primarycolor = HexColor('#DC54FE');
  // ignore: non_constant_identifier_names
  final Color _Accentcolor = HexColor('#8AO2AE');


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginPage',
      theme: ThemeData(
        primaryColor: _primarycolor,
        // ignore: deprecated_member_use
        accentColor: _Accentcolor ,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const splash_screen(title: 'UpBuy HOTEL '),
    );
  }
}
