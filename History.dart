import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Widget _containerHome(AssetImage image) {
  return Container(
    height: 50.0,
    width: 50.0,
    margin: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: Colors.blueGrey,
      boxShadow: [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ],
      image: DecorationImage(
        image: image,
        fit: BoxFit.cover,
      ),
    ),
  );
}

final List images = [
  'images/grocery.png',
  'images/transport.png',
  'images/payment.png',
  'images/grocery.png',
  'images/transport.png',
  'images/payment.png',
  'images/transport.png',
  'images/grocery.png',
  'images/payment.png',
];

final List textHeader = [
  'Grocery',
  'Transport',
  'Payment',
  'Grocery',
  'Transport',
  'Payment',
  'Transport',
  'Grocery',
  'Payment',
];
final List textDetail = [
  'Flipkart.com',
  'Ola Pool',
  'Received from John',
  'Myntra.com',
  'AkshCabs Pool',
  'Received from Shiv',
  'Uber Pool',
  'PaytmMall.com',
  'Received from Creative',
];

final List textAmount = [
  '- \$101.01',
  '- \$59.10',
  '\$199.01',
  '- \$111.01',
  '- \$99.10',
  '\$599.01',
  '- \$101.01',
  '- \$90.10',
  '\$299.01',
];

final List textDate = [
  'Aug 25',
  'Jan 12',
  'Mar 11',
  'Feb 29',
  'Sep 19',
  'Dec 06',
  'Apr 29',
  'May 19',
  'Jun 06',
];

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HistoryContainer(),
    );
  }
}

class HistoryContainer extends StatefulWidget {
  @override
  _HistoryContainerState createState() => _HistoryContainerState();
}

class _HistoryContainerState extends State<HistoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Card(
              elevation: 3.0,
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _containerHome(AssetImage(images[index])),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            textHeader[index],
                            style: TextStyle(
                                color: Color(0xFF005073),
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            child: Text(
                              textDetail[index],
                              style: textStyleSmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          textAmount[index],
                          style: TextStyle(
                              color: Colors.red[300],
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            textDate[index],
                            style: textStyleSmall,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
