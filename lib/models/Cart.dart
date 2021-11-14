import 'package:furniture_app/models/products.dart';
import 'package:flutter/material.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({@required this.product, @required this.numOfItems});
}

// this is a Demo data NEED TO BE CHANGED AFTER
List<Cart> demoCart = [
  Cart(product: demo[0], numOfItems: 2),
  Cart(product: demo[1], numOfItems: 1),
  Cart(product: demo[2], numOfItems: 5),
];
