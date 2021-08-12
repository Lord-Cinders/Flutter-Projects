import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Center(
              child: Text(':Source Wall:',
              style: TextStyle(
                color: Colors.grey
              ),
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(38, 38, 38, 1),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballstate = 1;
  void ballStateSetter() {
    setState(() {
      ballstate = Random().nextInt(15) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Text('you get to ask a question:',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('Master of the Mobius has answered :',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: FlatButton(
                onPressed: () {
                  ballStateSetter();
                },
                child: Image.asset('images/ball$ballstate.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
