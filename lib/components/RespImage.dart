import 'package:flutter/material.dart';

class RespImage extends StatelessWidget {
  final String asset;
  const RespImage({Key key, this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    Image img = Image.asset(asset);
    if (w > 1000) {
      return Container(
        width: img.width,
        height: img.height,
        child: img
      );
    } else if (w <= 1000 && w > 600) {
      return Container(
        width: w / 2.0,
        height: h / 3.0,
        child: Image.asset(asset, width: (w/2.0), height: (h/3.0))
      );
    } else {
      return Container(
        width: w * .75,
        height: h / 2.0,
        child: Image.asset(asset, width: (w*0.75), height: (h/2.0))
      );
    }
  }
}