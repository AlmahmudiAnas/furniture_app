import 'package:flutter/material.dart';
import 'package:furniture_app/components/user_preferences.dart';
import 'package:furniture_app/models/user.dart';
import 'package:furniture_app/screens/Profile/components/profile_pic.dart';
import 'components/about.dart';
import 'components/numbers__widget.dart';

class MyAccount extends StatelessWidget {
  static String routeName = "my_account";
  FocusNode myFocusNode = new FocusNode();

  final user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 25),
                ProfilePic(),
                SizedBox(height: 25),
                buildName(user),
                SizedBox(height: 35),
                NumbersWidget(),
                SizedBox(height: 40),
                AboutWidget(user: user),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildName(User user) => Column(
      children: [
        Text(
          user.name,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text(
          user.email,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          user.phoneNumber,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
