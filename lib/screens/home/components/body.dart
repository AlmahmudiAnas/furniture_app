import 'package:flutter/material.dart';
import 'package:furniture_app/components/popular_products.dart';
import 'package:furniture_app/size_config.dart';
import 'categories.dart';
import 'discount_card.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DiscountCard(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}