import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/my_account/edit_my_account.dart';
import 'package:furniture_app/screens/settings/components/logout_button.dart';
import 'package:furniture_app/screens/settings/components/menu_card.dart';
import 'package:furniture_app/screens/settings/components/notification_list.dart';
import 'package:furniture_app/screens/settings/components/profile_card.dart';
import 'package:furniture_app/screens/sign_in/sign_in_screen.dart';

class Settings extends StatelessWidget {
  static String routeName = "settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: BackButton(),
        elevation: 0,
        backgroundColor: kSecondaryColor,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileCard(),
                SizedBox(height: 10),
                MenuCard(),
                SizedBox(height: 20),
                NotificationList(),
                SizedBox(height: 60),
              ],
            ),
          ),
          LogoutButton(),
        ],
      ),
    );
  }
}
