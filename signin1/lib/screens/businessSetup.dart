import 'package:flutter/material.dart';

import 'package:signin1/screens/grideView.dart';
import 'package:signin1/screens/modalScreen.dart';

Product product = Product();
const Color colors = Color(0XFF161F51);

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  Color colorsOpacity = Color(0XFF161F51).withOpacity(0.4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 125.0),
              child: ProductApp(),
            ),
          ),
          HeaderWiget(),
          Center(
              child: GestureDetector(
            onTap: () {
              
              showDialog(
                  context: context,
                  builder: (BuildContext context) => ModalBox());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: 64.0,
                  decoration: BoxDecoration( 
                    color: product.isSelected
                        ? product.colors
                        : Color(0XFF161F51),
                        
                  ),
                  
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Work Sans',
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

 class HeaderWiget extends StatelessWidget {
  final Color colors = Color(0XFF161F51);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 128,
      decoration: BoxDecoration(
        color: colors,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'What do you do?',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                      ),
                    ),
                    RichText(
                        text: TextSpan(
                      text: 'You can select multiple options',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  width: 50.0,
                ),
                GestureDetector(
                    onTap: () {},
                    child: RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'SKIP',
                            style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              decorationColor: Colors.white,
                              decoration: TextDecoration.underline,
                            ))
                      ],
                    ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
