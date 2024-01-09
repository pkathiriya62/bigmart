import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
// import 'package:bigmart/utils/common/textfiled.dart';
import 'package:flutter/material.dart';

import '../../utils/common/globaltext.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: globaltext(
              text: AppText.Screen,
              textStyle: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: height * 0.03,
                color: Appcolor.Greycolor,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: globaltext(
              text: AppText.Screen5,
              textStyle: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Appcolor.Greycolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
