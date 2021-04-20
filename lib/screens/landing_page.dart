import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/rushi/AndroidStudioProjects/login_signup/lib/screens/login.dart';
import 'package:login_signup/screens/signup.dart';
import 'package:login_signup/widgets/facebook_btn.dart';
import 'package:login_signup/widgets/large_btn.dart';
import 'package:login_signup/widgets/twitter_btn.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Center(
                    child: Text(
                      "Please login or sign up to continue using our app",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/images/Landing1.png"),
                    width: 275,
                  ),
                  Text(
                    "Enter via social network",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TwitterBtn(),
                      FacebookBtn(),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "or Login with Email",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: LargeBtn(text: "Sign Up"),
                  ),
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return Scaffold(
          body: Center(child: CircularProgressIndicator(),),
        );
      },
    );
  }
}
