import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';
import '../utils/constants.dart';

class ButtonFilled extends StatelessWidget {
  final String text;
  final bool isValid;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String? imageAssetPre;
  final String? imageAssetPost;
  final Function()? onPressed;
  final EdgeInsetsGeometry margin;

  const ButtonFilled({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize = 17,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.textColor = Colors.white,
    this.imageAssetPre,
    this.imageAssetPost,
    this.margin = const EdgeInsets.symmetric(
      horizontal: marginSide,
      vertical: marginSide,
    ),
    this.isValid = true,
  });

  @override
  Widget build(BuildContext context) {
    Color getButtonColor() {
      if (isValid) {
        return CustomColors.appColor;
      } else {
        return Colors.grey;
      }
    }

    return Container(
      margin: margin,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll<Color>(getButtonColor()),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (imageAssetPre != null) SvgPicture.asset(imageAssetPre!),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextTitle(
                text: text,
                color: textColor,
                textAlign: textAlign,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
            if (imageAssetPost != null) SvgPicture.asset(imageAssetPost!),
          ],
        ),
      ),
    );
  }
}
