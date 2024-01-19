// import 'package:bigmart/view/Auth/otp.dart';
// import 'package:bigmart/view/Auth/signin.dart';
// import 'package:bigmart/view/Auth/otp.dart';
// import 'package:bigmart/view/Auth/bottomnavigation.dart';
import 'package:bigmart/view/screenshome/shopscreen.dart';
// import 'package:bigmart/view/screenshome/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: ShopScreen(),
        );
      }
    );
  }
}
