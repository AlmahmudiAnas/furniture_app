import 'package:flutter/material.dart';
import 'package:furniture_app/components/bottom_nav_bar.dart';
import 'package:furniture_app/enums.dart';
import 'package:furniture_app/screens/Profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black26,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
