import 'package:flutter/material.dart';

class User {
  final String imagePath;
  final String name, email, about,phoneNumber;
  final bool isDarkMode;

  User({
    @required this.phoneNumber,
    @required this.imagePath,
    @required this.name,
    @required this.email,
    @required this.about,
    @required this.isDarkMode,
  });
}
