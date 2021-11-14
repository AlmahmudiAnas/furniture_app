import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/routes.dart';
import 'package:furniture_app/screens/Profile/profile_screen.dart';
import 'package:furniture_app/screens/splash/splash_screen.dart';
import 'package:furniture_app/them.dart';
import 'screens/sign_in/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SignInScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
