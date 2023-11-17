import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/colors.dart';
import '../../../resources/custom_theme.dart';
import '../../../ui/text_title.dart';
import '../../../utils/constants.dart';

class PostWidget extends StatelessWidget {
  final bool showImage;

  const PostWidget({super.key, required this.showImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: marginSide),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: marginSide, vertical: marginSideHalf),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/temp_doc_clearer.png",
                  height: 60,
                  width: 60,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: marginSideHalf, right: marginSideHalf),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextTitle(
                          fontFamily: FontType.Text,
                          text: "Fred Richard",
                          fontSize: 15,
                          color: CustomColors.color222222,
                          fontWeight: FontWeight.w600,
                        ),
                        TextTitle(
                          text: "Head of cardiac surgery",
                          color: CustomColors.color999999,
                          fontSize: 13,
                          fontFamily: FontType.Text,
                          fontWeight: FontWeight.normal,
                        ),
                        TextTitle(
                          text: "2 days ago",
                          fontSize: 13,
                          fontFamily: FontType.Text,
                          color: CustomColors.color999999,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: marginSideHalf,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: marginSide),
              child: const TextTitle(
                text:
                    "Lorem ipsum dolor sit amet consectetur. Sit tortor vulputate tortor rhoncus habitant \negestas magna.",
                fontFamily: FontType.Text,
                fontSize: 15,
                color: CustomColors.color222222,
                fontWeight: FontWeight.normal,
              )),
          SizedBox(
            height: marginSide,
          ),
          if (showImage)
            Image.asset(
              "assets/images/temp_mentor_1.jpeg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 270,
            ),
          SizedBox(
            height: marginSideHalf,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: marginSide, top: marginSideHalf, bottom: marginSide),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset("assets/images/icon_like_prefix.svg"),
                    const TextTitle(
                      text: " 43 Personen gefällt das",
                      fontFamily: FontType.Text,
                      color: CustomColors.color848484,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: marginSide,
                    right: marginSide,
                    top: marginSideHalf,
                    bottom: marginSide),
                child: const Row(
                  children: [
                    TextTitle(
                      fontFamily: FontType.Text,
                      text: " 3 Comments",
                      color: CustomColors.color848484,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: marginSide, top: marginSideHalf, bottom: marginSide),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/icon_like.svg"),
                    const TextTitle(
                      fontFamily: FontType.Text,
                      text: " Like",
                      color: CustomColors.color848484,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: marginSide, top: marginSideHalf, bottom: marginSide),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/icon_comment.svg"),
                    const TextTitle(
                      fontFamily: FontType.Text,
                      text: " Comment",
                      color: CustomColors.color848484,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
