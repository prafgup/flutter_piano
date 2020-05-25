import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
class BlackKey extends StatelessWidget {

  final keynote;
  static AudioCache player = AudioCache();
  BlackKey(this.keynote);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        player.play('tones/A2.ogg');
      },
      child: Container(
          margin: EdgeInsets.only(top: 30.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  keynote,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  ),
                )),
          ),
          height: 40.0,
          width: 200.0,
          color: Colors.black,
          ),
    );
  }
}
