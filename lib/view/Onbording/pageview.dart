import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/container.dart';
import 'package:bigmart/view/Onbording/screen1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.7,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                onboarding(
                  text: AppText.Name,
                  subtext: AppText.NameScreen,
                  img: Appimage.Loginpage,
                ),
                onboarding(
                  text: AppText.HomeText,
                  subtext: AppText.Hometext1,
                  img: Appimage.LoginPage1,
                ),
                onboarding(
                  text: AppText.HomeW,
                  subtext: AppText.HomeWd,
                  img: Appimage.LoginPage2,
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
        ],
      ),
      bottomSheet: isLastPage
          ? Container(
              height: height * 0.05,
              width: width * 0.2,
              decoration: BoxDecoration(
                  color: Appcolor.primerycolor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Screen1()));
                    },
                    child: Text("Start")),
              ),
            )
          : Container(
              height: height * 0.08,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Appcolor.Greycolor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Center(
                        child: Container(
                            height: height * 0.05,
                            width: height * 0.09,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Appcolor.primerycolor),
                            child: Center(child: Text('Next')))),
                  ),
                ],
              ),
            ),
    );
  }
}
