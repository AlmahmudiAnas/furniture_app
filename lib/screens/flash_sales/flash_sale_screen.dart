import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/components/bottom_nav_bar.dart';
import 'package:furniture_app/screens/cart/cart_screen.dart';
import 'components/body.dart';

class FlashSales extends StatelessWidget {
  static String routeName = "flash_sale_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavBar(selectedMenu: null),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, CartScreen.routName),
            icon: SvgPicture.asset("assets/images/icons/Cart Icon.svg"),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
