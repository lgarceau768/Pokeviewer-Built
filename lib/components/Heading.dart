import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  TextAlign customAlign;
  Heading({Key key, this.text, this.customAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, top: 5, left: 15, right: 15),
      child: Text(
        text,
        textAlign: customAlign != null ? customAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Muli',
          fontWeight: FontWeight.bold,
          fontSize: 46,
          
        ),
      )
    );
  }
}