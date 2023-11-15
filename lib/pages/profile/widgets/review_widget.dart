import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/colors.dart';
import '../../../utils/constants.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
          right: marginSide,
          left: marginSide,
          top: marginSideHalf,
          bottom: marginSideHalf),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(marginSideHalf),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: marginSide, horizontal: marginSideHalf),
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
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        TextTitle(
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
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: marginSide),
              child: TextTitle(
                text: "Read more",
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
