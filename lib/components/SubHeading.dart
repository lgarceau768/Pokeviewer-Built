import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  final String text;
  final bool bold;
  final Color color;
  const SubHeading({Key key, this.text, this.bold, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, top: 5, left: 15, right: 15),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'Muli',
          fontWeight: bold ? FontWeight.bold: FontWeight.normal,
          fontSize: 20
        ),
      )
    );
  }
}