import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/globaltext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GlobalButton extends StatelessWidget {
  final double height;
  final double width;
  final voidcallback;
  final  text;
  final Color? color;
  final double? fontsize;
  final dynamic fontweight;
  final String? fontfamily;
  final onPressed;

   GlobalButton({
    super.key,
    required this.height,
    required this.width,
     this.voidcallback,
     this.text,
    this.color,
    this.fontsize,
    this.fontweight,
    this.fontfamily, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.primarycolor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: voidcallback,
        child: Center(
          child: Globaltext(
            text: text,
            fontfamily: fontfamily ?? GoogleFonts.inter().toString(),
            fontweight: fontweight ?? FontWeight.w600,
            color: color ?? Colors.white,
            fontsize: fontsize,
          ),
        ),
      ),
    );
  }
}
