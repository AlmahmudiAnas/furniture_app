import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(context, '5.0', 'Ranking'),
          Container(height: 25, child: VerticalDivider(color: Colors.black)),
          buildButton(context, '155', 'Following'),
          Container(height: 25, child: VerticalDivider(color: Colors.black)),
          buildButton(context, '68', 'Followers'),
        ],
      ),
    );
  }
}

Widget buildButton(BuildContext context, String value, String text) =>
    MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 5),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 2),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
