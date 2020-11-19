import 'dart:ui';
import 'dart:io';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:website/components/AboutUs.dart';
import 'package:website/components/BBottomBar.dart';
import 'package:website/components/BCard.dart';
import 'package:website/components/BCompoundCard.dart';
import 'package:website/components/CustomTxt.dart';
import 'package:website/components/Heading.dart';
import 'package:website/components/Modal.dart';
import 'package:website/components/NavBar.dart';
import 'package:website/components/Para.dart';
import 'package:website/components/RespContainer.dart';
import 'package:website/components/RespImage.dart';
import 'package:website/components/Responsive.dart';
import 'package:website/components/SubHeading.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gplay = 'https://play.google.com/store';
  var astore = 'https://www.apple.com/shop';
  var signUp = 'https://forms.gle/MbrFQyjzWYsjrRPB8';
  Color btnColor;
  bool modal = false;
  bool about = false;

  void newUser() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool new_user = prefs.getBool('new_user');
      print('new user status: '+new_user.toString());
      if(new_user == true){
        this.setState(() {
          modal = true;
        });
        prefs.setBool('new_user', false);
      } else {
        this.setState(() {
          modal = false;
        });
      }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    btnColor = Colors.blue[900];
    newUser();
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
    final SCAN_KEY = new GlobalKey();
    final VAULT_KEY = new GlobalKey();
    final BUILDER_KEY = new GlobalKey();
    final MARKETPLACE_KEY = new GlobalKey();

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
          appBar: null,
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Stack(
              children: <Widget>[                
                Center(
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
                        key: SCAN_KEY,
                        color: Colors.grey[350].withOpacity(0.7),
                        title: 'Bank Tool!',
                        text: 'Bank the pieces of your LEGO® set\nwith the camera.\nOrganize them in the "Vault"\ncreate your own builds.',
                        imageLeft: false,
                        imagePath: screenSize.width > 1200 ? 'assets/Scan-Screen@2x.png' : 'assets/Scan-Screen.png'
                      ),
                      BCompoundCard(
                        key: VAULT_KEY,
                        color: Colors.grey[350].withOpacity(0.7),
                        title: 'Build Your Vault',
                        text: 'You can see all the pieces you scanned,\nhow yours sets are formed,\nsee detauls about each piece\nand organize them the way you want.',
                        imageLeft: true,
                        imagePath: screenSize.width > 1200 ? 'assets/Vault-Screen@2x.png':'assets/Vault-Screen.png'
                      ),
                      BCompoundCard(
                        key: BUILDER_KEY,
                        color: Colors.grey[350].withOpacity(0.7),
                        title: 'Post Your Custom Designs',
                        text: 'Use the pieces you already scanned\nto create your own unique constructions,\ntake a picture, name it and save it here.\nYou can also share your creations.',
                        imageLeft: false,
                        imagePath: screenSize.width > 1200 ? 'assets/Builder-Screen@2x.png':'assets/Builder-Screen.png'
                      ),
                      BCompoundCard(
                        key: MARKETPLACE_KEY,
                        color: Colors.grey[350].withOpacity(0.7),
                        title: 'Discover New Sets',
                        text: 'You are very close to completing this set,\nbuy the pieces to complete it.\nFind out which sets you might like.',
                        imageLeft: true,
                        imagePath: screenSize.width > 1200 ? 'assets/MarketPlace-Screen@2x.png':'assets/MarketPlace-Screen.png'
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
                        title: 'Stay Tuned!',
                        text: 'New cool features are coming soon,\nstay tuned to see them before anyone else!',
                        imageLeft: true,
                        imagePath: screenSize.width > 1200 ? 'assets/CS-Screen@2x.png': 'assets/CS-Screen.png'
                      ),
                      BBottomBar(onAbout: () => this.setState(() {
                        about = true;
                      })),
                    ],
                  )
                ),
                Positioned(
                top: 0,
                left: 0,
                child: NavBar(onTap: (path) {
                  print('path: '+path.toString());
                    if(path == 'vault'){
                      Scrollable.ensureVisible(VAULT_KEY.currentContext);
                    } else if(path == 'builder') {
                      Scrollable.ensureVisible(BUILDER_KEY.currentContext);
                    } else if(path == "marketplace") {
                      Scrollable.ensureVisible(MARKETPLACE_KEY.currentContext);
                    } else if(path == "scan") {
                      Scrollable.ensureVisible(SCAN_KEY.currentContext);
                    } else if(path == "sign") {
                      openLink(signUp);
                    }
                  }),
                ),
                modal ? Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height,
                    color: Colors.grey[300].withOpacity(0.7),
                    child: Padding(
                      padding: EdgeInsets.all(100),
                        child: Container(
                          color: Colors.grey[300],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                              
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey[400], width: 2),
                                  borderRadius: BorderRadius.all(Radius.circular(25))
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Heading(text: 'License Agreement')
                                )
                              ),
                              Padding(
                                padding: EdgeInsets.all(60),
                                child: Container(
                                  width: screenSize.width * 0.8,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 20),
                                    child: CustomTxt(
                                      bold: false,
                                      color: Colors.black,
                                      customAlign: TextAlign.left,
                                      fontSize: 14,
                                      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dapibus, ipsum vitae tempor laoreet, justo mi efficitur erat, in maximus ex purus ut nunc. Vivamus purus turpis, lobortis ultricies dictum pulvinar, cursus a magna. Donec vel arcu sodales nunc commodo tempus. Praesent convallis suscipit enim, sed consequat mauris aliquet quis. Nulla quis augue ac erat dapibus tincidunt eget eget magna. Sed maximus ac ante et porta. Etiam scelerisque, mi in finibus pellentesque, ligula justo venenatis est, a eleifend ex lorem non odio. Fusce dictum nisl nisi, vitae sagittis erat auctor ut. Suspendisse erat diam, faucibus ac posuere quis, lacinia ut ex. Etiam nec convallis nisi. Nam auctor orci sed nisl ullamcorper ultrices. Nam elit nisl, maximus in lacus vel, tincidunt tincidunt eros. Mauris eget consectetur nibh, et luctus erat. Sed et maximus lectus. Aliquam ullamcorper ornare diam, vitae viverra mauris iaculis quis. Nullam fringilla, arcu at vestibulum efficitur, quam enim efficitur urna, et suscipit sem sapien venenatis nibh. Maecenas vestibulum, velit vitae posuere bibendum, lacus nibh ultricies ante, vitae condimentum purus ipsum ac nisi. Integer at orci et tellus aliquet pellentesque. ",
                                    )
                                  )
                                )
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(100),
                                  child: InkWell(
                                    onTap: () => this.setState(() {
                                      modal = false;
                                    }),
                                    onHover: (hover) {
                                      if(!hover){
                                        this.setState(() {
                                          btnColor = Colors.blue[900];
                                        });
                                      } else {
                                        this.setState(() {
                                          btnColor = Colors.green[800];
                                        });
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(15)),
                                        color: this.btnColor,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: SubHeading(bold: false, color: Colors.white, text: 'Accpet User Agreement')
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ]
                          )
                        )

                    )
                  )
                ) : Container(width: 0, height: 0),
                about ? About(callBack: () => this.setState(() {
                  about = false;
                })): Container(width: 0, height: 0)
              ]
            ),
          ),
        ),
        ]
      ),
    );
  }
}
