import 'package:flutter/material.dart';
// import 'package:signin1/screens/businessSetup.dart';
import 'signup1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  String login = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
                child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text('Sign Up',
                          style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF25282B))),
                    ),
                  ),
                ],
              ),
            )),
            elevation: 0.0,
            toolbarHeight: 80.0,
            leading: IconButton(
                icon: Image.asset(
                  'assets/images/logo.png',
                  width: 100.0,
                  height: 100.0,
                ),
                onPressed: () {}),
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
          ),
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
                      padding: const EdgeInsets.only(top: 50.0, left: 20.0),
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
                              onChanged: (value) => _formKey.currentState.validate(),
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
                                  onChanged: (value) => _formKey.currentState.validate(),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => ForgotPwd());
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
                              login =
                                  'username: $busEmail\n Password: $pwd'; //this is for validation purpose
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 50.0),
                          child: Container(
                            height: 55.0,
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
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 3.0, top: 8.0),
                                child: Container(
                                  height: 55.0,
                                  color: Color(0xFF3b5998),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        height: 45.0,
                                        width: 45.0,
                                        child: Icon(FontAwesomeIcons.facebookF, color: Color(0xFF3b5998))),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text('Login with\n Facebook',style: TextStyle(
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 15.0),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Expanded(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3.0, right: 8.0, top: 8.0),
                                child: Container(
                                  height: 55.0,
                                  color: Color(0XFFC20370),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        height: 45.0,
                                        width: 45.0,
                                        child: Icon(FontAwesomeIcons.google, color: Color(0XFFBB001B))),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text('Login with\n Gmail',
                                      style: TextStyle(
                                      fontFamily: 'Work Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 15.0)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}

//Forgot password function in a modal

class ForgotPwd extends StatefulWidget {
  @override
  _ForgotPwdState createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  final TextEditingController _popEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          Container(
            height: 270.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontSize: 18.0,
                        color: Color(0XFF25282B),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: TextFormField(
                      onChanged: (value) => _formKey.currentState.validate(),
                      validator: (value) {
                        if (value.isEmpty == true) {
                          return 'Please enter email address';
                          
                        } else {
                          return null;
                          
                        }
                      },
                      controller: _popEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(FontAwesomeIcons.envelope),
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: 'Enter your email address',
                          hintStyle: TextStyle(fontSize: 15.0),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                             
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        color: Color(0XFFC20370),
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState.validate()) {
                              Navigator.of(context)
                                  .pop(_popEditingController.text.toString());
                            }
                          });
                        },
                        child: Text('SUBMIT',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Work Sans',
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600)),
                      ))
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
