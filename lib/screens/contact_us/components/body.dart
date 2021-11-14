import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20),
      child: ContactUs(
        cardColor: Colors.white,
        textColor: kPrimaryColor,
        logo: AssetImage('assets/images/IMG_20210613_195804_561.jpg'),
        email: 'anesmedia263@gmail.com',
        companyName: 'Dr Moundo',
        companyColor: kPrimaryColor,
        dividerThickness: 3,
        phoneNumber: '+218916877297',
        website: 'https://Testingsite.com',
        linkedinURL: 'https://www.linkedin.com/in/anas-almahmudi-b12a15209/',
        tagLine: 'Flutter Developer',
        taglineColor: kSecondaryColor,
        instagram: 'drmond0',
        facebookHandle: 'Anas Almahmudi',
      ),
    );
  }
}
