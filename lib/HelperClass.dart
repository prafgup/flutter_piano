import 'package:flutter/material.dart';
import 'BlackKey.dart';
import 'WhiteKey.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class HelperClass{

  static AudioPlayer audioPlayer=new AudioPlayer(playerId: "1");
  static AudioCache player = AudioCache(fixedPlayer:audioPlayer );

  static List<Widget> getWhiteKeysList()
  {
    List<Widget> mKeysList=[];
    mKeysList.add(WhiteKey("C8"));

    for(int i=7;i>0;--i)
    {
      mKeysList.add(WhiteKey("B"+i.toString()));
      mKeysList.add(WhiteKey("A"+i.toString()));
      mKeysList.add(WhiteKey("G"+i.toString()));
      mKeysList.add(WhiteKey("F"+i.toString()));
      mKeysList.add(WhiteKey("E"+i.toString()));
      mKeysList.add(WhiteKey("D"+i.toString()));
      mKeysList.add(WhiteKey("C"+i.toString()));
    }

    mKeysList.add(WhiteKey("B0"));
    mKeysList.add(WhiteKey("A0"));

    return mKeysList;
  }

  static List<Widget> getBlackKeysList()
  {
    List<Widget> mKeysList=[];

    for(int i=7;i>0;--i)
    {
      mKeysList.add(BlackKey("skip"));
      mKeysList.add(BlackKey("A"+i.toString()+"#"));
      mKeysList.add(BlackKey("G"+i.toString()+"#"));
      mKeysList.add(BlackKey("F"+i.toString()+"#"));
      mKeysList.add(BlackKey("skip"));
      mKeysList.add(BlackKey("D"+i.toString()+"#"));
      mKeysList.add(BlackKey("C"+i.toString()+"#"));
    }

    mKeysList.add(BlackKey("skip"));
    mKeysList.add(BlackKey("A0#"));

    return mKeysList;
  }
}