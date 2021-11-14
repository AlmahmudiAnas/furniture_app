import 'package:flutter/material.dart';
import 'package:furniture_app/components/bottom_nav_bar.dart';
import 'package:furniture_app/screens/game_offers/components/body.dart';

class GameOffers extends StatefulWidget {
  static String routeName = "game_offers";

  @override
  State<GameOffers> createState() => _GameOffersState();
}

class _GameOffersState extends State<GameOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectedMenu: null),
    );
  }
}
