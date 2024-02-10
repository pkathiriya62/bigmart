import 'dart:developer';
import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:bigmart/utils/common/textfield.dart';
import 'package:bigmart/view/Auth/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}
TextEditingController emailEditingController = TextEditingController();
TextEditingController  cpassword= TextEditingController();
TextEditingController passwordEditingController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  void creatAccount() async {
    String email = emailEditingController.text.trim();
    String passwor = passwordEditingController.text.trim();
    String name = cpassword.text.trim();

    if (email == '' || passwor == '' || name == '') {
      log('Please fill in the detail');
    } else {
     try {
      log(email);
      log(passwor);
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: passwor);
          log('user created');
          if (userCredential.user != null) {
            Navigator.pop(context);
          }
        } on FirebaseAuthException catch (e) {
          log(e.code.toString());
        }
    }
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.020,
              ),
              Globaltext(
                text: Apptext.createAcctitle,
                fontfamily: GoogleFonts.inter().toString(),
                fontsize: 20,
              ),
              SizedBox(
                height: height * 0.011,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Globaltext(
                  text: Apptext.createAccsubtitle,
                  fontweight: FontWeight.w400,
                  fontfamily: GoogleFonts.inter().toString(),
                ),
              ),
              SizedBox(
                height: height * 0.032,
              ),
               TextFormFieldWidget(text: 'Name', message: "name",controller:cpassword ,),
              SizedBox(
                height: height * 0.010,
              ),
               TextFormFieldWidget(text: 'Email', message: "Email",controller: emailEditingController,),
              SizedBox(
                height: height * 0.010,
              ),
               TextFormFieldWidget(
                text: 'Password', message: "password",controller:passwordEditingController ,
              ),
              SizedBox(
                height: height * 0.017,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.textfieldcolor)),
                  ),
                  SizedBox(
                    width: width * 0.014,
                  ),
                  Globaltext(
                    text: Apptext.checkboxtext,
                    fontfamily: GoogleFonts.inter().toString(),
                    fontweight: FontWeight.w400,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              GlobalButton(
                height: height * 0.054,
                width: double.infinity,
                // voidcallback: (){
                //     if (_formKey.currentState!.validate()) {
                //          Navigator.push(
                //            context,
                //            MaterialPageRoute(
                //              builder: (context) => VarificationScreen(
                //                email: emailEditingController.text,
                //                password: passwordEditingController.text,
                //              ),
                //            ),
                //          );
                //        }
                //        log(emailEditingController.text);
                // }  
                // () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const CreateAccountScreen(),
                //     ),
                //   );
                // },
                voidcallback: (){
                  creatAccount();
                },
                text: 'Sign Up',
                fontweight: FontWeight.w500,
                fontsize: 18,
              ),
              SizedBox(
                height: height * 0.031,
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
                height: height * 0.031,
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
                height: height * 0.042,
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
                              builder: (context) => const VarificationScreen(),
                            ),
                          );
                        },
                      text: Apptext.createAcctext2,
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
    );
  }
}
