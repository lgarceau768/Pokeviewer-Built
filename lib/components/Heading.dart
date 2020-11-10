import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, top: 5, left: 15, right: 15),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Muli',
          fontWeight: FontWeight.bold,
          fontSize: 46
        ),
      )
    );
  }
}