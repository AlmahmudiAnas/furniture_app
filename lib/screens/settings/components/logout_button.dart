import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/sign_in/sign_in_screen.dart';

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 20,
          right: 20,
          //left: -20,
          child: Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 26,
          right: 26,
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.powerOff,
              color: Colors.white,
            ),
            //log out from app
            onPressed: () =>
                Navigator.pushNamed(context, SignInScreen.routeName),
          ),
        ),
      ],
    );
  }
}
