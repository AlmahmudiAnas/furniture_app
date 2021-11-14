import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/components/bottom_nav_bar.dart';
import 'package:furniture_app/enums.dart';

import 'components/body.dart';

class Contactus extends StatelessWidget {
  static String routeName = "contact_us";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.message),
      // bottomNavigationBar: ContactUsBottomAppBar(
      //   companyName: 'Anas Almahmudi',
      //   textColor: Colors.black,
      //   backgroundColor: Colors.white60,
      //   email: 'anesmedia263@gmail.com',
      //   textFont: 'Sail',
      // ),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}
