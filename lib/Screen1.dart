import 'package:flutter/material.dart';
import './HelperClass.dart';

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
              Column(
                children:HelperClass.getWhiteKeysList(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children:HelperClass.getBlackKeysList(),
                ),
              ),
            ],
        ),
      )
    );
  }
}



