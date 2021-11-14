// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:furniture_app/screens/cart/cart_screen.dart';
import 'package:furniture_app/screens/my_account/my_account.dart';
import 'package:furniture_app/screens/settings/settings_screen.dart';
import 'package:furniture_app/screens/sign_in/sign_in_screen.dart';
import 'package:furniture_app/screens/wallet/wallet_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //decoration: BoxDecoration(color: Colors.black26),
        child: Column(
          children: [
            SizedBox(height: 20),
            ProfilePic(),
            SizedBox(height: 20),
            ProfileMenu(
              icon: "assets/images/icons/User Icon.svg",
              text: "My Account",
              press: () => Navigator.pushNamed(context, MyAccount.routeName),
            ),
            ProfileMenu(
              icon: "assets/images/icons/Bell.svg",
              text: "Notifications",
              press: () {},
            ),
            ProfileMenu(
              icon: "assets/images/icons/Settings.svg",
              text: "Settings",
              press: () => Navigator.pushNamed(context, Settings.routeName),
            ),
            ProfileMenu(
              icon: "assets/images/icons/Cart Icon.svg",
              text: "Check Out",
              press: () => Navigator.pushNamed(context, CartScreen.routName),
            ),
            ProfileMenu(
              icon: "assets/images/icons/wallet.svg",
              text: "Wallet",
              press: () => Navigator.pushNamed(context, Wallet.routeName),
            ),
            ProfileMenu(
              icon: "assets/images/icons/Log out.svg",
              text: "Log Out",
              press: () => Navigator.pushNamed(context, SignInScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
