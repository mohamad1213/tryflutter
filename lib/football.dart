import 'package:flutter/material.dart';

class Football extends StatelessWidget {
  const Football({Key? key}) : super(key: key);

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
              'Football',
              style: new TextStyle(fontFamily: "serif", fontSize: 40),
            ),
            new Padding(
              padding: new EdgeInsets.all(20),
            ),
            new Icon(
              Icons.sports_football,
              size: 90,
            )
          ],
        ),
      ),
    );
  }
}
