import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/components/CustomTxt.dart';
import 'package:website/components/Heading.dart';
import 'package:website/components/Para.dart';

class About extends StatelessWidget {
  final Function callBack;
  const About({Key key, this.callBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String lorem = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\n\naliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem wefhh ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\n\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio efadde dignissim.';
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    
    if(w > 1200) {
      return Positioned(
        top: 0,
        left: 0,
        child: Container(
          width: w,
          height: h,
          color: Colors.white70,
          child: Center(
            child: Container(
              width: w * 0.8,
              height: h * 0.6,
              color: Colors.white70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: this.callBack,
                      child: FaIcon(FontAwesomeIcons.timesCircle, size: 25)
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Heading(text: 'ABOUT US', customAlign: TextAlign.left),
                          Container(
                            width:  w * 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                              child: CustomTxt(bold: false, color: Colors.black, customAlign: TextAlign.left, fontSize: 14, text: lorem)
                            )
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/Placeholder.png', width: w * 0.25, height: w * 0.25)
                        ],
                      )
                    ],
                  )
                ],
              )
            )
          )
        ),
      );
    } else {
      return Positioned(
        top: 0,
        left: 0,
        child: Container(
          width: w,
          height: h,
          color: Colors.white70,
          child: Center(
            child: Container(
              width: w * 0.8,
              height: h * 0.7,
              color: Colors.white70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: this.callBack,
                      child: FaIcon(FontAwesomeIcons.timesCircle, size: 25)
                    ),
                  ),
                  Heading(text: 'ABOUT US', customAlign: TextAlign.left),
                  Container(
                    width:  w * 0.9,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                      child: CustomTxt(bold: false, color: Colors.black, customAlign: TextAlign.left, fontSize: 14, text: lorem)
                    )
                  ),
                  Image.asset('assets/Placeholder.png', width: w * 0.25, height: w * 0.25)
                    
                ],
              )
            )
          )
        ),
      );
    }
  }
}