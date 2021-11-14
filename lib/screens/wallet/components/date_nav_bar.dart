import 'package:flutter/material.dart';

import 'date_bar.dart';

class DateNavBar extends StatelessWidget {
  const DateNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DateBar(text: "All"),
            SizedBox(width: 16),
            DateBar(text: "Today", color: Colors.green),
            SizedBox(width: 16),
            DateBar(text: "Yesterday", color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
