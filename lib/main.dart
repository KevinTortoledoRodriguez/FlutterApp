import 'package:flutter/material.dart';

void main() => runApp(Usuarios());

class Usuarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Usuarios',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: HomePage(title: 'Usuarios'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }

}