import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlayer(int soundNumber) {
    final player1 = AudioCache();
    player1.play('note$soundNumber.wav');
  }

  Expanded buttons(Color color, int soundNum) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => soundPlayer(soundNum),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttons(Colors.red, 1),
              buttons(Colors.orange, 2),
              buttons(Colors.amber, 3),
              buttons(Colors.green, 4),
              buttons(Colors.teal, 5),
              buttons(Colors.blue, 6),
              buttons(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
