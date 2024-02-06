import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:bigmart/utils/common/textfield.dart';
// import 'package:bigmart/view/Auth/bottomnavigation.dart';
import 'package:bigmart/view/Auth/createaccount.dart';
import 'package:bigmart/view/screenshome/homescreen.dart';
// import 'package:bigmart/view/Onbording/logoscreen.dart';
// import 'package:bigmart/view/screenshome/homescreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Globaltext(
                  text: Apptext.signintitle,
                  fontfamily: GoogleFonts.inter().toString(),
                  fontsize: 20,
                ),
                SizedBox(
                  height: height * 0.011,
                ),
                Globaltext(
                  text: Apptext.signinsubtitle,
                  fontweight: FontWeight.w400,
                  fontfamily: GoogleFonts.inter().toString(),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                const TextFormFieldWidget(
                  text: 'Email',
                  message: "Email",
                ),
                SizedBox(
                  height: height * 0.029,
                ),
                const TextFormFieldWidget(
                  text: 'Password',
                  icon: Icon(Icons.visibility_off_outlined),
                  message: "Password",
                ),
                SizedBox(
                  height: height * 0.011,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Globaltext(
                      text: 'Forgot Password?',
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontFamily: GoogleFonts.inter().toString(),
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5041FC),
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xff5041FC),
                          decorationThickness: 2),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.036,
                ),
                GlobalButton(
                  height: height * 0.054,
                  width: double.infinity,
                  voidcallback: ()async {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                       SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                       prefs.setString('username', emailcontroller.text);
                      Navigator.pushReplacement(
                        context,
                         MaterialPageRoute(
                           builder: (context) =>
                               const HomeScreen(),
                         ),
                       );
                    }
                  },
                  // () async {
                  //   if (emailcontroller.text.isNotEmpty &&
                  //       passwordcontroller.text.isNotEmpty) {

                  //     SharedPreferences prefs =
                  //         await SharedPreferences.getInstance();
                  //     prefs.setString('username', emailcontroller.text);

                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) =>
                  //             const HomeScreen(),
                  //       ),
                  //     );
                  //   } else {
                  //     showDialog(
                  //       context: context,
                  //       builder: (BuildContext context) {
                  //         return AlertDialog(
                  //           title: const Text('Invalid Login'),
                  //           content: const Text(
                  //               'Please enter valid username and password'),
                  //           actions: [
                  //             TextButton(
                  //               onPressed: () {
                  //                 Navigator.of(context).pop();
                  //               },
                  //               child: const Text('OK'),
                  //             ),
                  //           ],
                  //         );
                  //       },
                  //     );
                  //                   }},
                  text: 'Sign in',
                  fontweight: FontWeight.w500,
                  fontsize: 18,
                ),
                SizedBox(
                  height: height * 0.050,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 0.50,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.010,
                    ),
                    Globaltext(
                      text: Apptext.sign,
                      fontsize: 12,
                      fontweight: FontWeight.w400,
                      fontfamily: GoogleFonts.inter().toString(),
                      color: const Color(0x8C000000),
                    ),
                    SizedBox(
                      width: width * 0.010,
                    ),
                    Expanded(
                      child: Container(
                        height: 0.50,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.050,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.textfieldcolor),
                      ),
                      child: Image.asset(
                        Appimage.Applelogo,
                        scale: 3,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.textfieldcolor),
                      ),
                      child: Image.asset(
                        Appimage.googlelogo,
                        scale: 3,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.textfieldcolor),
                      ),
                      child: Image.asset(
                        Appimage.facebooklogo,
                        scale: 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.036,
                ),
                RichText(
                  text: TextSpan(
                    text: Apptext.Signintext,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CreateAccountScreen(),
                              ),
                            );
                          },
                        text: Apptext.Signintext2,
                        style: const TextStyle(
                            color: Color(0xff5041FC),
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
