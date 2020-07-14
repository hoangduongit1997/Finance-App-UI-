import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardView(),
    );
  }
}

Widget _containerHome(AssetImage image) {
  return Container(
    height: 45.0,
    width: 45.0,
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

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  final List<String> images = [
    'images/p_card2.jpg',
    'images/p_card3.jpg',
    'images/p_card4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005073),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'YOUR CARDS',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20.0,
                                    color: Color(0xFF005073),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1, bottom: 5),
                                  color: Color(0xFF005073),
                                  width: 85,
                                  height: 1,
                                )
                              ],
                            ),
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          '2 Physical cards, 1 Virtual Card',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Montserrat',
                              color: Colors.grey[700]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 20, right: 20),
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
                                'Physical Cards',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  color: Color(0xFF005073),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 3.0),
                              child: Text(
                                'Virtual Cards',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0,
                                  color: Color(0xFF005073),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        height: 230.0,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                          itemCount: images.length,
                          viewportFraction: 0.8,
                          scale: 0.9,
                          pagination: SwiperPagination(
                            margin: EdgeInsets.only(top: 10.0),
                            builder: new DotSwiperPaginationBuilder(
                                color: Colors.grey,
                                activeColor: Colors.blue[700]),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0, top: 20.0),
                        child: Text(
                          'CARD SETTINGS'.toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFF005073),
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 2, bottom: 5),
                        color: Color(0xFF005073),
                        width: 90,
                        height: 1,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                        AssetImage('images/contactless.png')),
                                    Text(
                                      'Contactless payment',
                                      style: TextStyle(
                                        color: Color(0xFF005073),
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (value) {
                                    setState(() {
                                      print('true');
                                    });
                                  },
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 10.0),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                        AssetImage('images/online.png')),
                                    Text(
                                      'Online payments',
                                      style: TextStyle(
                                        color: Color(0xFF005073),
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Switch(
                                  value: false,
                                  onChanged: (value) {
                                    setState(() {
                                      print('true');
                                    });
                                  },
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 10.0),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                        AssetImage('images/atm.png')),
                                    Text(
                                      'ATM payments',
                                      style: TextStyle(
                                        color: Color(0xFF005073),
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (value) {
                                    setState(() {
                                      print('true');
                                    });
                                  },
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
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
