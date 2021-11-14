import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class DateBar extends StatelessWidget {
  const DateBar({
    Key key,
    @required this.text,
    this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 8,
            backgroundColor: color,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
    );
  }
}
