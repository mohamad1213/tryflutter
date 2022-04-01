import 'package:flutter/material.dart';

class Lari extends StatelessWidget {
  const Lari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new Padding(
            //   padding: new EdgeInsets.all(10),
            // ),
            new Text(
              'Sprint',
              style: new TextStyle(fontFamily: "serif", fontSize: 40),
            ),
            new Padding(
              padding: new EdgeInsets.all(20),
            ),
            new Icon(
              Icons.run_circle_outlined,
              size: 90,
            )
          ],
        ),
      ),
    );
  }
}
