// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    color: Colors.white,
    debugShowCheckedModeBanner: false,
    home: new HalSatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) => new HalSatu(),
      '/HalDua': (BuildContext context) => new HalDua(),
    },
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: new Text('Android'),
      ),
      body: new Center(
        child: new Ink(
          decoration:
              ShapeDecoration(color: Colors.lightBlue, shape: CircleBorder()),
          child: IconButton(
            icon: SizedBox.expand(
              child: FittedBox(
                child: Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/HalDua');
            },
          ),
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Speaker'),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: new Ink(
          decoration:
              ShapeDecoration(color: Colors.lightBlue, shape: CircleBorder()),
          child: IconButton(
            icon: SizedBox.expand(
              child: FittedBox(
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/HalSatu');
            },
          ),
        ),
      ),
    );
  }
}
