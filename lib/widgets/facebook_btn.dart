import 'package:flutter/material.dart';

class FacebookBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xFF475993),
      ),
      padding: EdgeInsets.all(15.0),
      child: Image(
        image: AssetImage("assets/images/facebook icon.png"),
      ),
    );
  }
}
