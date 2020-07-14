import 'package:designforinsta/FinanceAppUI/Cards.dart';
import 'package:designforinsta/FinanceAppUI/FinanceAppHome.dart';
import 'package:designforinsta/FinanceAppUI/History.dart';
import 'package:designforinsta/LoginRegister/HMBLogin.dart';
import 'package:designforinsta/PofileUI/ProfileType2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Fin());
}

class Fin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial App',
      debugShowCheckedModeBanner: false,
      home: FinanceHome(),
    );
  }
}

class FinanceHome extends StatefulWidget {
  @override
  _FinanceHomeState createState() => _FinanceHomeState();
}

class _FinanceHomeState extends State<FinanceHome> {
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FinanceAppHome(),
    History(),
    Cards(),
    ProfileType2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildNavBarItem('images/home.png', 0, 'Home'),
            buildNavBarItem('images/history.png', 1, 'History'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HMBLogin()));
              },
              child: Container(
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Color(0xFF005073),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            buildNavBarItem('images/cards.png', 2, 'Cards'),
            buildNavBarItem('images/profile.png', 3, 'Profile'),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
    );
  }

  Widget buildNavBarItem(String image, int index, String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          borderRadius: index == selectedIndex
              ? BorderRadius.all(Radius.circular(10.0))
              : BorderRadius.all(Radius.circular(0.0)),
          color: index == selectedIndex ? Colors.blue[100] : Colors.grey[100],
        ),
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 25,
              width: 25,
              child: Image(
                image: AssetImage(image),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
