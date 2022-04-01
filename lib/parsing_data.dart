// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 231, 228),
      appBar: new AppBar(
        backgroundColor: Colors.blue[300],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text(
            "Card & Parsing",
            style: TextStyle(fontFamily: "serif"),
          ),
        ),
        actions: <Widget>[
          new Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new cardSaya(
              icon: Icons.home,
              teks: 'Home',
              height: 30,
              warna: Colors.blue,
            ),
            new cardSaya(
              icon: Icons.computer,
              teks: 'Komputer',
              height: 40,
              warna: Colors.blueGrey,
            ),
            new cardSaya(
              icon: Icons.abc_outlined,
              teks: 'ABC',
              height: 30,
              warna: Colors.blueGrey,
            ),
            new cardSaya(
              icon: Icons.sports,
              teks: 'Sport',
              height: 30,
              warna: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}

class cardSaya extends StatelessWidget {
  final IconData icon;
  final String teks;
  final Color warna;
  final double height;
  cardSaya(
      {required this.icon,
      required this.teks,
      required this.warna,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(icon, size: height, color: warna),
            new Text(
              teks,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
