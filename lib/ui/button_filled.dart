import 'package:doctors/resources/custom_theme.dart';
import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';
import '../utils/constants.dart';

class ButtonFilled extends StatelessWidget {
  final String text;
  final bool isValid;
  final bool extraPadding;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final FontType fontFamily;
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
    this.extraPadding = false,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = FontType.Text,
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

    double getPadding() {
      if (extraPadding) {
        return 17.0;
      } else {
        return 10.0;
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
          elevation: MaterialStateProperty.resolveWith<double>(
            // As you said you dont need elevation. I'm returning 0 in both case
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return 0;
              }
              return 0; // Defer to the widget's default.
            },
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
              padding: EdgeInsets.all(getPadding()),
              child: TextTitle(
                text: text,
                color: textColor,
                textAlign: textAlign,
                fontWeight: fontWeight,
                fontFamily: fontFamily,
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
