import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oppai is love',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Oppai is love'),
        ),
        body: Center(
          child: Text('Oppai UwU'),
        ),
      ),
    );
  }
}