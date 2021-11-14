import 'package:flutter/material.dart';
import 'package:furniture_app/models/user.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Text(
            user.about,
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
  }
}