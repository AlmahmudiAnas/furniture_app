import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/my_account/edit_my_account.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage("assets/images/IMG_20210613_195804_561.jpg"),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFFF5F6F9),
                onPressed: () =>
                    Navigator.pushNamed(context, EditMyAccount.routeName),
                child: Icon(
                  Icons.edit,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
