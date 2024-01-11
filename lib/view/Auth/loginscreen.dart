import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/textfield.dart';
// import 'package:bigmart/utils/common/textfiled.dart';
import 'package:flutter/material.dart';

import '../../utils/common/globaltext.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: globaltext(
                  text: AppText.login,
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
                  text: AppText.login1,
                  textStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Appcolor.Greycolor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CsCommonTextFieldWidget(
                label: 'Email',
                titleTextAlign: TextAlign.start,
                
              ),
              SizedBox(
                height: 30,
              ),
              CsCommonTextFieldWidget(
                titleText: 'Email',
                titleTextAlign: TextAlign.start,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
