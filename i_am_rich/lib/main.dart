import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(child: Text('I am rich')),
        ),
        body: Center(
          child: Column(
          children : <Widget>[ Image(
            image: AssetImage('images/diamond.png'),
          ),
            Text('hello'),
          ],
        ),
        ),
      ),
    ),
  );
}
