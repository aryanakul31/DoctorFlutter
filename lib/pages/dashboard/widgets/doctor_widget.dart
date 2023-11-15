import 'package:doctors/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/colors.dart';
import '../../../ui/text_title.dart';
import '../../../utils/constants.dart';

class DoctorWidget extends StatefulWidget {
  const DoctorWidget({super.key});

  @override
  State<DoctorWidget> createState() => _DoctorWidgetState();
}

class _DoctorWidgetState extends State<DoctorWidget> {
  navigateToProfile() {
    Navigator.pushNamed(context, MyRoutes.profileRoute.path);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigateToProfile,
      child: Card(
        margin: const EdgeInsets.only(
            left: marginSide, top: marginSideHalf, bottom: marginSideHalf),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(marginSideHalf),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(marginSideHalf),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: marginSideHalf),
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Image.asset(
                        "assets/images/temp_doc_clearer.png",
                        height: 130,
                        width: 130,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: marginSideHalf, bottom: marginSideHalf),
                        child: SvgPicture.asset(
                          "assets/images/temp_stethoscope.svg",
                          height: 30,
                          width: 30,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: marginSide, right: marginSide, top: marginSideHalf),
                  child: const TextTitle(
                    text: "Dr. Lea Leicht",
                    fontSize: 20,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: marginSide,
                    right: marginSide,
                  ),
                  child: const TextTitle(
                    text: "Head of cardiac surgery",
                    fontSize: 16,
                    color: CustomColors.color717177,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/icon_star.svg",
                      fit: BoxFit.fill,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: marginSideHalf,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: const TextTitle(
                        text: "4.8",
                        fontSize: 15,
                        color: CustomColors.color717177,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
