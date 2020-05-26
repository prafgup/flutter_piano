import 'package:flutter/material.dart';
import 'HelperClass.dart';
class BlackKey extends StatelessWidget {

  final keynote;
  BlackKey(this.keynote);

  @override
  Widget build(BuildContext context) {

    if(keynote=="skip")
      {
        return Container(
          margin: EdgeInsets.only(top: 30.0),
          height: 40.0,
          width: 200.0,
        );
      }
    else
      {
        return GestureDetector(
          onTap: (){
            HelperClass.audioPlayer.stop();
            HelperClass.player.play('tones/$keynote.ogg');
            print('blackkey');
          },
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
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
            ),
            height: 40.0,
            width: 200.0,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
              )
            ),
          ),
        );
      }
  }
}
