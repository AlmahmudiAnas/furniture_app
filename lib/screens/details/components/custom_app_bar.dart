import 'package:flutter/material.dart';
import 'package:furniture_app/components/rounded_icon_btn.dart';
import 'package:furniture_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar(this.rating);
  @override
  //to provide us us the hieght that apply on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back,
              onPress: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset('assets/images/icons/Star Icon.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}