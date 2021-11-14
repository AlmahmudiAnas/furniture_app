import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Notification Settings',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        SwitchListTile(
          activeColor: kPrimaryColor,
          contentPadding: EdgeInsets.all(0),
          value: true,
          title: Text('Recive notificatioin'),
          onChanged: (value) {},
        ),
        SwitchListTile(
          activeColor: kPrimaryColor,
          contentPadding: EdgeInsets.all(0),
          value: false,
          title: Text('Recive news letter'),
          onChanged: null,
        ),
        SwitchListTile(
          activeColor: kPrimaryColor,
          contentPadding: EdgeInsets.all(0),
          value: true,
          title: Text('Recive new offers'),
          onChanged: (value) {
            value = false;
          },
        ),
        SwitchListTile(
          activeColor: kPrimaryColor,
          contentPadding: EdgeInsets.all(0),
          value: true,
          title: Text('Recive app updates'),
          onChanged: null,
        ),
      ],
    );
  }
}
