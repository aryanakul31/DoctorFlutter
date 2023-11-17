import 'package:doctors/ui/text_title.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/colors.dart';
import '../../../resources/custom_theme.dart';

class ClassPageView extends StatelessWidget {
  const ClassPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.1),
      margin: const EdgeInsets.all(marginSide),
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: CustomColors.colorEFEFEF.withOpacity(0.5),
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(cornerRadius16)),
      child: Padding(
        padding: const EdgeInsets.all(marginSide),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextTitle(
              fontFamily: FontType.Text,
              text: "Class date",
              fontWeight: FontWeight.normal,
              fontSize: 13,
              color: CustomColors.color717171,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: marginSideHalf),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/icon_clock.svg"),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextTitle(
                      fontFamily: FontType.Text,
                      text: "Wed Jun 20",
                      fontSize: 15,
                      color: CustomColors.color222222,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SvgPicture.asset("assets/images/icon_dot.svg"),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextTitle(
                      fontFamily: FontType.Text,
                      text: "8:00-8:30",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 0.3,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: marginSide),
              color: CustomColors.colorDDDDDD,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Image.asset(
                      "assets/images/temp_doc_clearer.png",
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    SvgPicture.asset(
                      "assets/images/temp_stethoscope.svg",
                      height: 20,
                      width: 20,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: marginSide),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTitle(
                        text: "Dr. Emilia Weininger",
                        fontSize: 17,
                        fontFamily: FontType.Text,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.color222222,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                                "assets/images/temp_internal_medicine.svg"),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: marginSideHalf),
                              child: TextTitle(
                                fontFamily: FontType.Text,
                                text: "Internal Medicine",
                                color: CustomColors.color717177,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child:
                  SvgPicture.asset("assets/images/icon_doctor_green_tick.svg"),
            )
          ],
        ),
      ),
    );
  }
}
