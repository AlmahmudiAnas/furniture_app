import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recent Transactions",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: kPrimaryColor,
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 15,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
