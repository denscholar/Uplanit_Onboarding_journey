import 'package:flutter/material.dart';
// import 'package:signin1/screens/customindicator.dart';

class AllDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All Done',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF25282B))),
              SizedBox(
                height: 20.0,
              ),
              Stack(
                children: [
                  Center(child: Image.asset('assets/images/Ellipse 12.png')),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child:
                        Center(child: Image.asset('assets/images/Vector.png')),
                  ),
                  
                ],
              ),
              Container(
                    // child: _buildIndicator(),
                  )
            ],
          ),
        ),
      ),
    );
  }
}

