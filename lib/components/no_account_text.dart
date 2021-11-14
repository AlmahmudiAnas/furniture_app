import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/forgot_password/forgor_password_screen.dart';
import 'package:furniture_app/screens/sign_in/sign_in_screen.dart';
import 'package:furniture_app/screens/sign_up/sign_up_screen.dart';
import 'package:furniture_app/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
