import 'package:flutter/material.dart';

class TwitterBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xFF76A9EA),
      ),
      padding: EdgeInsets.all(15.0),
      child: Image(
        image: AssetImage("assets/images/twitter icon.png"),
      ),
    );
  }
}
