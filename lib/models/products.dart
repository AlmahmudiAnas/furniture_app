import 'package:flutter/material.dart';

class Product {
  final int id;
  final String tilte, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourire, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    @required this.tilte,
    @required this.description,
    @required this.price,
    this.rating = 0.0,
    this.isFavourire = false,
    this.isPopular = false,
  });
}

// demo products
List<Product> demo = [
  Product(
    id:1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    tilte: "wireless Controller for PS4",
    price: 69.99,
    description:
        "original Wireless controller for PS4 blah blah blah blah blah blah blahbafga;fafafoiahfalkfjoiagalkghoapigjaolkighaog",
    rating: 4.5,
    isFavourire: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/desk table.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    tilte: "Desk Table",
    price: 99.99,
    description: "Simple modern desk for your PC",
    rating: 4.1,
    isFavourire: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/weardrobe.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    tilte: "Bedroom Weardrobe",
    price: 150,
    description: "Modern bedroom weardrobe to hold all your clothes and more",
    rating: 5,
    isFavourire: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/TvStand.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    tilte: "Living Room Tv Stand",
    price: 250,
    description: "A neet simple classic living room stand",
    rating: 5,
    isFavourire: true,
    isPopular: true,
  ),
];
