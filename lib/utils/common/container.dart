import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';

class onboarding extends StatelessWidget {
  final text;
  final subtext;
  final img;
  const onboarding({super.key, this.text, this.subtext, this.img});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: globaltext(
              text: text,
              textStyle: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: height * 0.03,
                color: Appcolor.primerycolor,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: globaltext(
              text: subtext,
              textStyle: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Appcolor.Greycolor,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Image.asset(
            img,
            scale: 3,
          ),
        ],
      ),
    );
  }
}
