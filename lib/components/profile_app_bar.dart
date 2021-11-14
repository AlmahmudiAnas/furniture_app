import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final Widget leading, trailing;
  final String title;
  final double height, childHeight;
  final bool isBig;

  const ProfileAppBar({
    Key key,
    @required this.leading,
    @required this.trailing,
    this.title,
    this.height,
    this.childHeight,
    this.isBig,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
