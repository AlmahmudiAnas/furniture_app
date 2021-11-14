import 'package:flutter/material.dart';
import 'card_scroll.dart';
import 'data.dart';
import 'methods.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color(0xFF1b1e44),
            Color(0xFF2d3447),
          ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              topBar(),
              topTitle(),
              topSubTitle(),
              Stack(
                children: <Widget>[
                  CardScrollWidget(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
              bottomTitle(),
              bottomSubTitle(),
              SizedBox(height: 20),
              botList(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
