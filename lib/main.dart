import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:audioplayers/audio_cache.dart";

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.orange),
            buildKey(3, Colors.yellow),
            buildKey(4, Colors.green),
            buildKey(5, Colors.blue),
            buildKey(6, Colors.purple),
            buildKey(7, Colors.deepPurple),
          ]),
        ),
      ),
    );
  }

  Expanded buildKey(int noteNumber, Color buttonColor) {
    return Expanded(
        child: FlatButton(
            color: buttonColor,
            onPressed: () {
              playSound(noteNumber);
            }));
  }

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play("assets_note$noteNumber.wav");
  }
}
