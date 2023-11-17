import '../../../resources/colors.dart';
import 'package:flutter/material.dart';

import '../resources/custom_theme.dart';

class TextTitle extends StatelessWidget {
  final String text;
  final FontType fontFamily;
  final double fontSize;
  final bool isShadow;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const TextTitle({
    super.key,
    required this.text,
    this.fontSize = 20,
    required this.fontFamily,
    this.isShadow = false,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.start,
    this.color = CustomColors.color222222,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        shadows:  [
          if(isShadow)
          const Shadow(
            blurRadius: 10.0,
            // color of the shadow
            color: Color(0x33000000),
            offset: Offset(0, 5),
          ),
        ],
        decoration: TextDecoration.none,
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily.value,
        fontWeight: fontWeight,
      ),
    );
  }
}
