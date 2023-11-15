import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.dart';
import '../utils/constants.dart';

class ButtonGrey extends StatelessWidget {
  final String text;
  final Color textColor;
  final String? imageAssetPre;
  final String? imageAssetPost;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry margin;

  const ButtonGrey({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
    this.imageAssetPre,
    this.imageAssetPost,
    this.margin = const EdgeInsets.symmetric(
      horizontal: marginSide,
      vertical: marginSide,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(CustomColors.colorEDEDED),
        ),
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
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
            if (imageAssetPost != null) SvgPicture.asset(imageAssetPost!),
          ],
        ),
      ),
    );
  }
}
