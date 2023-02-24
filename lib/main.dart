// This is a minimal example demonstrating a play/pause button and a seek bar.
// More advanced examples demonstrating other features can be found in the same
// directory as this example in the GitHub repository.

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';

void ply(int x)async{
  final player =AudioPlayer();
  final duration = await player.setAsset('voice/note$x.wav');
  player.play();
}

Expanded button(color,double Width,int x,int y){
  return Expanded(child: Container(
    color: color,
    width: Width,
    child: TextButton(
        onPressed: (){
          ply(x);

        }, child: Text('R U N $y',style:TextStyle(color: Colors.black),)
    ),
  ),
  );

}

void main()=>runApp(sound());

class sound extends StatefulWidget {
  const sound({Key? key}) : super(key: key);

  @override
  State<sound> createState() => _soundState();
}



class _soundState extends State<sound> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
              child:Column(
                children:<Widget> [
                  button(Colors.white,1000,1,1),
                  button(Colors.white10,1000,2,2),
                  button(Colors.white12,1000,3,3),
                  button(Colors.white30,100,4,4),
                  button(Colors.white38,1000,5,5),
                  button(Colors.white54,1000,6,6),
                  button(Colors.white60,1000,7,7),
                ],
              ) ),
        ),
      )
    );
  }
}
