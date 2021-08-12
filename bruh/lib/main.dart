import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:positioned_tap_detector/positioned_tap_detector.dart';


void main() {


  runApp(

    MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.black,
        body: Center(


          child: PositionedTapDetector(
            onTap: (center) {
                  AudioCache player = AudioCache();
                  player.play('audio/movie_1.mp3');
              },
            child: Image(
              image: AssetImage('assets/images/PngItem_4931119.png'),
            ),
          ),
        ),
      ),
    ),
  );
}
