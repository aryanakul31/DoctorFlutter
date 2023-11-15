import '../../../resources/colors.dart';
import 'package:doctors/ui/text_title.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ClassPageView extends StatelessWidget {
  const ClassPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(marginSide),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(marginSideHalf),
      ),
      child: Padding(
        padding: const EdgeInsets.all(marginSide),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextTitle(
              text: "Class date",
              fontWeight: FontWeight.normal,
              fontSize: 14,
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
                      text: "Wed Jun 20",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SvgPicture.asset("assets/images/icon_dot.svg"),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextTitle(
                      text: "8:00-8:30",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
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
                      "assets/images/temp_doc.png",
                      fit: BoxFit.fill,
                    ),
                    SvgPicture.asset(
                      "assets/images/temp_stethoscope.svg",
                      height: 25,
                      width: 25,
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
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.color222222,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                              "assets/images/temp_internal_medicine.svg"),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: marginSideHalf),
                            child: TextTitle(
                              text: "Internal Medicine",
                              color: CustomColors.color717177,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: SvgPicture.asset("assets/images/icon_doctor_green_tick.svg"),
            )
          ],
        ),
      ),
    );
  }
}
