import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/pageview.dart';
import 'package:bigmart/view/Auth/bottomnavigation.dart';
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
                  text: Apptext.headtext1,
                  subtext: Apptext.subtext1,
                  img: Appimage.imageview1,
                ),
                onboarding(
                  text: Apptext.headtext2,
                  subtext: Apptext.subtext2,
                  img: Appimage.imageview2,
                ),
                onboarding(
                  text: Apptext.headtext3,
                  subtext: Apptext.subtext3,
                  img: Appimage.imageview3,
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: const ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
        ],
      ),
      bottomSheet: isLastPage
          ? Container(
              height: height * 0.05,
              width: width * 0.2,
              decoration: BoxDecoration(
                  color: AppColor.primarycolor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  const BotttomNavigationbarScreen()));
                    },
                    child: const Text("Start")),
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
                      style: TextStyle(color: AppColor.verifysubtitlecolor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Center(
                        child: Container(
                            height: height * 0.05,
                            width: height * 0.09,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.primarycolor),
                            child: const Center(child: Text('Next')))),
                  ),
                ],
              ),
            ),
    );
  }
}
