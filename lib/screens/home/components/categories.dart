import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/screens/cart/cart_screen.dart';
import 'package:furniture_app/screens/flash_sales/flash_sale_screen.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/images/icons/Bill Icon.svg", "text": "Living Room"},
      {"icon": "assets/images/icons/Game Icon.svg", "text": "Bed Room"},
      {"icon": "assets/images/icons/Gift Icon.svg", "text": "Garden"},
      {"icon": "assets/images/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesCard(
            icon: "assets/images/icons/Flash Icon.svg",
            text: "Flash Deal",
            onPress: () => Navigator.pushNamed(context, FlashSales.routeName),
          ),
          CategoriesCard(
            icon: "assets/images/icons/Bill Icon.svg",
            text: "Living Room",
            onPress: () {},
          ),
          CategoriesCard(
            icon: "assets/images/icons/Game Icon.svg",
            text: "Games",
            onPress: () {},
          ),
          CategoriesCard(
            icon: "assets/images/icons/Gift Icon.svg",
            text: "Gifts",
            onPress: () {},
          ),
          CategoriesCard(
            icon: "assets/images/icons/Discover.svg",
            text: "More",
            onPress: () {},
          ),
          // ...List.generate(
          //   categories.length,
          //   (index) => CategoriesCard(
          //     icon: categories[index]["icon"],
          //     text: categories[index]["text"],
          //     onPress: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
