import 'package:flutter/material.dart';
import 'package:website/components/Social.dart';

class BCard extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;
  final Widget masterChild;
  final bool socialIcons;
  const BCard(
      {Key key,
      this.leftChild,
      this.rightChild,
      this.masterChild,
      this.socialIcons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    if (size.width < 822) {
      if (this.leftChild != null && this.rightChild != null) {
        if (this.socialIcons == true) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: size.width * 0.9,
                    height: size.height * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(10), child: this.leftChild),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: this.rightChild),
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 0, left: 15),
                    child: SocialIcons())
              ]);
        } else {
          return Container(
              width: size.width * 0.8,
              height: size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: EdgeInsets.all(10), child: this.leftChild),
                  Padding(padding: EdgeInsets.all(10), child: this.rightChild),
                ],
              ));
        }
      }
    }

    if (this.leftChild != null && this.rightChild != null) {
      if (this.socialIcons == true) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: size.width * 0.9,
                  height: size.height * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10), child: this.leftChild),
                      Padding(
                          padding: EdgeInsets.all(10), child: this.rightChild),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 40, left: 15),
                  child: Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 15),
                      child: SocialIcons()))
            ]);
      } else {
        return Container(
            width: size.width * 0.8,
            height: size.height * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.all(10), child: this.leftChild),
                Padding(padding: EdgeInsets.all(10), child: this.rightChild),
              ],
            ));
      }
    }
  }
}
