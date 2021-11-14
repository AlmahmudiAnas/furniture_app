import 'package:flutter/material.dart';
import 'package:furniture_app/components/social_card.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/sign_up/components/sign_up_form.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.10),
              Text(
                'Resigter Account',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
              Text(
                'Fill in the details or continue with social media',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white60),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.10),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.10),
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
              SizedBox(height: getProportionateScreenHeight(15)),
              Text(
                'By continuing you confirm that you agree \nto our Term and Conditions',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
