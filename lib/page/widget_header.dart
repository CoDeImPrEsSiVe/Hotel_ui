// ignore_for_file: camel_case_types
// import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_ui/page/Boxshape.dart';

class Header_Widget extends StatefulWidget {
  const Header_Widget({super.key});

  @override
  State<Header_Widget> createState() => _Header_WidgetState();
}

class _Header_WidgetState extends State<Header_Widget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: const Text(
                'Available Room',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          GridView.count(
              scrollDirection: Axis.vertical,
              childAspectRatio: 0.68,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 8; i++)
                  Image.asset(
                    'image/2.png',
                    width: 5,
                    height: 10,
                  ),
                for (int roomNo = 201; roomNo < 208; roomNo++)
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Boxshape()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            right: 15, left: 15, bottom: 10),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 18),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Room - $roomNo',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              const Icon(
                                Icons.bookmark,
                                color: Colors.orangeAccent,
                              )
                            ],
                          ),
                        ]),
                      ))
              ]),
          const SizedBox(
            child: Text(
              'Photos',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          GridView.count(
            childAspectRatio: 0.68,
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 15, left: 15, bottom: 10),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
        ],
      ),
    );
    // );
  }
}
