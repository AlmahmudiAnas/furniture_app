import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:furniture_app/screens/splash/components/body.dart';
import 'package:furniture_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/pexels-masha-raymers-8196549.jpg",
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
          Body()
        ],
      ),
    );
  }
}
