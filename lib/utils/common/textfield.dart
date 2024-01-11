import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CsCommonTextFieldWidget extends StatefulWidget {
  const CsCommonTextFieldWidget(
      {this.titleText = '',
      this.titleTextAlign = TextAlign.center,
      this.label='',
       });

  final String titleText;
  final TextAlign titleTextAlign;
  final String label;
  

  @override
  _CsCommonTextFieldWidgetState createState() =>
      _CsCommonTextFieldWidgetState();
}

class _CsCommonTextFieldWidgetState extends State<CsCommonTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        border: OutlineInputBorder(),
         
        
      ),
      style: TextStyle(color: Appcolor.Greycolor),
    );
  }
}
