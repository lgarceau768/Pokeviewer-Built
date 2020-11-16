import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/components/CustomTxt.dart';
import 'package:website/components/Social.dart';
import 'package:website/components/SocialIconsColored.dart';

class BBottomBar extends StatefulWidget {
  BBottomBar({Key key}) : super(key: key);

  @override
  _BBottomBarState createState() => _BBottomBarState();
}

class _BBottomBarState extends State<BBottomBar> {
  String email = '';

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

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;

    if(w > 1019) {
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Container(
            color: new Color(0xFF404040),
            width: w,
            height: 135,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/B-ICON.png'),
                Container(
                    width: w / 4.2 < 448 ? 448: w / 4.2,
                    height: h / 10 < 108 ? 448: h / 10,
                    child: Image.asset('assets/Text.png')
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Container(
                              height: 40,
                              width: w / 4.5,
                              child: TextField( 
                                textAlignVertical: TextAlignVertical.center,       
                                style: TextStyle(
                                  fontFamily: 'Muli',
                                  fontSize: 12
                                ),                      
                                decoration: InputDecoration(                                  
                                  fillColor: Colors.grey,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Email',                          
                                ),
                                onChanged: (value) {
                                  this.setState(() {
                                    email = value;
                                  });
                                },
                                onSubmitted: (value) {
                                  print('add to mailing list: '+value);
                                  this.setState(() {
                                    email = '';
                                  });
                                },
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print('add to email list');
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 18, right: 10),
                              child: FaIcon(FontAwesomeIcons.paperPlane, color: Colors.white, size: 17)
                            )
                          )
                        ]
                      ),
                    ),
                    CustomTxt(
                      bold: true,
                      color: Colors.grey[400],
                      fontSize: 12,
                      text: 'The LEGO® are trademarks of The LEGO® Group of companies which is not associated\nwith BrickBanker. This product is under the rules and regulations in "Paternt Pending" format',
                      customAlign: TextAlign.center,
                    )
                  ],
                ),
                SocialIconsColored()
              ],
            ) 
          )
      );
    } else {

    }
  }
}