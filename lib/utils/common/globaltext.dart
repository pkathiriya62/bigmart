import 'package:flutter/material.dart';

// ignore: must_be_immutable
class globaltext extends StatelessWidget {
  final String text;
  TextStyle? textStyle;
  String? fontfamily;
  String? fontsize;
  String? fontweight;
  Color? color;
  globaltext(
      {super.key,
      required this.text,
      this.fontfamily,
      this.color,
      this.textStyle,
      this.fontsize,
      this.fontweight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: textStyle ??
          TextStyle(
            fontFamily: fontfamily ?? 'Poppins',
            color: color ?? Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
    );
  }
}
