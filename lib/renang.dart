import 'package:flutter/material.dart';

class Renang extends StatelessWidget {
  const Renang({Key? key}) : super(key: key);

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
              'Renang',
              style: new TextStyle(fontFamily: "serif", fontSize: 30),
            ),
            new Padding(
              padding: new EdgeInsets.all(20),
            ),
            new Icon(
              Icons.pool,
              size: 90,
            )
          ],
        ),
      ),
    );
  }
}
