import 'package:flutter/material.dart';

class LightPlainTxt extends StatelessWidget {
  final String text;

  const LightPlainTxt({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      ),
    );
  }
}
