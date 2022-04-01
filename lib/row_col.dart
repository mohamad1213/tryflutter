import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
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
            "Hatami Store",
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
          children: <Widget>[
            new Icon(
              Icons.local_pizza,
              size: 70,
              color: Colors.red[300],
            ),
            new Icon(
              Icons.home,
              size: 70,
              color: Colors.red[300],
            ),
            new Icon(
              Icons.cake,
              size: 70,
              color: Colors.red[300],
            ),
            new Row(
              children: <Widget>[
                new Icon(
                  Icons.donut_large,
                  size: 70,
                  color: Colors.red[300],
                ),
                new Icon(
                  Icons.donut_large,
                  size: 70,
                  color: Colors.red[300],
                ),
                new Icon(
                  Icons.donut_large,
                  size: 70,
                  color: Colors.red[300],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
