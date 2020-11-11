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
                    width: screenSize.width / 5 < 384 ? 384: screenSize.width / 5,
                    height: screenSize.height / 10 < 108 ? 108: screenSize.height / 10,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Text.png'), fit: BoxFit.cover)),
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
                color: Colors.grey.withOpacity(0.7),
                child: Expanded(
                  child: Container(
                    color: Colors.transparent,
                    height: screenSize.height / 3 < 360 ? 360: screenSize.height / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            this.setState(() {
                              screen = 'scan';
                            });
                            this.changeColor('scan', Colors.black);0
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
                                    color: Colors.grey,
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
                width: screenSize.width / 5 < 384 ? 384: screenSize.width / 5,
                height: screenSize.height / 10 < 108 ? 108: screenSize.height / 10,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Text.png'), fit: BoxFit.cover)),
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
        height: 60,
        color: Colors.grey.withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/B-ICON.png'),
            Container(
              width: screenSize.width / 6 < 320 ? 320: screenSize.width / 6,
              height: screenSize.height / 11 < 98 ? 98: screenSize.height / 11,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Text.png'), fit: BoxFit.cover)),
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
        ));
  }
}
