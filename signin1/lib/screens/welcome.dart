import 'package:flutter/material.dart';
import 'businessSetup.dart';
import 'customindicator.dart';

class Welcome extends StatelessWidget {
  static const String ROUTE = '/allDone';
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text('Welcome Jane!',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Color(0XFFC20370),
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w900,
                      )),
                      SizedBox(height: 10.0),
                  Text('Now let us set up your business profile!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFC20370))),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>GridViewPage()),
                    );
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Color(0XFFC20370),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Image.asset(
                          "assets/images/Vector.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildIndicator(),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  _buildIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BorderedDot(
            color: Color(0XFFC20370),
          ),
          SizedBox(width: 2),
          SimpleLine(
            color: Color(0XFFC20370),
          ),
          SizedBox(width: 2),
          BorderedDot(
            color: Color(0XFFC20370),
          ),
          SizedBox(width: 2),
          SimpleLine(
            color: Color(0XFFC20370),
          ),
          SizedBox(width: 2),
          BorderedDot(
            color: Color(0XFFC20370),
          ),
        ],
      ),
    );
  }

  borderedDot() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color(0XFFC20370)),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: _simpleDot(isActive: true),
      ),
    );
  }

  _simpleDot({bool isActive = false}) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Color(0XFFC20370) : Colors.pink.shade300,
        shape: BoxShape.circle,
      ),
    );
  }


}
