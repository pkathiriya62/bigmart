import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CsCommonTextFieldWidget extends StatefulWidget {
  const CsCommonTextFieldWidget(
      {this.titleText = '',
      this.titleTextAlign = TextAlign.center,
      required this.isPassword,
      required this.hintText,
      required this.textController});

  final String titleText;
  final TextAlign titleTextAlign;
  final bool isPassword;
  final String hintText;
  final TextEditingController textController;

  @override
  _CsCommonTextFieldWidgetState createState() =>
      _CsCommonTextFieldWidgetState();
}

class _CsCommonTextFieldWidgetState extends State<CsCommonTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        hintText: widget.hintText, // pass the hint text parameter here
        hintStyle: TextStyle(color: Appcolor.Greycolor),
      ),
      style: TextStyle(color: Appcolor.Greycolor),
    );
  }
}
