import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


import 'loginscreen.dart';

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: [
            Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('assets/images/heroImage.png'),
                AssetImage('assets/images/image1.jpg'),
                AssetImage('assets/images/image2.jpg'),
                AssetImage('assets/images/image3.jpg'),
                AssetImage('assets/images/image4.jpg')
              ],
              dotPosition: DotPosition.bottomCenter,
              dotIncreaseSize: 2.0,
              dotVerticalPadding: 50.0,
              dotBgColor: Colors.white.withOpacity(0.0),
              overlayShadowSize: 500.0,
              overlayShadow: true,
              overlayShadowColors: Colors.grey[600],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Center(
            child: Container(
              child: Text(
                'Profile your business for free and get booked whenever you want.',
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment(1.0, 1.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: 64.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.zero)),
                      child: Center(
                          child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 22.0,
                            color: Color(0XFF161F51)),
                      )))),
              GestureDetector(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 64.0,
                      decoration: BoxDecoration(
                          color: Color(0xffC20370),
                          borderRadius: BorderRadius.all(Radius.zero),
                          shape: BoxShape.rectangle),
                      child: Center(
                          child: Text('Become a supplier',
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Color(0XFFFFFFFF)))))),
            ],
          ),
        )
      ],
    );
  }
}
