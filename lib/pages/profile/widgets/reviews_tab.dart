import 'package:doctors/pages/profile/widgets/review_widget.dart';
import 'package:doctors/ui/button_outlined.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/colors.dart';
import '../../../resources/custom_theme.dart';
import '../../../ui/text_title.dart';
import '../../../utils/constants.dart';

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({super.key});

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          spaceInBetween,
          Container(
            margin: EdgeInsets.only(left: marginSide),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/icon_star.svg",
                  height: 35,
                  width: 35,
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: marginSideHalf,
                  ),
                  alignment: AlignmentDirectional.center,
                  child: const TextTitle(
                    text: "5.0",
                    fontFamily: FontType.Text,
                    fontSize: 38,
                    color: CustomColors.colorF2CC02,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: marginSide*1.5,),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: marginSide, vertical: marginSide),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text: "What others have experienced",
              fontFamily: FontType.Display,
              fontSize: 22,
              color: CustomColors.color222222,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 245,
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, position) {
                return ReviewWidget();
              },
            ),
          ),
          ButtonOutlined(
            extraPadding: true,
            onPressed: () {},
            text: "Read all 399 Reviews",
            fontFamily: FontType.Text,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ],
      ),
    );
  }
}
