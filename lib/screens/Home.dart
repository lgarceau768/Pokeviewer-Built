import 'dart:ui';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/components/BBottomBar.dart';
import 'package:website/components/BCard.dart';
import 'package:website/components/BCompoundCard.dart';
import 'package:website/components/CustomTxt.dart';
import 'package:website/components/Heading.dart';
import 'package:website/components/NavBar.dart';
import 'package:website/components/Para.dart';
import 'package:website/components/RespContainer.dart';
import 'package:website/components/RespImage.dart';
import 'package:website/components/Responsive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gplay = 'https://play.google.com/store';
  var astore = 'https://www.apple.com/shop';
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void openLink(var url) {
    html.window.open(url, url);
  }

  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return new Container(
      child: new Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BKG.png'), fit: BoxFit.cover)),
          ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: NavBar(),
          ),
          body: Center(
            child: ListView(
              padding: EdgeInsets.only(left: 0, right: 0, top: 40, bottom: 0),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 50),
                  child: BCard(
                    leftChild: RespContainer(
                      decor: BoxDecoration(
                        border: Border.all(color: new Color(0xFFFFAD33)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(blurRadius: 20, color: Colors.grey)
                        ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Heading(text: 'FINALLY IT\'S HERE')),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5, bottom: 2),
                                  child: CustomTxt(
                                    color: Colors.black,
                                    fontSize: screenSize.width > 1000 ? 40 : 35,
                                    text: 'BANK',bold: false),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5, bottom: 2),
                                  child: CustomTxt(
                                      color: Colors.black,
                                      fontSize: screenSize.width > 1000 ? 40 : 35,
                                      text: 'SORT',bold: false),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5, bottom: 2),
                                  child: CustomTxt(
                                      color: Colors.black,
                                      fontSize: screenSize.width > 1000 ? 40 : 35,
                                      text: 'SHARE',bold: false),
                                )
                              ],
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 10),
                            child: Center(
                              child: Para(
                                text: 'Revolutionary way to maintain\nyour LEGO® collection',
                                bold: false
                              )
                            )
                          ),
                          Center(
                            child:Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () => {openLink(gplay)},
                                      child: ResponsiveWidget(
                                          largeScreen: Image.asset('G-Play.png'),
                                          mediumScreen: Image.asset('G-Play.png', width: 156, height: 49),
                                          smallScreen: Image.asset('G-Play.png', width: 156, height: 49),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(color: new Color(0xFFFFAD33)),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      width: 150,
                                      height: 150,
                                      child: Image.asset('G-Play-QR.png')
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () => {openLink(astore)},
                                      child: ResponsiveWidget(
                                        largeScreen: Image.asset('App-Store.png'),
                                        mediumScreen: Image.asset('App-Store.png', width: 156, height: 49),
                                        smallScreen: Image.asset('App-Store.png', width: 156, height: 49))),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          border: Border.all(color: new Color(0xFFFFAD33)),
                                          borderRadius: BorderRadius.all(Radius.circular(5))),
                                      width: 150,
                                      height: 150,
                                      child: Image.asset('App-Store-QR.png')
                                    )
                                  ],
                                )
                              ],
                              )
                            )
                          )
                        ],
                      ),
                    ),
                    rightChild: RespImage(asset: screenSize.width > 1316 ? 'M-D-V-Screen@2x.png': 'M-D-V-Screen.png'), socialIcons: true,
                  ),
                ),
                BCompoundCard(
                  color: Colors.grey[350].withOpacity(0.7),
                  title: 'Bank Tool!',
                  text: 'Bank the pieces of your LEGO® set\nwith the camera.\nOrganize them in the "Vault"\ncreate your own builds.',
                  imageLeft: false,
                  imagePath: 'assets/Scan-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.grey[350].withOpacity(0.7),
                  title: 'Build Your Vault',
                  text: 'You can see all the pieces you scanned,\nhow yours sets are formed,\nsee detauls about each piece\nand organize them the way you want.',
                  imageLeft: true,
                  imagePath: 'assets/Vault-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.grey[350].withOpacity(0.7),
                  title: 'Post Your Custom Designs',
                  text: 'Use the pieces you already scanned\nto create your own unique constructions,\ntake a picture, name it and save it here.\nYou can also share your creations.',
                  imageLeft: false,
                  imagePath: 'assets/Builder-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.grey[350].withOpacity(0.7),
                  title: 'Discover New Sets',
                  text: 'You are very close to completing this set,\nbuy the pieces to complete it.\nFind out which sets you might like.',
                  imageLeft: true,
                  imagePath: 'assets/MarketPlace-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.grey[350].withOpacity(0.7),
                  title: 'Create Your Own Tags',
                  text: '1. Find a box or bin, mark it whith a color or wirte the name you like.\n2. Create a TAG with the same name or color in the app.\n3. Scan parts and the TAG to them.\n4. Store these pieces in the box or container, that you created.\n\nAmazing! You learned to use TAG, a new feature in BrickBanker.',
                  imageLeft: false,
                  imagePath: 'assets/Placeholder.png'
                ),
                BCompoundCard(
                  color: Colors.grey[350].withOpacity(0.7),
                  title: 'Stay Tunned!',
                  text: 'New cool features are coming soon,\nstay tuned to see them before anyone else!',
                  imageLeft: true,
                  imagePath: 'assets/CS-Screen@2x.png'
                ),
                BBottomBar()
              ],
            )
          ),
        ),
        ]
      ),
    );
  }
}
