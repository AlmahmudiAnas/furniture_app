import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniture_app/models/flash_products.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'catagories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Catagories(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  //problem NEEDS TO BE FIGURED OUT 
                  onPress: () {} //=> Navigator.pushNamed(
                  //   context,
                  //   DetailsScreen.routeName,
                  //   arguments: ProductDetailsArguments(products: products[index]),
                  ),
            ),
            //IF I WANT TO MAKE A RANDOM LAYOUT USE THIS CODE
            //StaggeredGridView.countBuilder(
            //   staggeredTileBuilder: (index) => StaggeredTile.count(1, 1),
            //   itemCount: products.length,
            //   crossAxisCount: 2,
            //   mainAxisSpacing: 10,
            //   crossAxisSpacing: 20,
            //   itemBuilder: (context, index) =>
            //       ItemCard(product: products[index]),
            // ),
          ),
        ),
      ],
    );
  }
}
