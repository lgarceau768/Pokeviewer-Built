import 'dart:ui';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              padding: EdgeInsets.only(left: 80, right: 50, top: 40, bottom: 40),
              children: [
                BCard(
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
                          child: Heading(text: 'WELCOME')),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 5, bottom: 2),
                                child: CustomTxt(
                                  color: Colors.red,
                                  fontSize: screenSize.width > 1000 ? 40 : 35,
                                  text: 'SCAN',bold: false),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 5, bottom: 2),
                                child: CustomTxt(
                                    color: Colors.yellow,
                                    fontSize: screenSize.width > 1000 ? 40 : 35,
                                    text: 'CREATE',bold: false),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 5, bottom: 2),
                                child: CustomTxt(
                                    color: Colors.blue,
                                    fontSize: screenSize.width > 1000 ? 40 : 35,
                                    text: 'BUILD',bold: false),
                              )
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          child: Center(
                            child: Para(
                              text: 'Discover a new world of possibilities\n that you can do with your pieces',
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
                BCompoundCard(
                  color: Colors.red,
                  title: 'Scan Tool!',
                  text: 'Scan the pieces of your lego sets\n and play with them in the the app.\nOrganize them in the "Vault",\n and create your own builds!',
                  imageLeft: false,
                  imagePath: 'assets/Scan-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.blue,
                  title: 'Organize Your Pieces!',
                  text: 'You can see all the pieces you scanned,\n how yours sets are formed,\n see detauls about each piece\n and organize them the way you want.',
                  imageLeft: true,
                  imagePath: 'assets/Vault-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.orange,
                  title: 'Create Your Own Builds',
                  text: 'Scan the pieces of your lego sets\n and play with them in the the app.\nOrganize them in the "Vault",\n and create your own builds!',
                  imageLeft: false,
                  imagePath: 'assets/Builder-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.green,
                  title: 'Discover New Sets',
                  text: 'You are very close to completing this set,\nbuy the pieces to complete it.\nFind out which sets you might like.',
                  imageLeft: true,
                  imagePath: 'assets/MarketPlace-Screen@2x.png'
                ),
                BCompoundCard(
                  color: Colors.black,
                  title: 'Stay Tunned!',
                  text: 'New cool features are coming soon,\n stay tuned to see them before anyone else!',
                  imageLeft: false,
                  imagePath: 'assets/CS-Screen@2x.png'
                ),
              ],
            )
          )
        ),
        ]
      ),
    );
  }
}
