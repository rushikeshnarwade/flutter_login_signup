import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final String hintText;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final bool isPasswordField;

  const CustomInput({Key key, this.keyboardType, this.onChanged, this.onSubmitted, this.hintText, this.focusNode, this.textInputAction, this.isPasswordField}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool _isPasswordField = isPasswordField ?? false;
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFE2E6EA),
          ),
          borderRadius: BorderRadius.circular(5)),
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        textInputAction: textInputAction,
        obscureText: _isPasswordField,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xFF979797),
          ),
        ),
      ),
    );
  }
}
