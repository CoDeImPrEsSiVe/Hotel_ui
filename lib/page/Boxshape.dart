// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Boxshape extends StatefulWidget {
  const Boxshape({super.key});

  @override
  State<Boxshape> createState() => _BoxshapeState();
}

class _BoxshapeState extends State<Boxshape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Room -206'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            for (int a = 201; a < 208; a++)
              const SizedBox(
                child: Text(
                  'Welcome to Room - 206',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
