import 'package:flutter/material.dart';

class Para extends StatelessWidget {
  final String text;
  final bool bold;
  double size;
  Para({Key key, this.text, this.bold, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, top: 5, left: 15, right: 15),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Muli',
          fontWeight: bold ? FontWeight.bold: FontWeight.normal,
          fontSize: size != null ? size: 25
        ),
      )
    );
  }
}