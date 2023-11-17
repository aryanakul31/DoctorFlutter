import 'package:doctors/resources/custom_theme.dart';
import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';
import '../utils/constants.dart';

class ButtonOutlined extends StatelessWidget {
  final String text;
  final bool isValid;
  final bool extraPadding;
  final double fontSize;
  final FontType fontFamily;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String? imageAssetPre;
  final String? imageAssetPost;
  final Function()? onPressed;
  final EdgeInsetsGeometry margin;

  const ButtonOutlined({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize = 17,
    this.fontFamily = FontType.Text,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.textColor = CustomColors.color222222,
    this.imageAssetPre,
    this.imageAssetPost,
    this.margin = const EdgeInsets.symmetric(
      horizontal: marginSide,
      vertical: marginSide,
    ),
    this.isValid = true,
    this.extraPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    Color getButtonColor() {
      if (isValid) {
        return CustomColors.color222222;
      } else {
        return Colors.grey;
      }
    }

    double getPadding() {
      if (extraPadding) {
        return 15.0;
      } else {
        return 10.0;
      }
    }

    return Container(
      margin: margin,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1.0, color: getButtonColor()),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (imageAssetPre != null) SvgPicture.asset(imageAssetPre!),
            Padding(
              padding: EdgeInsets.all(getPadding()),
              child: TextTitle(
                text: text,
                fontFamily: fontFamily,
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
