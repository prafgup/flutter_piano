import 'package:flutter/material.dart';

import 'BlackKey.dart';
import 'WhiteKey.dart';


List<Widget> getwhitekeyslist()
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

List<Widget> getblackkeyslist()
{
  List<Widget> mKeysList=[];
  for(int i=0;i<20;++i)
  {
    mKeysList.add(BlackKey('A'));
  }
  return mKeysList;
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Piano'
        )
      ),
      body: SingleChildScrollView(
        child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children:getblackkeyslist(),
                ),
              ),
              Column(
                children:getwhitekeyslist(),
              ),
            ],
        ),
      )
    );
  }
}



