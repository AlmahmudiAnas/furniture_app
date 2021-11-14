import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 300,
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
