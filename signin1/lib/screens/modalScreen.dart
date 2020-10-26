import 'package:flutter/material.dart';
import 'package:signin1/screens/allDone.dart';

class ModalBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(children: [
      Container(
        height: 500.0,
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Container(
            child: Column(
              children: [
                Text('One last Step',
                    style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF25282B))),
                Text(
                  'What event will you\n be supplying for?',
                  style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF25282B)),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 20.0, left: 20.0),
                    child: Column(
                      children: [
                        rectangleBox(),
                        SizedBox(height: 10.0),
                        rectangleBox(),
                        SizedBox(height: 10.0),
                        rectangleBox(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text('CANCEL',
                                      style: TextStyle(
                                          fontFamily: 'Work Sans',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFF25282B))),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AllDone()),
                                    );
                                  },
                                  child: Text(
                                    'FINISH',
                                    style: TextStyle(
                                        fontFamily: 'Work Sans',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFF25282B)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}

Row rectangleBox() {
  return Row(
    children: [
      Expanded(
          child: Container(
        height: 108.0,
        width: 106.0,
        decoration: BoxDecoration(
          color: Color(0XFF161F51).withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
      )),
      SizedBox(
        width: 15.0,
      ),
      Expanded(
          child: Container(
        height: 108.0,
        width: 106.0,
        decoration: BoxDecoration(
          color: Color(0XFF161F51).withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
      ))
    ],
  );
}
