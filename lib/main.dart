import 'package:flutter/material.dart';
import 'package:website/screens/Home.dart';


void main() {
  runApp(BrickBanker());
}

class BrickBanker extends StatelessWidget {
  const BrickBanker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BrickBanker',
      theme: ThemeData(fontFamily: 'Muli'),
      home: HomePage(),
    );
  }
}