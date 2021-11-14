import 'package:flutter/material.dart';
import 'package:furniture_app/models/flash_products.dart';

class ItemCard extends StatelessWidget {
  final SaleProduct product;
  final Function onPress;
  const ItemCard({
    Key key,
    this.product,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            //height: 180,
            // width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Text(
            product.title,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
