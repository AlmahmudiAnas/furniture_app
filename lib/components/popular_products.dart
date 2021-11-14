import 'package:flutter/material.dart';
import 'package:furniture_app/components/product_card.dart';
import 'package:furniture_app/models/products.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'package:furniture_app/screens/home/components/section_title.dart';
import 'package:furniture_app/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Products',
          onPress: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demo.length,
                (index) => ProductCard(
                  product: demo[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: ProductDetailsArguments(product: demo[index]),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
