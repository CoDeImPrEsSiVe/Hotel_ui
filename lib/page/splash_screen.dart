// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_ui/page/login_page.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key, required this.title});

  @override
  State<splash_screen> createState() => _splash_screenState();
  final String title;
}

bool _isVisible = false;

class _splash_screenState extends State<splash_screen> {
  _splash_screenState() {
    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => const login_page(
                      providers: [],
                    )),
            (route) => false);
      });
    });

    Timer(const Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).primaryColorDark,
          ],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [1.0, 0.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: const Duration(milliseconds: 1000),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 2.0,
                    offset: const Offset(5.0, 3.0),
                    spreadRadius: 2.1,
                  )
                ]),
            child: const ClipOval(
              child: Icon(
                Icons.hotel_class_rounded,
                size: 128,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
