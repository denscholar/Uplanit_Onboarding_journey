import 'package:flutter/material.dart';
import 'package:signin1/widget/custome_textfied.dart';
import 'creatAccount2.dart';
import 'customindicator.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpPagerOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC20370),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Container(
                          child: Text('Tell us about \nyourself',
                              style: TextStyle(
                                  fontFamily: 'Work Sans',
                                  fontSize: 38.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white))),

                      SizedBox(height: 40),
                      _buildForm(),
                      //  Expanded(child: Container()),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildIndicator(),
          GestureDetector(
            onTap: (){
              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPagerTwo()),
                      );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                  child: Text('Next',
                      style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
          ),
        ]),
      ),
    );
  }

  _buildForm() {
    TextEditingController _firstNameController = TextEditingController();
    TextEditingController _lastNameController = TextEditingController();
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('FIRST NAME',
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          CustomTextField(
            title: '',
            color: Colors.white,
            controller: _firstNameController,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          Text('LAST NAME',
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          CustomTextField(
            title: '',
            color: Colors.white,
            controller: _lastNameController,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
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
          BorderedDot(),
          SizedBox(width: 2),
          SimpleLine(),
          SizedBox(width: 2),
          SimpleDot(),
          SizedBox(width: 2),
          SimpleLine(),
          SizedBox(width: 2),
          SimpleDot(),
        ],
      ),
    );
  }
}
