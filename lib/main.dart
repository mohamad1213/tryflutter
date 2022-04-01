// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './football.dart' as football;
import './lari.dart' as lari;
import './renang.dart' as renang;
import './pembalap.dart' as pembalap;

void main() {
  runApp(new MaterialApp(
    color: Colors.white,
    debugShowCheckedModeBanner: false,
    home: new Home(),
    title: "Tab Bar",
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple.shade700,
        title: new Text('Sport'),
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new Icon(Icons.share),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new Icon(Icons.more_vert),
          ),
        ],
        // bottom: new TabBar(controller: controller, tabs: <Widget>[
        //   new Tab(
        //     icon: new Icon(Icons.pool),
        //     text: "Renang",
        //   ),
        //   new Tab(
        //     icon: new Icon(Icons.motorcycle_outlined),
        //     text: "Balapan",
        //   ),
        //   new Tab(
        //     icon: new Icon(Icons.run_circle_outlined),
        //     text: "Running",
        //   ),
        //   new Tab(
        //     icon: new Icon(Icons.sports_football),
        //     text: "Football",
        //   ),
        // ]),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        new renang.Renang(),
        new pembalap.Pembalap(),
        new lari.Lari(),
        new football.Football(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.purple.shade700,
        child: new TabBar(controller: controller, tabs: <Widget>[
          new Tab(
            icon: new Icon(Icons.pool),
            text: "Renang",
          ),
          new Tab(
            icon: new Icon(Icons.motorcycle_outlined),
            text: "Balapan",
          ),
          new Tab(
            icon: new Icon(Icons.run_circle_outlined),
            text: "Running",
          ),
          new Tab(
            icon: new Icon(Icons.sports_football),
            text: "Football",
          ),
        ]),
      ),
    );
  }
}
