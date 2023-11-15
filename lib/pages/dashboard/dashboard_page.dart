import 'package:doctors/models/request/temp_data.dart';
import '../../../resources/colors.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../ui/button_filled.dart';
import '../../ui/text_title.dart';
import 'widgets/class_page_view.dart';
import 'widgets/doctor_widget.dart';
import 'widgets/mentored_widget.dart';
import 'widgets/subject_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _currentSelect = 0;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceInBetween,
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextTitle(
                    text: "mentored.",
                    isShadow: true,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  TextTitle(
                    text: "app",
                    isShadow: true,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              actions: [
                Container(
                    padding: const EdgeInsets.only(right: marginSideHalf),
                    height: 40,
                    alignment: AlignmentDirectional.center,
                    child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                            "assets/images/dashboard_search.svg"))),
                Container(
                  alignment: AlignmentDirectional.center,
                  height: 40,
                  padding: const EdgeInsets.only(right: marginSide),
                  child: SvgPicture.asset(
                      "assets/images/dashboard_notification.svg"),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: marginSide),
              padding: const EdgeInsets.symmetric(horizontal: marginSide),
              child: const TextTitle(
                text: "Hello Andreas👋",
                isShadow: true,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: marginSide, vertical: marginSideHalf),
              child: TextTitle(
                isShadow: true,
                text: "you have 3 upcoming classes",
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 215,
              width: double.infinity,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _currentSelect = index;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, position) {
                  return const ClassPageView();
                },
              ),
            ),
            PageViewDotIndicator(
              currentItem: _currentSelect,
              count: 3,
              unselectedColor: CustomColors.colorE6E6E6,
              selectedColor: CustomColors.color858585,
              size: const Size(5, 5),
            ),
            if (isLoading)
              Container(
                  alignment: AlignmentDirectional.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: marginSide,
                    vertical: marginSide,
                  ),
                  child: const CircularProgressIndicator(
                    color: CustomColors.appColor,
                  ))
            else
              ButtonFilled(
                onPressed: () {},
                text: 'View Classes',
                imageAssetPost: "assets/images/arrow_next.svg",
              ),
            Container(
              height: 1,
              margin: const EdgeInsets.only(
                  bottom: marginSideDouble,
                  left: marginSide,
                  right: marginSide,
                  top: marginSide),
              width: double.infinity,
              color: CustomColors.colorDDDDDD,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "Popular Subjects",
                    fontSize: 20,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "See All",
                    fontSize: 15,
                    color: CustomColors.appColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 180,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "What’s new on mentored?",
                    fontSize: 20,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: TempData.mentorList.length,
                itemBuilder: (context, index) {
                  return MentoredWidget(data: TempData.mentorList[index]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "Featured doctors",
                    fontSize: 20,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "See All",
                    fontSize: 15,
                    color: CustomColors.appColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 235,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const DoctorWidget();
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: marginSideHalf),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: marginSide),
                    child: const TextTitle(
                      text: "Best rated doctors",
                      fontSize: 20,
                      color: CustomColors.color222222,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: marginSide),
                    child: const TextTitle(
                      text: "See All",
                      fontSize: 15,
                      color: CustomColors.appColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: marginSideHalf),
              child: SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    Color getColorBg() {
                      if (index == 0) {
                        return CustomColors.appColor;
                      } else {
                        return Colors.transparent;
                      }
                    }

                    Color getColorText() {
                      if (index == 0) {
                        return Colors.white;
                      } else {
                        return CustomColors.color222222;
                      }
                    }

                    return Container(
                      margin: const EdgeInsets.only(left: marginSide),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(marginSide),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: marginSide, vertical: marginSideHalf),
                          color: getColorBg(),
                          child: TextTitle(
                            text: "All",
                            fontSize: 15,
                            color: getColorText(),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 235,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const DoctorWidget();
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
