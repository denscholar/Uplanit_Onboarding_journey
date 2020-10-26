import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'creatAccount.dart';

class SignUp extends StatelessWidget {
  static const String ROUTE = '/signUp';
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC20370),
      appBar: AppBar(
        // toolbarHeight: 50.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('Sign in',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white))),
          ),
        ],
        leading: IconButton(
            icon: Image.asset(
              'assets/images/logo2.png',
              width: 100.0,
              height: 100.0,
            ),
            onPressed: () {}),
        backgroundColor: Color(0XFFC20370),
        shadowColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: _buildOptions(context),
      ),
    );
  }

  _buildOptions(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                  child: Text(
                'Welcome to Uplanit',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Work Sans',
                  color: Colors.white,
                ),
              )),
              SizedBox(height: 40),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 56.0,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(

                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Color(0XFFC20370),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Sign up with Facebook',
                          style: TextStyle(
                              color: Color(0XFFC20370),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Work Sans'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 56.0,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Color(0XFFC20370),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Sign up with Gmail',
                          style: TextStyle(
                              color: Color(0XFFC20370),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Work Sans'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPagerOne()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Text('Create Account',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Work Sans')),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // InkWell(
              //     onTap: () {},
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 8.0),
              //       child: Text(
              //         'Other options',
              //         style: TextStyle(
              //             fontSize: 18.0,
              //             color: Colors.white,
              //             fontWeight: FontWeight.w400,
              //             fontFamily: 'Work Sans'),
              //       ),
              //     )),
              SizedBox(height: 50.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 300,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'Creating an account with us means you agree with our ',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                  decoration: TextDecoration.underline)),
                          TextSpan(text: ' and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
