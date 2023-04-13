// ignore_for_file: prefer_is_not_empty

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hotel_ui/common/theme_helper.dart';
import 'package:hotel_ui/page/header_widget.dart';
// import 'package:flutter/cupertino.dart';

import 'profile_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formkey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
        const SizedBox(
          height: 150,
          child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
        ),
      Container(
        margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        alignment: Alignment.center,
        child: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  GestureDetector(
                    child: Stack(
                      children: [
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: ThemeHelper().inputBoxDecorationShadow(),
                    child: TextFormField(
                      decoration: ThemeHelper().textInputDecoration(
                          'First Name', 'Enter your first name'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: ThemeHelper().inputBoxDecorationShadow(),
                    child: TextFormField(
                      decoration: ThemeHelper().textInputDecoration(
                          'Last Name', 'Enter your Last Name'),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: ThemeHelper().inputBoxDecorationShadow(),
                    child: TextFormField(
                      decoration: ThemeHelper().textInputDecoration(
                          "E-mail address", "Enter your email"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        if (!(val!.isEmpty) &&
                            !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                .hasMatch(val)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: ThemeHelper().inputBoxDecorationShadow(),
                    child: TextFormField(
                      decoration: ThemeHelper().textInputDecoration(
                          "Mobile Number", "Enter your mobile number"),
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        if (!(val!.isEmpty) &&
                            !RegExp(r"^(\d+)*$").hasMatch(val)) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: ThemeHelper().inputBoxDecorationShadow(),
                    child: TextFormField(
                      obscureText: true,
                      decoration: ThemeHelper().textInputDecoration(
                          "Password", "Enter your password"),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  FormField<bool>(
                    builder: (state) {
                      return Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Checkbox(
                                  value: checkboxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      checkboxValue = value!;
                                      state.didChange(value);
                                    });
                                  }),
                              const Text(
                                "I accept all terms and conditions.",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              state.errorText ?? '',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.error,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    validator: (value) {
                      if (!checkboxValue) {
                        return 'You need to accept terms and conditions';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    decoration: ThemeHelper().buttonBoxDecoration(context),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          "Register".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()),
                              (Route<dynamic> route) => false);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    "Or create account using social media",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: const FaIcon(
                          FontAwesomeIcons.googlePlus,
                          size: 35,
                          color: Colors.blueAccent,
                        ),
                        onTap: () {
                          setState(() {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return ThemeHelper().alertDialog(
                                    "Google Plus",
                                    "You tap on GooglePlus social icon.",
                                    context);
                              },
                            );
                          });
                        },
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 5, color: HexColor("#40ABF0")),
                            color: HexColor("#40ABF0"),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.twitter,
                            size: 23,
                            color: HexColor("#FFFFFF"),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return ThemeHelper().alertDialog("Twitter",
                                    "You tap on Twitter social icon.", context);
                              },
                            );
                          });
                        },
                      ),
                      const SizedBox(width: 30.0),
                      GestureDetector(
                        child: const FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 35,
                          color: Colors.blueAccent,
                        ),
                        onTap: () {
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ThemeHelper().alertDialog(
                                      'Facebook',
                                      'You Tap on facebook Social Icon.',
                                      context);
                                });
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ])));
    // ]));
  }
}
