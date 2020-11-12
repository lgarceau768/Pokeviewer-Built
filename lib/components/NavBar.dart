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
    if (screenSize.width < 1019) {
      if(this.navbar){
        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: 60,
              color: Colors.grey.withOpacity(0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width / 4.2 < 448 ? 448: screenSize.width / 4.2,
                    height: screenSize.height / 10 < 108 ? 448: screenSize.height / 10,
                    child: Image.asset('assets/Text.png')
                  ),
                  InkWell(
                    onTap: () {
                      this.setState(() {
                        navbar = !navbar;
                      });
                    },
                    child: Container(
                      width: 120,
                      child: Image.asset('assets/B-ICON.png')
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0, 
              right: 0,
              child: Container(
                width: 200,
                height: 300,
                child: Expanded(
                  child: Container(
                    color: Colors.transparent,
                    height: screenSize.height / 3 < 360 ? 360: screenSize.height / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            this.setState(() {
                              screen = 'scan';
                            });
                            colorChange('scan', Colors.black);
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
                            padding: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
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
                                  border: Border.all(color: btnColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: btnColor,
                                ),
                                child: Text(
                                  'SIGN UP',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
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
                        ),
                      ],
                    ),
                  ),
                )
              )
            )
          ],
        );
      } else {
        return Container(
          height: 60,
          color: Colors.grey.withOpacity(0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4.2 < 448 ? 448: screenSize.width / 4.2,
                height: screenSize.height / 10 < 108 ? 448: screenSize.height / 10,
                child: Image.asset('assets/Text.png')
              ),
              InkWell(
                onTap: () {
                  this.setState(() {
                    navbar = !navbar;
                  });
                },
                child: Container(
                  width: 120,
                  color: Colors.grey[300].withOpacity(0.5),
                  child: Image.asset('assets/B-ICON.png')
                ),
              ),
            ],
          )
        );
      }
    }
    return Container(
        color: Colors.grey.withOpacity(0.9),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/B-ICON.png'),
            Container(
                width: screenSize.width / 4.2 < 448 ? 448: screenSize.width / 4.2,
                height: screenSize.height / 10 < 108 ? 448: screenSize.height / 10,
                child: Image.asset('assets/Text.png')
            ),
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
                    )
                  )
                )
              )
            ),
          ],
        )
    );
  }
}
