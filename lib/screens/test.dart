import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/screens/flash_sales/components/catagories_two.dart';

import 'cart/cart_screen.dart';

class Test extends StatelessWidget {
  static String routeName = "test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, CartScreen.routName),
            icon: SvgPicture.asset("assets/images/icons/Cart Icon.svg"),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Sales",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          CatagoriesTwo(),
        ],
      ),
    );
  }
}
