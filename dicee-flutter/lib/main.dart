import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child:
          Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiestate= 1 ;
  int rightdiestate = 1;
  void diceStateChanger()
  {
    setState(() {
      leftdiestate =  Random().nextInt(7)  ;
      rightdiestate = Random().nextInt(7) ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftdiestate.png'),
              onPressed: () {
               diceStateChanger();
              },
            ),
          ),

          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightdiestate.png'),
              onPressed: () {
                diceStateChanger();
              },
            ),
          ),
        ],
      ),
    );
  }
}


