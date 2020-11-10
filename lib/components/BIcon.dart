import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BIcon extends StatelessWidget {
  final FaIcon icon;
  final Function onTap;
  const BIcon({Key key, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: icon.size + 20,
      height: icon.size + 20,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: new Color(0xFF707070)),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: IconButton(
        icon: this.icon,
        onPressed: () {
          this.onTap();
        },
      ),  
    );
  }
}