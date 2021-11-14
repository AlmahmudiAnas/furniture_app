import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:furniture_app/components/no_account_text.dart';
import 'package:furniture_app/components/social_card.dart';

import 'package:furniture_app/size_config.dart';

import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.11,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(40),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white54),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/images/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/images/icons/facebook.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/images/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
