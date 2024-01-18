// import 'package:bigmarket/utils/commans/appcolor.dart';
// import 'package:bigmarket/utils/commans/apptext.dart';
// import 'package:bigmarket/utils/commans/globaltext.dart';
// import 'package:bigmarket/utils/commans/textbutton.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/style.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.14,
              ),
              globaltext(
                text: AppText.verify,
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              globaltext(
                text: AppText.verify1,
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              OTPTextField(
                length: 5,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              globaltext(
                text: AppText.otp,
                textStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Colors.black38),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              globaltext(
                text: AppText.resend,
                textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                height: height*0.05,
              ),

              GlobalButton(text: 'Verify'),

            ],
          ),
        ),
      ),
    );
  }
}