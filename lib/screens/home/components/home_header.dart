import 'package:flutter/material.dart';
import 'package:furniture_app/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn.dart';
import 'search_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchBar(),
          IconBtnWithCounter(
            svgSrc: 'assets/images/icons/Cart Icon.svg',
            onPress: () => Navigator.pushNamed(context, CartScreen.routName),
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/images/icons/Bell.svg',
            onPress: () {},
            numOfItem: 2,
          ),
        ],
      ),
    );
  }
}
