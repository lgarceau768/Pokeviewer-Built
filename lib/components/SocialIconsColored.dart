import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/components/BIcon.dart';
import 'dart:html' as html;
import 'package:website/components/Responsive.dart';

class SocialIconsColored extends StatelessWidget {
  SocialIconsColored({Key key}) : super(key: key);

  var binsta = 'https://www.instagram.com/';
  var btwitter = 'https://twitter.com/?lang=en';
  var bworld = 'https://www.google.com/earth/'; // what is the link for the world icon

  void openLink(var url){
    html.window.open(url, url);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width * 1/10;
    if(ResponsiveWidget.isSmallScreen(context)){
      width = size.width * 1/4;
    }
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(right: 5),
            child: ResponsiveWidget(
              largeScreen: BIcon(icon: FaIcon(FontAwesomeIcons.twitter, size: 35, color: Colors.blue), onTap: () => openLink(binsta)),
              mediumScreen: BIcon(icon: FaIcon(FontAwesomeIcons.twitter, size: 28, color: Colors.blue), onTap: () => openLink(binsta)),
              smallScreen: BIcon(icon: FaIcon(FontAwesomeIcons.twitter, size: 20, color: Colors.blue), onTap: () => openLink(binsta)),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 5),
            child: ResponsiveWidget(
              largeScreen: BIcon(icon: FaIcon(FontAwesomeIcons.instagram, size: 35, color: Colors.red), onTap: () => openLink(btwitter)),
              mediumScreen: BIcon(icon: FaIcon(FontAwesomeIcons.instagram, size: 28, color: Colors.red), onTap: () => openLink(btwitter)),
              smallScreen: BIcon(icon: FaIcon(FontAwesomeIcons.instagram, size: 20, color: Colors.red), onTap: () => openLink(btwitter)),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 5),
            child: ResponsiveWidget(
              largeScreen: BIcon(icon: FaIcon(FontAwesomeIcons.globeAmericas, size: 35, color: Colors.green), onTap: () => openLink(bworld)),
              mediumScreen: BIcon(icon: FaIcon(FontAwesomeIcons.globeAmericas, size: 28, color: Colors.green), onTap: () => openLink(bworld)),
              smallScreen: BIcon(icon: FaIcon(FontAwesomeIcons.globeAmericas, size: 20, color: Colors.green), onTap: () => openLink(bworld)),
            )
          )
        ],
      )
    );
    
  }
}