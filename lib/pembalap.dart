// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class Pembalap extends StatelessWidget {
  const Pembalap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new Padding(
            //   padding: new EdgeInsets.all(20),
            // ),
            new Text(
              'Pembalap',
              style: new TextStyle(fontFamily: "serif", fontSize: 40),
            ),
            new Padding(
              padding: new EdgeInsets.all(20),
            ),
            new Icon(
              Icons.motorcycle_outlined,
              size: 90,
            )
          ],
        ),
      ),
    );
  }
}
