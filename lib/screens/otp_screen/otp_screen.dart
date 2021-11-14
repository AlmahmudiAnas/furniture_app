import 'package:flutter/material.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routName = 'otp_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Body(),
    );
  }
}
