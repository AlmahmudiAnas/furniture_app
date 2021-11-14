import 'package:flutter/material.dart';
import 'package:furniture_app/components/bottom_nav_bar.dart';
import 'package:furniture_app/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
