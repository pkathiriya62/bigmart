// import 'package:bigmart/view/Onbording/screen1.dart';
// import 'package:bigmart/view/Auth/screen5.dart';
// import 'package:bigmart/view/Onbording/screen1.dart';
// import 'package:bigmart/view/Onbording/screen2.dart';
// import 'package:bigmart/view/Onbording/screen3.dart';
import 'package:bigmart/view/Onbording/screen4.dart';
// import 'package:bigmart/view/Onbording/screen4.dart';
// import 'package:bigmart/view/Onbording/screen2.dart';
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
      home: screen4(),
    );
  }
}
