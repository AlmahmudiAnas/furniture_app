import 'package:flutter/material.dart';
import 'package:furniture_app/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "login_successScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Login Success",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: Body(),
    );
  }
}
