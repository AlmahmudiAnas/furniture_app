import 'dart:ui';

import 'package:flutter/material.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
