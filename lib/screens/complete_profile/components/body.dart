import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.15),
            Text(
              'Complete Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              'By continuing you confirm that you agree \nwith our Term and Conditions',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
