import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/apptext.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';

class GobleButton extends StatelessWidget {
  const GobleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Appcolor.primerycolor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            globaltext(text: AppText.Name),
          ],
        ),
      ),
    );
  }
}
