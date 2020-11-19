import 'package:flutter/material.dart';

class RespContainer extends StatelessWidget {
  final Widget child;
  final BoxDecoration decor;
  const RespContainer({Key key, this.child, this.decor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    if (w > 1200) {
      return Container(
        decoration: decor,
        width: w / 3,
        height: h / 1.9,
        child: child
      );
    } else if (w <= 1200 && w > 822) {
      return Container(
        decoration: decor,
        width: w / 2.1,
        height: h / 2,
        child: child
      );
    } else {
      return Container(
        decoration: decor,
        width: w * .75,
        height: h / 2.0,
        child: child
      );
    }
  }
}