import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/constants.dart';

class MenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.fromLTRB(32, 8, 32, 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.lock_outline,
              color: kPrimaryColor,
            ),
            title: Text('Change Password'),
            trailing: Icon(Icons.keyboard_arrow_right),
            //open change password
            onTap: () {},
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 1,
            color: Colors.grey.shade400,
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.language,
              color: kPrimaryColor,
            ),
            title: Text('Change Language'),
            trailing: Icon(Icons.keyboard_arrow_right),
            //open change Languages
            onTap: () {},
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 1,
            color: Colors.grey.shade400,
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: kPrimaryColor,
            ),
            title: Text('Change Location'),
            trailing: Icon(Icons.keyboard_arrow_right),
            //open change Location
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
