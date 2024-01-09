import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: globaltext(
                text: AppText.HomeText,
                textStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.03,
                  color: Appcolor.primerycolor,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: globaltext(
                text: AppText.Hometext,
                textStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Appcolor.Greycolor,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Image.asset(
              Appimage.LoginPage,
              scale: 3,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: globaltext(
                text: AppText.Names,
                textStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Appcolor.Greycolor,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Appcolor.primerycolor),
              ),
              child: globaltext(text: AppText.NameS),
            )
          ],
        ),
      ),
    );
  }
}
