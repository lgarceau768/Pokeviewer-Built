import 'package:flutter/material.dart';
import 'package:website/components/CustomTxt.dart';
import 'package:website/components/Para.dart';

class BCompoundCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;
  final Color color;
  final bool imageLeft;
  const BCompoundCard({Key key, this.imagePath, this.text, this.title, this.color, this.imageLeft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    if(w > 1020){
      if(!imageLeft){
        return Padding(
          padding: EdgeInsets.all(100),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: color, width: 2),
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              width: w * 0.75,
              height: h * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Center(child: CustomTxt(bold: true, color: color, text: title, fontSize: 35, customAlign: TextAlign.left))
                      ),
                      Center(child: Para(bold: false, text: text, customAlign: TextAlign.left))
                    ],
                  ),
                  Container(
                    width: 508,
                    height: h * 0.4,
                    child: OverflowBox(
                      maxHeight: 508,
                      child: SizedBox(
                        width: 508,
                        height: 570,
                        child: Image.asset(imagePath)
                      )
                    )
                  )
                ],
              )
            )
          )
        );
      } else {
        return Padding(
          padding: EdgeInsets.all(100),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: color, width: 2),
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              width: w * 0.75,
              height: h * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 508,
                    height: h * 0.4,
                    child: OverflowBox(
                      maxHeight: 508,
                      child: SizedBox(
                        width: 508,
                        height: 570,
                        child: Image.asset(imagePath)
                      )
                    )
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Center(child: CustomTxt(bold: true, color: color, text: title, fontSize: 35, customAlign: TextAlign.right))
                      ),
                      Center(child: Para(bold: false, text: text, customAlign: TextAlign.right))
                    ],
                  ),
                ],
              )
            )
          )
        );
      }
    } else {
        return Padding(
          padding: EdgeInsets.all(120),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: color, width: 2),
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(color: Colors.grey[50], blurRadius: 5)
                ]
              ),
              width: w * 0.75,
              height: h * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Center(child: CustomTxt(bold: true, color: color, text: title, fontSize: 35, customAlign: TextAlign.left))
                      ),
                      Center(child: Para(bold: false, text: text, customAlign: TextAlign.left))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Container(
                      width: 508,
                      height: h * 0.4,
                      child: OverflowBox(
                        maxHeight: 508,
                        child: SizedBox(
                          width: 508,
                          height: 570,
                          child: Image.asset(imagePath)
                        )
                      )
                    )
                  )
                ],
              )
            )
          )
        );
      } 
  }
}