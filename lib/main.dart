import 'package:flutter/material.dart';
import 'Screen1.dart';

void main() => runApp(MainAppInsert());

class MainAppInsert extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1() ,
    );
  }
}
