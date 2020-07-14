import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

final List images = [
  'images/send.png',
  'images/receive.png',
  'images/loan.png',
  'images/topup.png',
];

final List text = [
  'Send',
  'Request',
  'Loan',
  'Topup',
];

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

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class FinanceAppHome extends StatefulWidget {
  @override
  _FinanceAppHomeState createState() => _FinanceAppHomeState();
}

class _FinanceAppHomeState extends State<FinanceAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
                  color: Color(0xFF005073),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$2589.50',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/bell.png'),
                                color: Colors.grey[300],
                                height: 23.0,
                                width: 23.0,
                              ),
                              Container(
                                height: 45.0,
                                width: 45.0,
                                margin: EdgeInsets.only(left: 18.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300],
                                      offset: Offset(0, 2),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('images/insta_icon.png'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'Available Balance',
                        style: textStyle,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        height: 100.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (BuildContext ctx, int index) {
                            return Column(
                              children: <Widget>[
                                _containerHome(AssetImage(images[index])),
                                Text(
                                  text[index],
                                  style: textStyle,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding:
                  EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Colors.grey[100],
              ),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Recent Transactions',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              color: Color(0xFF005073),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 3.0),
                              child: Text(
                                'All',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: Color(0xFF005073),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey[200],
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 3.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.file_download,
                                    color: Colors.green,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Income',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: Color(0xFF005073),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 3.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.file_upload,
                                    color: Colors.orange,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Expenses',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: Color(0xFF005073),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                        child: Text(
                          'TODAY'.toUpperCase(),
                          style: textStyleBold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                        ),
                        padding:
                            EdgeInsets.only(right: 20, top: 10.0, bottom: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                        AssetImage('images/grocery.png')),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Grocery',
                                          style: TextStyle(
                                              color: Color(0xFF005073),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Eately Downtown',
                                            style: textStyleSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '- \$499.99',
                                      style: TextStyle(
                                          color: Colors.red[300],
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Aug 26',
                                        style: textStyleSmall,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                      AssetImage('images/transport.png'),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Transport',
                                          style: TextStyle(
                                              color: Color(0xFF005073),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'AkshCabs Pool',
                                            style: textStyleSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '- \$50.29',
                                      style: TextStyle(
                                          color: Colors.red[300],
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Aug 26',
                                        style: textStyleSmall,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                        child: Text(
                          'YESTERDAY'.toUpperCase(),
                          style: textStyleBold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                        ),
                        padding:
                            EdgeInsets.only(right: 20, top: 10.0, bottom: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                        AssetImage('images/payment.png')),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Payment',
                                          style: TextStyle(
                                              color: Color(0xFF005073),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Payment from John',
                                            style: textStyleSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '\$690.90',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Sept 06',
                                        style: textStyleSmall,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
