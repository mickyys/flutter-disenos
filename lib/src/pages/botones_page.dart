import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _background(),
            SingleChildScrollView(
                child: Column(children: [_texts(), _buttonRound()])),
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  _background() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final rosaBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
          width: 360.0,
          height: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              color: Colors.pink,
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ]))),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -100.0, child: rosaBox)],
    );
  }

  _texts() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Classify Transaction',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Non magna commodo enim commodo occaecat amet.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0),
              title: Container()),
        ],
      ),
    );
  }

  _buttonRound() {
    return Table(
      children: [
        TableRow(children: [
          _createButtonRound(Icons.border_all, 'General', Colors.blue),
          _createButtonRound(Icons.directions_transit, 'Transporte', Colors.pinkAccent ),
        ]),
        TableRow(children: [
          _createButtonRound(Icons.shop, 'Comprar', Colors.amberAccent ),
          _createButtonRound(Icons.help, 'Salud', Colors.indigo ),
        ]),
        TableRow(children: [
          _createButtonRound(Icons.home, 'Casa', Colors.green ),
          _createButtonRound(Icons.local_airport, 'Aeropuerto', Colors.teal ),
        ]),
        TableRow(children: [
          _createButtonRound(Icons.local_cafe, 'Cafe', Colors.deepOrange ),
          _createButtonRound(Icons.local_hotel, 'Hotel', Colors.cyan ),
        ])
      ],
    );
  }

  _createButtonRound(IconData icon, String texto, Color color) {
    return ClipRect(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              height: 180.0,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 35.0,
                    child: Icon(icon, color: Colors.white, size: 40.0),
                  ),
                  Text(texto, style: TextStyle(color: color)),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            )));
  }
}
