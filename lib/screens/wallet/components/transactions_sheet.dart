import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'date_nav_bar.dart';
import 'heading_row.dart';

class TransactionsSheet extends StatelessWidget {
  const TransactionsSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.65,
      maxChildSize: 1,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                Heading(),
                SizedBox(height: 24),
                //container for buttoms
                DateNavBar(),
                SizedBox(height: 16),
                Container(
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32),
                ),
                SizedBox(height: 16),
                // list View transactions
                TransactionList(),
                SizedBox(height: 16),
                //yesterday list
                Container(
                  child: Text(
                    "Yesterday",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32),
                ),
                SizedBox(height: 16),
                // list View transactions
                yesterdayList(),
              ],
            ),
          ),
        );
      },
    );
  }

  ListView yesterdayList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 5),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.date_range,
                  color: Colors.lightBlue[900],
                ),
                padding: EdgeInsets.all(12),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Puchased",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      "Salon",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$590",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Text(
                    "28 Nov",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      shrinkWrap: true,
      itemCount: 4,
      padding: EdgeInsets.all(0),
      controller: ScrollController(keepScrollOffset: false),
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 5),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.date_range,
                  color: Colors.lightBlue[900],
                ),
                padding: EdgeInsets.all(12),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Puchased",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      "Salon",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$590",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Text(
                    "28 Nov",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      shrinkWrap: true,
      itemCount: 4,
      padding: EdgeInsets.all(0),
      controller: ScrollController(keepScrollOffset: false),
    );
  }
}
