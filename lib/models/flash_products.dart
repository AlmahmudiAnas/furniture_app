import 'package:flutter/material.dart';

class SaleProduct {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  SaleProduct({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<SaleProduct> products = [
  SaleProduct(
    id: 1,
    title: "Bed 1",
    price: 600,
    size: 12,
    description: dummyText,
    image: "assets/images/flash bed 2.jpeg",
    color: Color(0xFF3D82AE),
  ),
  SaleProduct(
    id: 2,
    title: "Bed 2",
    price: 1000,
    size: 8,
    description: dummyText,
    image: "assets/images/flash bed 3.jpeg",
    color: Color(0xFFD3A984),
  ),
  SaleProduct(
    id: 3,
    title: "Cabinet",
    price: 456,
    size: 10,
    description: dummyText,
    image: "assets/images/flash cabinet 2.jpeg",
    color: Color(0xFF989493),
  ),
  SaleProduct(
      id: 4,
      title: "Cabinet 2",
      price: 300,
      size: 11,
      description: dummyText,
      image: "assets/images/flash cabinet.jpeg",
      color: Color(0xFFE6B398)),
  SaleProduct(
    id: 5,
    title: "Coffe Table",
    price: 150,
    size: 12,
    description: dummyText,
    image: "assets/images/flash coffee 2.jpeg",
    color: Color(0xFFFB7883),
  ),
  SaleProduct(
    id: 6,
    title: "Coffee Table",
    price: 250,
    size: 12,
    description: dummyText,
    image: "assets/images/flash coffee 4.jpeg",
    color: Color(0xFFAEAEAE),
  ),
  SaleProduct(
    id: 6,
    title: "Random",
    price: 250,
    size: 12,
    description: dummyText,
    image: "assets/images/ps4_console_white_3.png",
    color: Color(0xFFAEAEAE),
  ),
  SaleProduct(
    id: 6,
    title: "Random",
    price: 250,
    size: 12,
    description: dummyText,
    image: "assets/images/weardrobe.jpg",
    color: Color(0xFFAEAEAE),
  ),
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
