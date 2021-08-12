import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioCache audioplayer = new AudioCache();
  void playAudio(int audiostate)
  {
    audioplayer.play('note$audiostate.wav');
  }
Expanded placeColorBlocks({Color color,int audiostate})
  {
    return  Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(audiostate);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              placeColorBlocks(color: Colors.red,audiostate: 1),
              placeColorBlocks(color: Colors.orange,audiostate: 2),
              placeColorBlocks(color: Colors.yellow,audiostate: 3),
              placeColorBlocks(color: Colors.green,audiostate: 4),
              placeColorBlocks(color:  Colors.blue,audiostate: 5),
              placeColorBlocks(color: Colors.indigo[400],audiostate: 6),
              placeColorBlocks(color: Colors.deepPurple,audiostate: 7),

            ],
          ),
        ),
      ),
    );
  }
}
