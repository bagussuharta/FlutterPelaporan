import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: new Test(),
    title: "Navigasi",
  ));
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("home"),
      ),
      body: new Center(
        child: new Icon(
          Icons.android,
          size: 50.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
