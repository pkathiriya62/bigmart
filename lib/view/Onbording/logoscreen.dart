import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    // var height= MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Appimage.logo,
              scale: 2,
            ),
            SizedBox(width: width * 0.04),
            Globaltext(
              text: Apptext.logoname,
              textStyle: TextStyle(
                fontFamily: 'InknutAntiqua',
                fontSize: 24,
                color: AppColor.textfieldcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
