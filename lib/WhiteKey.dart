import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
class WhiteKey extends StatelessWidget {

  final keynote;
  static AudioCache player = AudioCache();
  WhiteKey(this.keynote);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        player.play('tones/$keynote.ogg');
      },
      child: Container(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    keynote,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20
                    ),
                  )),
            ),
          ),
          height: 70.0,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Colors.black,
                      width: 0.5
                  ),
                  bottom: BorderSide(
                      color: Colors.black,
                      width: 0.5
                  )
              ),
          )
      ),
    );
  }
}
