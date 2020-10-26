import 'package:flutter/material.dart';
import 'signup1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController busEmailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  String _login = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text('Sign up',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF25282B)))),
            ),
          ],
          leading: IconButton(
              icon: Image.asset(
                'assets/images/logo.png',
                width: 100.0,
                height: 100.0,
              ),
              onPressed: () {}),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
            child: Container(
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Welcome back',
                          style: TextStyle(
                              fontSize: 28.0,
                              color: Color(0XFF25282B),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Work Sans'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Log in to continue',
                          style: TextStyle(
                            fontFamily: 'SourceSans',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF25282B),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.bottomLeft,
                                child: Text('EMAIL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Work Sans',
                                        fontSize: 18.0,
                                        color: Color(0xFF25282B)))),
                            TextFormField(
                                validator: (value) {
                                  if (value.isEmpty == true) {
                                    return 'Email/Businessname Can\'t be empty';
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.text,
                                controller: busEmailController,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Work Sans',
                                  fontSize: 18.0,
                                )),
                          ],
                        )),
                    Container(
                        padding:
                            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.bottomLeft,
                                child: Text('PASSWORD',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Work Sans',
                                        fontSize: 18.0,
                                        color: Color(0xFF25282B)))),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                child: TextFormField(
                                    validator: (value) {
                                      if (value.isEmpty == true) {
                                        return 'Password Can\'t be empty';
                                      } else {
                                        return null;
                                      }
                                    },
                                    controller: pwdController,
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Work Sans',
                                    )),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: InkWell(
                          onTap: () {
                            ForgotPwd();
                          },
                          child: Text('Forgot Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Work Sans',
                                  fontSize: 18.0,
                                  color: Color(0xFF25282B))),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 20.0, right: 20.0)),
                    InkWell(
                        onTap: () {
                          if (_formKey.currentState.validate()) {
                            var busEmail = busEmailController.text;
                            var pwd = pwdController.text;
                            setState(() {
                              _login =
                                  'username: $busEmail\n Password: $pwd'; //this is for validation purpose
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 35.0),
                          child: Container(
                            height: 56.0,
                            // width: 350.0,
                            color: Color(0XFFC20370),
                            child: Center(
                              child: Text('LOG IN',
                                  style: TextStyle(
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 22.0)),
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_login),
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}

class ForgotPwd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}