import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .27,
          color: Colors.deepOrange,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "User Info",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Anas Almahmudi",
                        style: GoogleFonts.mulish(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Phone #: ",
                        style: GoogleFonts.mulish(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "09XXXXXXX",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
              Positioned(
                left: -170,
                top: -170,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.lightBlue[100],
                ),
              ),
              Positioned(
                left: -160,
                top: -190,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.blue,
                ),
              ),
              Positioned(
                right: -170,
                bottom: -170,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.yellowAccent[100],
                ),
              ),
              Positioned(
                right: -160,
                bottom: -190,
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
