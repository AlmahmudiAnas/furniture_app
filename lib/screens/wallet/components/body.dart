import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/wallet/components/info_card.dart';

import 'transactions_sheet.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      //appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: [
            InfoCard(),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             "\$5000",
            //             style: TextStyle(
            //                 color: Colors.black, fontWeight: FontWeight.w900),
            //           ),
            //           CircleAvatar(
            //             radius: 25,
            //             backgroundColor: Colors.black,
            //             child: ClipOval(
            //               child: Image.asset(
            //                 "assets/images/IMG_20210613_195804_561.jpg",
            //                 fit: BoxFit.contain,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 24),
            //     ],
            //   ),
            // ),
            TransactionsSheet(),
          ],
        ),
      ),
    );
  }
}
