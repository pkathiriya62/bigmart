// import 'package:bigmart/view/Onbording/loginscreen.dart';
// import 'package:bigmart/view/Auth/loginscreen.dart';
// import 'package:bigmart/view/Auth/loginscreen.dart';
import 'package:bigmart/view/Auth/signin.dart';
// import 'package:bigmart/view/Onbording/onboardingscreen.dart';
// import 'package:bigmart/view/Onbording/onboardingscreen.dart';
// import 'package:bigmart/view/Onbording/onboardingscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SigninScreen(),
    );
  }
}
