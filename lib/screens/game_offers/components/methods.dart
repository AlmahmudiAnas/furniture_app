import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'custom_icons.dart';

SingleChildScrollView botList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/images/Xbox.jpg", width: 296, height: 222),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/images/PS5.jpeg", width: 296, height: 222),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/images/PS4.jpg", width: 296, height: 222),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:
              Image.asset("assets/images/Xbox3.jpg", width: 296, height: 222),
        ),
      ],
    ),
  );
}

Padding bottomSubTitle() {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              child: Text("Latest", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              child: Text("Trending", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    ),
  );
}

Padding bottomTitle() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Best Selling",
            style: TextStyle(
              color: Colors.white,
              fontSize: 46,
              fontFamily: "Calibre-Semibold",
            )),
        IconButton(
          icon: Icon(
            CustomIcons.option,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

Padding topSubTitle() {
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFff6e6e),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              child: Text("Consoles", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text("25+ Console", style: TextStyle(color: kPrimaryColor))
      ],
    ),
  );
}

Padding topTitle() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Spacial Offers",
            style: TextStyle(
              color: Colors.white,
              fontSize: 46,
              fontFamily: "Calibre-Semibold",
            )),
        IconButton(
          icon: Icon(
            CustomIcons.option,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

Padding topBar() {
  return Padding(
    padding: EdgeInsets.only(left: 12, right: 12, top: 60, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            CustomIcons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}
