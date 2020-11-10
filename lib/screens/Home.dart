import 'dart:ui';
import 'dart:html' as html;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/components/BCard.dart';
import 'package:website/components/CustomTxt.dart';
import 'package:website/components/Heading.dart';
import 'package:website/components/Para.dart';
import 'package:website/components/Responsive.dart';
import 'package:website/components/SubHeading.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String screen = '';
  var colors = {
    'scan': Colors.black,
    'vault': Colors.black,
    'marketplace': Colors.black,
    'builder': Colors.black
  };
  var btnColor = new Color(0xFFFFAD33);

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

  void openLink(var url){
    html.window.open(url, url);
  }

  void colorChange(var path, Color color){
    this.setState(() {
      colors[path] = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var cardWidth = screenSize.width * 1/3.5;
    var cardHeight = screenSize.height * 1/2;
    var gplay = 'https://play.google.com/store';
    var astore = 'https://www.apple.com/shop';
    

    if(ResponsiveWidget.isSmallScreen(context)){
      cardWidth = screenSize.width * 0.6;
      cardHeight = screenSize.height * 0.5;
    } else if(ResponsiveWidget.isMediumScreen(context)){
      cardWidth = screenSize.width * 0.4;
      cardHeight = screenSize.height * 0.3;
    }


    return new Container(
      child: new Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/BKG.png'),
              fit: BoxFit.cover
            )
          ),
        ),
        Scaffold(   
          backgroundColor: Colors.transparent,   
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: Container(
              height: 60,
              color: Colors.white.withOpacity(0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/B-ICON.png'),
                  Container(
                    width: screenSize.width * 1/5,
                    height: screenSize.height * 1/10,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Text.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  ResponsiveWidget.isLargeScreen(context) ? Container(width: screenSize.width * 1/3): Container(width: 0.0, height: 0.0),
                  InkWell(
                    onTap: () => {
                      this.setState(() {
                        screen = 'scan';
                      }),
                    },
                    child: MouseRegion(
                      onEnter: (PointerEnterEvent evt) => {
                        this.colorChange('scan', Colors.red)
                      },
                      onExit: (PointerExitEvent evt) => {
                        this.colorChange('scan', Colors.black)
                      },
                      child: SubHeading(text: 'SCAN TOOL', bold: this.screen == 'scan', color: colors['scan'])
                    ),
                  ),
                  InkWell(
                    onTap: () => {
                      this.setState(() {
                        screen = 'vault';
                      }),
                    },
                    child: MouseRegion(
                      onEnter: (PointerEnterEvent evt) => {
                        this.colorChange('vault', Colors.blue)
                      },
                      onExit: (PointerExitEvent evt) => {
                        this.colorChange('vault', Colors.black)
                      },
                      child: SubHeading(text: 'VAULT', bold: this.screen == 'vault', color: colors['vault'])
                    )
                  ),
                  InkWell(
                    onTap: () => {
                      this.setState(() {
                        screen = 'builder';
                      }),
                    },
                    child: MouseRegion(
                      onEnter: (PointerEnterEvent evt) => {
                        this.colorChange('builder', Colors.green)
                      },
                      onExit: (PointerExitEvent evt) => {
                        this.colorChange('builder', Colors.black)
                      },
                      child: SubHeading(text: 'BUILDER', bold: this.screen == 'builder', color: colors['builder'])
                    )
                  ),
                  InkWell(
                    onTap: () => {
                      this.setState(() {
                        screen = 'marketplace';
                      }),
                    },
                    child: MouseRegion(
                      onEnter: (PointerEnterEvent evt) => {
                        this.colorChange('marketplace', new Color(0xFFFFAD33))
                      },
                      onExit: (PointerExitEvent evt) => {
                        this.colorChange('marketplace', Colors.black)
                      },
                      child: SubHeading(text: 'MARKETPLACE', bold: this.screen == 'marketplace', color: colors['marketplace'])
                    )
                  ),
                  InkWell(
                    onTap: () => {
                      this.setState(() {
                        screen = 'sign';
                      }),
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
                      child: MouseRegion(
                        onEnter: (PointerEnterEvent evt) => {
                          this.setState(() {
                            btnColor = Colors.green;
                          })
                        },
                        onExit: (PointerExitEvent evt) => {
                          this.setState(() {
                            btnColor = new Color(0xFFFCC016);
                          })
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: new Color(0xFFFCC016)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: btnColor,
                          ),
                          child: Text('SIGN UP', 
                            textAlign: TextAlign.center,
                            style: TextStyle(                      
                              color: Colors.white,
                              fontFamily: 'Muli',
                              fontWeight: this.screen == 'sign' ? FontWeight.bold: FontWeight.normal,
                              fontSize: 20,
                            ),
                          )
                        )
                      )
                    )
                  ),
                ],
              )
            )
          ),
          body: Center(
            child: ListView(
              padding: EdgeInsets.only(left: 80, right: 50, top: 40, bottom: 40),
              children: <Widget>[
                BCard(
                  leftChild: ResponsiveWidget(
                    smallScreen: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: new Color(0xFFFFAD33)),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 20, color: Colors.grey)]
                      ),
                      width: cardWidth,
                      height: cardHeight,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Heading(text: 'WELCOME'),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.red, fontSize: 25, text: 'SCAN', bold: false)),
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.yellow, fontSize: 25, text: 'CREATE',  bold: false)),
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.blue, fontSize: 25, text: 'BUILD',  bold: false))
                                ],
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Center(
                                child: Para(text: 'Discover a new world of possibilities\n that you can do with your pieces', bold: false, size: 15)
                              )
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                    InkWell(
                                      onTap: () => {
                                        openLink(gplay)
                                      },
                                      child: Image.asset('G-Play.png'),
                                    ),
                                    InkWell(
                                      onTap: () => {
                                        openLink(astore)
                                      },
                                      child: Image.asset('App-Store.png')
                                    )
                                ],
                              )
                            )
                          ],
                        ),
                      ),
                    mediumScreen: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: new Color(0xFFFFAD33)),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 20, color: Colors.grey)]
                      ),
                      width: cardWidth,
                      height: cardHeight,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Heading(text: 'WELCOME'),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.red, fontSize: 25, text: 'SCAN', bold: false)),
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.yellow, fontSize: 25, text: 'CREATE',  bold: false)),
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.blue, fontSize: 25, text: 'BUILD',  bold: false))
                                ],
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Center(
                                child: Para(text: 'Discover a new world of possibilities\n that you can do with your pieces', bold: false, size: 20)
                              )
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () => {
                                          openLink(gplay)
                                        },
                                        child: ResponsiveWidget(
                                          largeScreen: Image.asset('G-Play.png'),
                                          mediumScreen: Image.asset('G-Play.png', width: 156, height: 49),
                                          smallScreen: FaIcon(FontAwesomeIcons.googlePlay, size: 25)
                                        ),
                                      ),
                                      ResponsiveWidget.isLargeScreen(context) ? Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(color: new Color(0xFFFFAD33)),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        width: 150,
                                        height: 150,
                                        child: Image.asset('G-Play-QR.png')
                                      ): Container()
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () => {
                                          openLink(astore)
                                        },
                                        child: ResponsiveWidget(
                                          largeScreen: Image.asset('App-Store.png'),
                                          mediumScreen: Image.asset('App-Store.png', width: 156, height: 49),
                                          smallScreen: FaIcon(FontAwesomeIcons.appStore, size: 25)
                                        )
                                      ),
                                      ResponsiveWidget.isLargeScreen(context) ? Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(color: new Color(0xFFFFAD33)),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        width: 150,
                                        height: 150,
                                        child: Image.asset('App-Store-QR.png')
                                      ): Container()
                                    ],
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                      ),
                    largeScreen: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: new Color(0xFFFFAD33)),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 20, color: Colors.grey)]
                      ),
                      width: cardWidth,
                      height: cardHeight,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Heading(text: 'WELCOME'),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.red, fontSize: 40, text: 'SCAN', bold: false)),
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.yellow, fontSize: 40, text: 'CREATE',  bold: false)),
                                  Padding(padding: EdgeInsets.only(right: 5, bottom: 2), child: CustomTxt(color: Colors.blue, fontSize: 40, text: 'BUILD',  bold: false))
                                ],
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Center(
                                child: Para(text: 'Discover a new world of possibilities\n that you can do with your pieces', bold: false)
                              )
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () => {
                                          openLink(gplay)
                                        },
                                        child: ResponsiveWidget(
                                          largeScreen: Image.asset('G-Play.png'),
                                          mediumScreen: Image.asset('G-Play.png', width: 156, height: 49),
                                          smallScreen: FaIcon(FontAwesomeIcons.googlePlay, size: 25)
                                        ),
                                      ),
                                      ResponsiveWidget.isLargeScreen(context) ? Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(color: new Color(0xFFFFAD33)),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        width: 150,
                                        height: 150,
                                        child: Image.asset('G-Play-QR.png')
                                      ): Container()
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () => {
                                          openLink(astore)
                                        },
                                        child: ResponsiveWidget(
                                          largeScreen: Image.asset('App-Store.png'),
                                          mediumScreen: Image.asset('App-Store.png', width: 156, height: 49),
                                          smallScreen: FaIcon(FontAwesomeIcons.appStore, size: 25)
                                        )
                                      ),
                                      ResponsiveWidget.isLargeScreen(context) ? Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(color: new Color(0xFFFFAD33)),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        width: 150,
                                        height: 150,
                                        child: Image.asset('App-Store-QR.png')
                                      ): Container()
                                    ],
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  rightChild: ResponsiveWidget(largeScreen: Image.asset('M-D-V-Screen@2x.png'), mediumScreen: Image.asset('M-D-V-Screen.png', width: 500, height: 500), smallScreen: Image.asset('M-D-V-Screen.png', width: screenSize.width * 0.4, height: screenSize.height * 0.4)),
                  socialIcons: true,
                )
              ],
            )
          )        
        )
      ]
    ),
  );
  }
}