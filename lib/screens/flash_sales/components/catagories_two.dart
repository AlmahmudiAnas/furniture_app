import 'package:flutter/material.dart';
import 'package:furniture_app/screens/test.dart';

class CatagoriesTwo extends StatefulWidget {
  @override
  _CatagoriesState createState() => _CatagoriesState();
}

class _CatagoriesState extends State<CatagoriesTwo> {
  List<String> categories = [
    "Stands",
    "Sofas",
    "Tables",
    "Weardrobe",
    "Everything Else",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index = 1),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        // if (index == 1) {
        //   Navigator.pushNamed(context, Test.routeName);
        // }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              height: 2,
              width: 35,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
