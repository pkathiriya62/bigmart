import 'package:bigmart/utils/common/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globaltext.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final  message;
  final Icon? icon;
  final validator;
  final controller;

  const TextFormFieldWidget({super.key, required this.text, this.icon, this.validator,  this.message,this.controller});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Globaltext(
          text: text,
          fontfamily: GoogleFonts.inter().toString(),
          fontsize: 16,
        ),
        SizedBox(
          height: height * 0.010,
        ),
        TextFormField(
          controller: controller,
            validator: (validator) {
              if (validator == null || validator.isEmpty) {
                return message;
              }
              return null;
            },
          decoration: InputDecoration(
            suffixIcon: icon,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColor.textfieldcolor,
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColor.textfieldcolor,
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
