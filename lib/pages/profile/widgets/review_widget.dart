import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/colors.dart';
import '../../../resources/custom_theme.dart';
import '../../../utils/constants.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black.withOpacity(0.1),
      margin: const EdgeInsets.only(
          right: marginSide,
          left: marginSide,
          top: marginSideHalf,
          bottom: marginSideHalf),
      elevation: 0,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: CustomColors.colorDDDDDD,
            width: 0.8,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(cornerRadius16)),
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: marginSide * 1.5, horizontal: marginSide),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/temp_doc_clearer.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        left: marginSideHalf, right: marginSideHalf),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextTitle(
                          text: "Fred Richard",
                          fontFamily: FontType.Text,
                          fontSize: 15,
                          color: CustomColors.color222222,
                          fontWeight: FontWeight.w600,
                        ),
                        TextTitle(
                          fontFamily: FontType.Text,
                          text: "2 days ago",
                          color: CustomColors.color999999,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: marginSideHalf,
                  ),
                  alignment: AlignmentDirectional.center,
                  child: const TextTitle(
                    text: "5.0",
                    fontFamily: FontType.Text,
                    fontSize: 17,
                    color: CustomColors.colorF2CC02,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/icon_star.svg",
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: marginSide),
              child: TextTitle(
                text:
                    "Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitLorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habit",
                fontFamily: FontType.Text,
                fontWeight: FontWeight.normal,
                color: CustomColors.color222222,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: marginSideDouble,
            ),
            Container(
              child: TextTitle(
                text: "Read more",
                fontFamily: FontType.Text,
                fontWeight: FontWeight.bold,
                color: CustomColors.appColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
