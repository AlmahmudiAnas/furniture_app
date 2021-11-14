import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/my_account/edit_my_account.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: kPrimaryColor,
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, EditMyAccount.routeName),
        title: Text(
          "Anas Almahmudi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: CircleAvatar(
          backgroundImage:
              AssetImage("assets/images/IMG_20210613_195804_561.jpg"),
        ),
        trailing: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
