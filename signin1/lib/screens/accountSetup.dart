import 'package:flutter/material.dart';
import 'package:signin1/screens/welcome.dart';
import 'package:signin1/widget/custome_textfied.dart';
import 'package:signin1/widget/textArea.dart';
import 'customindicator.dart';

class AccountSetupOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC20370),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(context),
                    SizedBox(height: 20),
                    Container(
                        child: Text('Tell us about \nyour business',
                            style: TextStyle(
                                fontSize: 38.0,
                                fontFamily: 'Work Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white))),
                    SizedBox(height: 20),
                    _buildForm(),
                    //  Expanded(child: Container()),
                  ],
                ),
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
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcome()));
              },
              child: Center(
                child: Text('Next',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF161F51))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildHeader(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  _buildForm() {
    TextEditingController _businessNameController = TextEditingController();
    TextEditingController _describeController = TextEditingController();
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('BUSINESS NAME',
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          CustomTextField(
            title: '',
            color: Colors.white,
            controller: _businessNameController,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          Text('DESCRIBE YOUR BUSINESS',
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          SizedBox(height: 10),
          CustomTextArea(
            title: '',
            color: Colors.white,
            controller: _describeController,
            keyboardType: TextInputType.text,
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
