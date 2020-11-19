import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:website/components/Responsive.dart';
import 'package:website/components/SubHeading.dart';

class NavBar extends StatefulWidget {
  final onTap;
  NavBar({Key key, this.onTap}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String screen = 'landing';
  var colors = {
    'scan': Colors.white,
    'vault': Colors.white,
    'marketplace': Colors.white,
    'builder': Colors.white
  };
  var btnColor = new Color(0xFF394967);
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
    if (screenSize.width <= 1200) {
      print('smaller: ' + this.navbar.toString());
      if (this.navbar) {
        return Container(
          width: screenSize.width,
          height: 300,
          color: Colors.transparent,
          child: Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.topLeft,
            children: [            
              Container(
                width: screenSize.width,
                height: 300,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        color: Colors.grey[300].withOpacity(0.7),
                      ),
                      width: 200,
                      height: 300,
                        child: Container(
                            color: Colors.transparent,
                            height: screenSize.height / 3 < 360
                                ? 360
                                : screenSize.height / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: ()  {
                                    this.colorChange('scan', Colors.white);
                                    this.setState(() {
                                      screen = 'scan';
                                            navbar = !navbar;
                                    });
                                            widget.onTap('scan');
                                  },
                                  child: MouseRegion(
                                      onEnter: (PointerEnterEvent evt) =>
                                          {this.colorChange('scan', Colors.red)},
                                      onExit: (PointerExitEvent evt) =>
                                          {this.colorChange('scan', Colors.white)},
                                      child: SubHeading(
                                          text: 'SCAN TOOL',
                                          bold: this.screen == 'scan',
                                          color: colors['scan'])),
                                ),
                                InkWell(
                                    onTap: ()  {
                                      this.colorChange('vault', Colors.white);
                                          this.setState(() {
                                            screen = 'vault';
                                            navbar = !navbar;
                                          });
                                            widget.onTap('vault');
                                        },
                                    child: MouseRegion(
                                        onEnter: (PointerEnterEvent evt) => {
                                              this.colorChange('vault', Colors.blue)
                                            },
                                        onExit: (PointerExitEvent evt) => {
                                              this.colorChange(
                                                  'vault', Colors.white)
                                            },
                                        child: SubHeading(
                                            text: 'VAULT',
                                            bold: this.screen == 'vault',
                                            color: colors['vault']))),
                                InkWell(
                                    onTap: ()  {
                                      this.colorChange(
                                                  'builder', Colors.green);
                                          this.setState(() {
                                            screen = 'builder';
                                            navbar = !navbar;
                                          });
                                            widget.onTap('builder');
                                        },
                                    child: MouseRegion(
                                        onEnter: (PointerEnterEvent evt) => {
                                              this.colorChange(
                                                  'builder', Colors.green)
                                            },
                                        onExit: (PointerExitEvent evt) => {
                                              this.colorChange(
                                                  'builder', Colors.white)
                                            },
                                        child: SubHeading(
                                            text: 'BUILDER',
                                            bold: this.screen == 'builder',
                                            color: colors['builder']))),
                                InkWell(
                                    onTap: ()  {
                                      this.colorChange(
                                                  'marketplace', Colors.white);
                                          this.setState(() {
                                            screen = 'marketplace';
                                            navbar = !navbar;
                                          });
                                            widget.onTap('marketplace');
                                        },
                                    child: MouseRegion(
                                        onEnter: (PointerEnterEvent evt) => {
                                              this.colorChange('marketplace',
                                                  new Color(0xFFFFAD33))
                                            },
                                        onExit: (PointerExitEvent evt) => {
                                              this.colorChange(
                                                  'marketplace', Colors.white)
                                            },
                                        child: SubHeading(
                                            text: 'MARKETPLACE',
                                            bold: this.screen == 'marketplace',
                                            color: colors['marketplace']))),
                                InkWell(
                                    onTap: ()  {
                                      this.setState(() {
                                                    btnColor =
                                                        new Color(0xFF394967);
                                                  });
                                          this.setState(() {
                                            screen = 'sign';
                                            navbar = !navbar;
                                          });
                                            widget.onTap('sign');
                                        },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 15, bottom: 5, top: 5),
                                        child: MouseRegion(
                                            onEnter: (PointerEnterEvent evt) => {
                                                  this.setState(() {
                                                    btnColor = Colors.green;
                                                  })
                                                },
                                            onExit: (PointerExitEvent evt) => {
                                                  this.setState(() {
                                                    btnColor =
                                                        new Color(0xFF394967);
                                                  })
                                                },
                                            child: Container(
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  border:
                                                      Border.all(color: btnColor),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(5)),
                                                  color: btnColor,
                                                ),
                                                child: Text(
                                                  'SIGN UP NOW',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Muli',
                                                    fontWeight:
                                                        this.screen == 'sign'
                                                            ? FontWeight.bold
                                                            : FontWeight.normal,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                              ]
                            ),
                          ),
                        ),  
                  ) 
                         
                ) 
              ),
              Container(
                color: Colors.grey[300].withOpacity(0.7),
                width: screenSize.width,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenSize.width / 4.2 < 448
                          ? 448
                          : screenSize.width / 4.2,
                      height: screenSize.height / 10 < 108
                          ? 448
                          : screenSize.height / 10,
                      child: Image.asset('assets/Text.png')),
                    InkWell(
                      onTap: () {
                        this.setState(() {
                          navbar = !navbar;
                        });
                      },
                      child: Container(
                          width: 120,
                          color: Colors.grey[300].withOpacity(0.5),
                          child: Image.asset('assets/B-ICON.png')),
                    ),
                  ],
                )
              ),
              ],
          )
        );
      } else {
        return Container(
          width: screenSize.width,
            height: 60,
            color: Colors.grey[300].withOpacity(0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: screenSize.width / 4.2 < 448
                        ? 448
                        : screenSize.width / 4.2,
                    height: screenSize.height / 10 < 108
                        ? 448
                        : screenSize.height / 10,
                    child: Image.asset('assets/Text.png')),
                InkWell(
                  onTap: () {
                    this.setState(() {
                      navbar = !navbar;
                    });
                  },
                  child: Container(
                      width: 120,
                      color: Colors.grey[300].withOpacity(0.5),
                      child: Image.asset('assets/B-ICON.png')),
                ),
              ],
            ));
      }
    }
    return Container(
      width: screenSize.width,
        color: Colors.grey[300].withOpacity(0.7),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/B-ICON.png'),
            Container(
                width:
                    screenSize.width / 4.2 < 448 ? 448 : screenSize.width / 4.2,
                height:
                    screenSize.height / 10 < 108 ? 448 : screenSize.height / 10,
                child: Image.asset('assets/Text.png')),
            InkWell(
              onTap: () {
                this.setState(() {
                  screen = 'scan';
                });
                widget.onTap('scan');
              },
              child: MouseRegion(
                  onEnter: (PointerEnterEvent evt) =>
                      {this.colorChange('scan', Colors.red)},
                  onExit: (PointerExitEvent evt) =>
                      {this.colorChange('scan', Colors.white)},
                  child: SubHeading(
                      text: 'SCAN TOOL',
                      bold: this.screen == 'scan',
                      color: colors['scan'])),
            ),
            InkWell(
                onTap: () {
                  this.setState(() {
                    screen = 'vault';
                  });
                  widget.onTap('vault');
                },
                onHover: (hovered) {
                  if (hovered) {
                    this.colorChange('vault', Colors.blue);
                  } else {
                    this.colorChange('vault', Colors.white);
                  }
                },
                child: SubHeading(
                    text: 'VAULT',
                    bold: this.screen == 'vault',
                    color: colors['vault'])),
            InkWell(
                onTap: () {
                  this.setState(() {
                    screen = 'builder';
                  });

                  widget.onTap('builder');
                },
                child: MouseRegion(
                    onEnter: (PointerEnterEvent evt) =>
                        {this.colorChange('builder', Colors.green)},
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('builder', Colors.white)},
                    child: SubHeading(
                        text: 'BUILDER',
                        bold: this.screen == 'builder',
                        color: colors['builder']))),
            InkWell(
                onTap: () {
                  this.setState(() {
                    screen = 'marketplace';
                  });

                  widget.onTap('marketplace');
                },
                child: MouseRegion(
                    onEnter: (PointerEnterEvent evt) => {
                          this.colorChange('marketplace', new Color(0xFFFFAD33))
                        },
                    onExit: (PointerExitEvent evt) =>
                        {this.colorChange('marketplace', Colors.white)},
                    child: SubHeading(
                        text: 'MARKETPLACE',
                        bold: this.screen == 'marketplace',
                        color: colors['marketplace']))),
            InkWell(
                onTap: () {
                  this.setState(() {
                    screen = 'sign';
                  });

                  widget.onTap('sign');
                },
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
                    child: MouseRegion(
                        onEnter: (PointerEnterEvent evt) => {
                              this.setState(() {
                                btnColor = Colors.green;
                              })
                            },
                        onExit: (PointerExitEvent evt) => {
                              this.setState(() {
                                btnColor = new Color(0xFF394967);
                              })
                            },
                        child: Container(
                            width: 165,
                            decoration: BoxDecoration(
                              border: Border.all(color: btnColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: btnColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'SIGN UP NOW',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Muli',
                                  fontWeight: this.screen == 'sign'
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 20,
                                ),
                              )
                            )
                        )
                    )
                )
            ),
          ],
        ));
  }
}
