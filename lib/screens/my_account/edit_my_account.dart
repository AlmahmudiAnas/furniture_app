import 'package:flutter/material.dart';
import 'package:furniture_app/components/user_preferences.dart';
import 'package:furniture_app/models/profile_change_pic.dart';
import 'package:furniture_app/models/user.dart';
import 'components/text_edit_widget.dart';

class EditMyAccount extends StatefulWidget {
  static String routeName = "edit_account";

  @override
  State<EditMyAccount> createState() => _EditMyAccountState();
}

class _EditMyAccountState extends State<EditMyAccount> {
  User user = UserPreferences.myUser;

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
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 25),
                ProfilePicEdit(),
                SizedBox(height: 25),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  label: 'EMail',
                  text: user.email,
                  onChanged: (name) {},
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  label: 'Phone number',
                  text: user.phoneNumber,
                  onChanged: (name) {},
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  label: 'About',
                  text: user.about,
                  maxLines: 7,
                  onChanged: (name) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
