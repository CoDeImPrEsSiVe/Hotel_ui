// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hotel_ui/common/theme_helper.dart';
import 'package:hotel_ui/page/header_widget.dart';
import 'package:hotel_ui/page/profile_page.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final double _hederhight = 250;
  final Key _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _hederhight,
              child: HeaderWidget(_hederhight, true, Icons.login_rounded),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Column(
                  children: [                                 
                    const Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'SigIn to your account',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          TextField(
                            decoration: ThemeHelper().textInputDecration(
                                'User Name', 'Enter User Name'),
                          ),
                          const SizedBox(height: 30.0),
                          TextField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecration(
                                'Password', 'Enter Password'),
                          ),
                          const SizedBox(height: 15),
                          Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topLeft,
                              child: const Text('Forgot Password')),
                          Container(
                            decoration:
                                ThemeHelper().buttonboxDecration(context),
                            child: ElevatedButton(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  'Sig In'.toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfilPage()));
                              },
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: const Text(
                                'Don\'t have an Account? Create',
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
