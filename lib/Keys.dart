import 'package:flutter/material.dart';
import 'BlackKey.dart';
import 'WhiteKey.dart';

class Keys{

  List<Widget> getwhitekeyslist()
  {
    List<Widget> mKeysList=[];
    for(int i=0;i<20;++i)
    {
      mKeysList.add(WhiteKey('A'));
    }
    return mKeysList;
  }

  List<Widget> getblackkeyslist()
  {
    List<Widget> mKeysList=[];
    for(int i=0;i<20;++i)
    {
      mKeysList.add(BlackKey('A'));
    }
    return mKeysList;
  }


}