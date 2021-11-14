import 'dart:ui';

import 'package:flutter/material.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'SignUp',
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/pexels-rostislav-uzunov-5011647.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.0),
                ),
              ),
            ),
          ),
          Body(),
        ],
      ),
    );
  }
}
