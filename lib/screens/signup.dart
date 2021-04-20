import 'package:flutter/material.dart';
import 'package:login_signup/widgets/custom_input.dart';
import 'package:login_signup/widgets/facebook_btn.dart';
import 'package:login_signup/widgets/large_btn.dart';
import 'package:login_signup/widgets/light_plain_txt.dart';
import 'package:login_signup/widgets/twitter_btn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              SizedBox(height: 10),
              LightPlainTxt(
                text: "Please login or sign up to continue using our app",
              ),
            ],
          ),
          Column(
            children: [
              LightPlainTxt(text: "Enter via social network"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TwitterBtn(),
                  FacebookBtn(),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LightPlainTxt(text: "or sign up with email"),
              SizedBox(height: 10),
              CustomInput(
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
              ),
              SizedBox(height: 15),
              CustomInput(
                hintText: "Password",
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  password = value;
                },
              ),
            ],
          ),
          LargeBtn(
            text: "Sign Up",
            onTap: () {

            },
          ),
        ],
      )),
    );
  }
}
