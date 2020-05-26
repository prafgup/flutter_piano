import 'package:flutter/material.dart';
import 'HelperClass.dart';
class WhiteKey extends StatelessWidget {

  final keynote;
  WhiteKey(this.keynote);

  @override
  Widget build(BuildContext context) {

        return GestureDetector(
          onTap: (){
            HelperClass.audioPlayer.stop();
            HelperClass.player.play('tones/$keynote.ogg');
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
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Colors.black,
                        width: 0.5,
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
