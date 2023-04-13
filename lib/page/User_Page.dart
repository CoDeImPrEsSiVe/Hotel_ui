// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotel_ui/page/header_widget.dart';
// import 'package:flutter/cupertino.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() {
    return UserPageState();
  }
}

class UserPageState extends State<UserPage> {
  final _formkey = GlobalKey<FormState>();
  // bool checkedValue = false;
  // bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text('Available Room'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
                Icons.arrow_back_ios,
             ), 
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: [
          const SizedBox(
            height: 150,
            child: HeaderWidget(150, false, Icons.person),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            alignment: Alignment.center,
            child: Column(children: [
              Form(
                key: _formkey,
                child: Column(children: [
                  GestureDetector(
                      child: Stack(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 5, color: Colors.white),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              offset: Offset(5, 5),
                            )
                          ]),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey.shade300,
                        size: 80.0,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(80, 80, 0, 0),
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.grey.shade700,
                        size: 25.0,
                      ),
                    ),
                  ])),
                  const SizedBox(height: 20),
                  const Text(
                    'Mr.Fredrick',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'Manager at Amazon',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ]),
              )
            ]),
          ),
          Card(
              child: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                      children: <Widget>[Column(children: const <Widget>[])])
                      ))
        ])));
  }
}
