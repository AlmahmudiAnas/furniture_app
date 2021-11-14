import 'package:flutter/material.dart';
import 'package:furniture_app/screens/game_offers/game_offers_screen.dart';
import 'package:furniture_app/size_config.dart';

import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Spacial for you",
          onPress: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                catagory: 'Game Offers',
                numOfBrand: 29,
                onPress: () =>
                    Navigator.pushNamed(context, GameOffers.routeName),
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 3.png',
                catagory: 'Screens',
                numOfBrand: 15,
                onPress: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.catagory,
    @required this.image,
    @required this.numOfBrand,
    @required this.onPress,
  }) : super(key: key);
  final String catagory, image;
  final int numOfBrand;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$catagory",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "\n$numOfBrand Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
