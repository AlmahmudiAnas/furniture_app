import 'package:flutter/material.dart';
import '../../../size_config.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "Limited Sales\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "20% Are OFF",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
