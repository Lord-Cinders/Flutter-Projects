import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profileimage.jpg'),
              ),
              Text(
                'Vijay Vardhan koka',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lacquer',
                ),
              ),
              /*SizedBox(
                height: 10,
              ),*/
              Text(
                'PROESSIONAL PROCRASTINATOR',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color : Colors.white,
                  fontWeight: FontWeight.values[4],
                  fontFamily: 'AmaticSC',
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.blue.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                      size: 25.0,
                    ),
                    title: Text('    +91 7330971424',
                      style: TextStyle(
                        fontFamily: 'AmaticSC',
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                  color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                      size:25.0,
                    ),
                    title: Text('vijayvardhan37@gmail.com',
                      style: TextStyle(
                        fontFamily: 'AmaticSC',
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
