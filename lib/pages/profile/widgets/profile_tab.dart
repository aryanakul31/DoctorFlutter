import 'package:flutter/material.dart';

import '../../../models/request/temp_data.dart';
import '../../../resources/colors.dart';
import '../../../resources/custom_theme.dart';
import '../../../ui/text_title.dart';
import '../../../utils/constants.dart';
import '../../dashboard/widgets/subject_widget.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key, required});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          spaceInBetween,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: marginSide),
                child: const TextTitle(
                  text: "Areas of expertise",
                  fontFamily: FontType.Display,
                  fontSize: 22,
                  color: CustomColors.color222222,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: marginSide),
                child: const TextTitle(
                  text: "See All",
                  fontFamily: FontType.Text,
                  fontSize: 15,
                  color: CustomColors.appColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          SizedBox(
            height: marginSide,
          ),
          SizedBox(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TempData.subjectList.length,
              itemBuilder: (context, index) {
                return SubjectWidget(
                  subject: TempData.subjectList[index],
                );
              },
            ),
          ),
          SizedBox(
            height: marginSide,
          ),
          Container(
            height: 1,
            width: double.maxFinite,
            margin: EdgeInsets.all(marginSide),
            color: CustomColors.colorDDDDDD,
          ),
          SizedBox(
            height: marginSide,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text: "More about me",
              fontFamily: FontType.Display,
              fontSize: 22,
              color: CustomColors.color222222,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: marginSide,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text:
                  "I am the head surgeon at Harvard’s University hospital for cardiac surgery. In 2021, I won the nobel price for extraordinary scientific work in the field of cardiac catheters.",
              fontSize: 17,
              fontFamily: FontType.Text,
              color: CustomColors.color222222,
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            padding: EdgeInsets.only(top: marginSide,bottom: marginSideHalf),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text: "Read more...",
              fontFamily: FontType.Text,
              fontSize: 17,
              color: CustomColors.appColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: marginSide,
          ),
          Container(
            height: 1,
            width: double.maxFinite,
            margin: EdgeInsets.all(marginSide),
            color: CustomColors.colorDDDDDD,
          ),
          SizedBox(
            height: marginSide,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text: "Experience that stands out",
              fontFamily: FontType.Display,
              fontSize: 22,
              color: CustomColors.color222222,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            padding: EdgeInsets.symmetric(vertical: marginSideHalf),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text:
                  "I can help students in the field of \ncardiology due to my 20-year experience \nas a doctor.",
              fontFamily: FontType.Text,
              fontSize: 17,
              color: CustomColors.color222222,
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            height: 1,
            width: double.maxFinite,
            margin: EdgeInsets.all(marginSide),
            color: CustomColors.colorDDDDDD,
          ),
          SizedBox(
            height: marginSide,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text: "Languages",
              fontFamily: FontType.Display,
              fontSize: 22,
              color: CustomColors.color222222,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: marginSide),
            padding: EdgeInsets.symmetric(vertical: marginSideHalf),
            alignment: AlignmentDirectional.centerStart,
            child: const TextTitle(
              text: "English, German",
              fontFamily: FontType.Text,
              fontSize: 17,
              color: CustomColors.color222222,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
