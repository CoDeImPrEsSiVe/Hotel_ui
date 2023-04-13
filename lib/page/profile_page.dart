import 'package:flutter/material.dart';
import 'package:hotel_ui/page/User_Page.dart';
import 'package:hotel_ui/page/widget_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  // final double _drawerIconSize = 25;
  // final double _drawerfontsize = 17;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        elevation: 0.5,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Theme.of(context).primaryColorDark,
              Theme.of(context).colorScheme.secondary,
            ],
          )),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Stack(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const UserPage()),
                    );
                  },
                  child: Icon(Icons.person, color: Colors.grey.shade300),
                )
              ],
            ),
          )
        ],
      ),
      body:
            const Header_Widget()
          
    );
  }
}
