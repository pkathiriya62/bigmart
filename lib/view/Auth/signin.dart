import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:bigmart/utils/common/textfield.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                  text: AppText.signin,
                  textStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.03,
                    color: Appcolor.Greycolor,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: globaltext(
                  text: AppText.signin1,
                  textStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Appcolor.Greycolor,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CommonTextFieldWidget(
                text: 'Name',
                isPassword: false,
              ),
              const SizedBox(
                height: 30,
              ),
              const CommonTextFieldWidget(
                text: 'Email',
                isPassword: false,
                suffixicon: Icon(Icons.password),
              ),
              const SizedBox(
                height: 30,
              ),
              const CommonTextFieldWidget(
                text: 'Password',
                isPassword: false,
                suffixicon: Icon(Icons.password),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
