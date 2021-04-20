import 'package:flutter/material.dart';

class LargeBtn extends StatefulWidget {
  final String text;
  final Function onTap;
  const LargeBtn({Key key, this.text, this.onTap}) : super(key: key);

  @override
  _LargeBtnState createState() => _LargeBtnState();
}

class _LargeBtnState extends State<LargeBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFF3C82FF),
          borderRadius: BorderRadius.circular(5.0),
        ),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}
