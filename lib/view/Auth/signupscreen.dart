import 'package:bigmart/utils/common/globalbutton.dart';
import 'package:bigmart/utils/common/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Fill your information below or register',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38,
                ),
              ),
              Text(
                'With your social account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              CommonTextFieldWidget(
                isPassword: false,
                text: 'Name',
              ),
              SizedBox(
                height: 15,
              ),
              CommonTextFieldWidget(
                isPassword: false,
                text: 'Email',
              ),
              SizedBox(
                height: 15,
              ),
              CommonTextFieldWidget(
                isPassword: true,
                text: 'Password',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Agree with Term & Condition'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GlobalButton(text: 'Sign In'),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Or sign in With'),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/apple-logo (1) 1.png',
                          ),
                          scale: 2),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/search (1) 1.png',
                          ),
                          scale: 2),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/facebook (3) 1.png',
                          ),
                          scale: 2),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
