import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextFieldWidget extends StatefulWidget {
  const CommonTextFieldWidget({
    // this.titleText = '',
    // this.titleTextAlign = TextAlign.center,
    required this.text,
    required this.isPassword,
    this.suffixicon,
    // required this.hintText,
    // required this.textController,
  });

  // final String titleText;
  // final TextAlign titleTextAlign;
  final String text;
  final bool isPassword;
  final suffixicon;
  //final String hintText;
  // final TextEditingController textController;

  @override
  _CommonTextFieldWidgetState createState() => _CommonTextFieldWidgetState();
}

class _CommonTextFieldWidgetState extends State<CommonTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.all(10.0),
            // hintText: widget.hintText, // pass the hint text parameter here
            hintStyle: TextStyle(color: Appcolor.primerycolor),
          ),
          style: TextStyle(color: Appcolor.primerycolor),
        ),
      ],
    );
  }
}
