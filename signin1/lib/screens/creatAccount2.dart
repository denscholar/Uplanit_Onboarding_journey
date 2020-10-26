import 'package:flutter/material.dart';
import 'package:signin1/widget/custome_textfied.dart';
import 'accountSetup.dart';
import 'customindicator.dart';
// import 'welcome.dart';

class SignUpPagerTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC20370),
      body: Column(children: [
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
                      child: Text('Set your email \nand password',
                          style: TextStyle(
                              fontSize: 38.0,
                              fontFamily: 'Work Sans',
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),

                    SizedBox(height: 22),
                    _buildForm(),
                    //  Expanded(child: Container()),
                  ],
                ),
              ],
            ),
          ),
        ),
        _buildIndicator(),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSetupOne()));
            },
            child: Center(
              child: Text('Next',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
          ),
        ),
      ]),
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
          Text('ADD EMAIL ADDRESS',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CREATE PASSWORD',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
              InkWell(
                  onTap: () {},
                  child: Text('Show',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
            ],
          ),
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
