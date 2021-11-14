import 'package:flutter/material.dart';
import 'package:furniture_app/models/flash_products.dart';
import 'package:furniture_app/models/products.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = 'details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  final SaleProduct products;

  ProductDetailsArguments({this.product, this.products});
}
