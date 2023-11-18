import 'package:doctors/models/request/temp_data.dart';
import 'package:doctors/resources/custom_theme.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../../resources/colors.dart';
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
            AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset("assets/images/dashboard_logo.svg")
                ],
              ),
              actions: [
                Container(
                    padding: const EdgeInsets.only(right: marginSideHalf),
                    height: 40,
                    alignment: AlignmentDirectional.center,
                    child:
                        SvgPicture.asset("assets/images/dashboard_search.svg")),
                Container(
                    padding:
                        const EdgeInsets.only(right: marginSide, bottom: 8),
                    height: 40,
                    alignment: AlignmentDirectional.center,
                    child: SvgPicture.asset(
                        "assets/images/dashboard_notification.svg")),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 35),
              padding: const EdgeInsets.symmetric(horizontal: marginSide),
              child: const TextTitle(
                text: "Hello Andreas 👋",
                isShadow: false,
                fontFamily: FontType.Display,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: marginSide, right: marginSide, bottom: 15, top: 2),
              child: TextTitle(
                isShadow: false,
                text: "you have 3 upcoming classes",
                fontFamily: FontType.Display,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 221,
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
            Container(
              margin: const EdgeInsets.only(top: marginSideHalf),
              child: PageViewDotIndicator(
                currentItem: _currentSelect,
                count: 3,
                unselectedColor: CustomColors.colorE6E6E6,
                selectedColor: CustomColors.color858585,
                size: const Size(5, 5),
              ),
            ),
            if (isLoading)
              Container(
                  alignment: AlignmentDirectional.center,
                  margin: const EdgeInsets.only(
                    left: marginSide,
                    right: marginSide,
                    bottom: marginSide,
                    top: (3 * marginSide) - 5,
                  ),
                  child: const CircularProgressIndicator(
                    color: CustomColors.appColor,
                  ))
            else
              ButtonFilled(
                onPressed: () {},
                extraPadding: true,
                margin: const EdgeInsets.only(
                  left: marginSide,
                  right: marginSide,
                  bottom: marginSide,
                  top: (3 * marginSide) - 5,
                ),
                text: 'View Classes',
                imageAssetPost: "assets/images/arrow_next.svg",
              ),
            Container(
              height: 0.8,
              margin: const EdgeInsets.only(
                  bottom: marginSideDouble,
                  left: marginSide,
                  right: marginSide,
                  top: 2 * marginSide),
              width: double.infinity,
              color: CustomColors.colorDDDDDD,
            ),
            const SizedBox(height: marginSide),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "Popular subjects",
                    fontFamily: FontType.Display,
                    fontSize: 22,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    fontFamily: FontType.Text,
                    text: "See All",
                    fontSize: 15,
                    color: CustomColors.appColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: marginSide - 5,
            ),
            SizedBox(
              height: 210,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: const EdgeInsets.only(
                      left: marginSide / 2, right: marginSide / 2),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: TempData.subjectList.length,
                    itemBuilder: (context, index) {
                      return SubjectWidget(
                        subject: TempData.subjectList[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: marginSide),
            const SizedBox(height: marginSide),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    text: "What’s new on mentored?",
                    fontFamily: FontType.Display,
                    fontSize: 22,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: marginSide / 2,
                    right: marginSide / 2,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: TempData.mentorList.length,
                    itemBuilder: (context, index) {
                      return MentoredWidget(data: TempData.mentorList[index]);
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: marginSide / 2),
            const SizedBox(height: marginSide),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: const TextTitle(
                    fontFamily: FontType.Display,
                    text: "Featured doctors",
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
            const SizedBox(height: marginSide / 2),
            SizedBox(
              height: 270,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: marginSide / 2,
                    right: marginSide / 2,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const DoctorWidget();
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: marginSide),
            Container(
              margin: const EdgeInsets.only(top: marginSide - 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: marginSide),
                    child: const TextTitle(
                      text: "Best rated doctors",
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
            ),
            const SizedBox(height: marginSideHalf),
            Container(
              margin: const EdgeInsets.only(top: marginSideHalf),
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: TempData.doctorCategoryList.length,
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
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: marginSide, vertical: marginSideHalf),
                          color: getColorBg(),
                          child: TextTitle(
                            fontFamily: FontType.Text,
                            text: TempData.doctorCategoryList[index],
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
            const SizedBox(height: marginSide / 2 - 2),
            SizedBox(
              height: 270,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: marginSide / 2,
                    right: marginSide / 2,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const DoctorWidget();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
