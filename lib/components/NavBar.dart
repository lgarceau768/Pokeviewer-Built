import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:website/components/Responsive.dart';
import 'package:website/components/SubHeading.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String screen = 'landing';
  var colors = {
    'scan': Colors.black,
    'vault': Colors.black,
    'marketplace': Colors.black,
    'builder': Colors.black
  };
  var btnColor = new Color(0xFFFFAD33);
  bool navbar = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void colorChange(var path, Color color) {
    this.setState(() {
      colors[path] = color;
    });
  }

  @override
  Widget build(BuildContext context) {


    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 600) {
      return Container(
          height: 60,
          color: Colors.white.withOpacity(0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [              
              Container(
                width: screenSize.width / 5 < 384 ? 384: screenSize.width / 5,
                height: screenSize.height / 10 < 108 ? 108: screenSize.height / 10,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Text.png'), fit: BoxFit.cover)),
              ),
              this.navbar ? OverflowBox(
                alignment: Alignment.topRight,
                maxWidth: 0,
                minWidth: 120,
                minHeight: 0,
                maxHeight: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
              onTap: () => {
                this.setState(() {
                  screen = 'scan';
                }),
              },
              child: MouseRegion(
                  onEnter: (PointerEnterEvent evt) =>
                      {this.colorChange('scan', Colors.red)},
                  onExit: (PointerExitEvent evt) =>
                      {this.colorChange('scan', Colors.black)},
                  child: SubHeading(
                      text: 'SCAN TOOL',
                      bold: this.screen == 'scan',
                      color: colors['scan'])),
            ),
            InkWell(
                onTap: () => {
                      this.setState(() {
                        screen = 'vault';
                      }),
                    },
                child: MouseRegion(
                    onEnter: (PointerEnterEvent evt) =>
                        {this.colorChange('vault', Colors.blue)},
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('vault', Colors.black)},
                    child: SubHeading(
                        text: 'VAULT',
                        bold: this.screen == 'vault',
                        color: colors['vault']))),
            InkWell(
                onTap: () => {
                      this.setState(() {
                        screen = 'builder';
                      }),
                    },
                child: MouseRegion(
                    onEnter: (PointerEnterEvent evt) =>
                        {this.colorChange('builder', Colors.green)},
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('builder', Colors.black)},
                    child: SubHeading(
                        text: 'BUILDER',
                        bold: this.screen == 'builder',
                        color: colors['builder']))),
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
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('marketplace', Colors.black)},
                    child: SubHeading(
                        text: 'MARKETPLACE',
                        bold: this.screen == 'marketplace',
                        color: colors['marketplace']))),
            InkWell(
                onTap: () => {
                      this.setState(() {
                        screen = 'sign';
                      }),
                    },
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: btnColor,
                            ),
                            child: Text(
                              'SIGN UP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Muli',
                                fontWeight: this.screen == 'sign'
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                fontSize: 20,
                              ),
                            ))))),
                  ],
                ),
              ): InkWell(
                  onTap: () {
                    print('openNav');
                    this.setState(() {
                      navbar = !navbar;
                    });
                  },
                  child: Container(
                    width: 120,
                    color: this.navbar ? new Color(0xFFFFAD33).withOpacity(0.7): Colors.transparent,
                    child: Image.asset('assets/B-ICON.png')
                  ),
              ),
            ],
          ));
    }
    return Container(
        height: 60,
        color: Colors.white.withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/B-ICON.png'),
            Container(
              width: screenSize.width / 5 < 384 ? 384: screenSize.width / 5,
              height: screenSize.height / 10 < 108 ? 108: screenSize.height / 10,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Text.png'), fit: BoxFit.cover)),
            ),
            ResponsiveWidget.isLargeScreen(context)
                ? Container(width: screenSize.width * 1 / 3)
                : Container(width: 0.0, height: 0.0),
            InkWell(
              onTap: () => {
                this.setState(() {
                  screen = 'scan';
                }),
              },
              child: MouseRegion(
                  onEnter: (PointerEnterEvent evt) =>
                      {this.colorChange('scan', Colors.red)},
                  onExit: (PointerExitEvent evt) =>
                      {this.colorChange('scan', Colors.black)},
                  child: SubHeading(
                      text: 'SCAN TOOL',
                      bold: this.screen == 'scan',
                      color: colors['scan'])),
            ),
            InkWell(
                onTap: () => {
                      this.setState(() {
                        screen = 'vault';
                      }),
                    },
                child: MouseRegion(
                    onEnter: (PointerEnterEvent evt) =>
                        {this.colorChange('vault', Colors.blue)},
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('vault', Colors.black)},
                    child: SubHeading(
                        text: 'VAULT',
                        bold: this.screen == 'vault',
                        color: colors['vault']))),
            InkWell(
                onTap: () => {
                      this.setState(() {
                        screen = 'builder';
                      }),
                    },
                child: MouseRegion(
                    onEnter: (PointerEnterEvent evt) =>
                        {this.colorChange('builder', Colors.green)},
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('builder', Colors.black)},
                    child: SubHeading(
                        text: 'BUILDER',
                        bold: this.screen == 'builder',
                        color: colors['builder']))),
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
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('marketplace', Colors.black)},
                    child: SubHeading(
                        text: 'MARKETPLACE',
                        bold: this.screen == 'marketplace',
                        color: colors['marketplace']))),
            InkWell(
                onTap: () => {
                      this.setState(() {
                        screen = 'sign';
                      }),
                    },
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: btnColor,
                            ),
                            child: Text(
                              'SIGN UP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Muli',
                                fontWeight: this.screen == 'sign'
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                fontSize: 20,
                              ),
                            ))))),
          ],
        ));
  }
}
