import 'package:doctors/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/colors.dart';
import '../../../resources/custom_theme.dart';
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
    return Container(
      margin: const EdgeInsets.only(
        left: marginSide / 2 - 4,
        right: marginSide / 2 - 4,
        top: marginSide,
        bottom: marginSide,
      ),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: CustomColors.colorEFEFEF.withOpacity(0.5),
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(cornerRadius16)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius16),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: marginSideHalf),
            color: Colors.white,
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(top: marginSideHalf, bottom: marginSide),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Image.asset(
                        "assets/images/temp_doc_clearer.png",
                        height: 110,
                        width: 110,
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
                      left: marginSide, right: marginSide, top: 0),
                  child: const TextTitle(
                    text: "Dr. Lea Leicht",
                    fontFamily: FontType.Text,
                    fontSize: 17,
                    color: CustomColors.color222222,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: marginSide,
                    top: 5,
                    bottom: 5,
                    right: marginSide,
                  ),
                  child: const TextTitle(
                    text: "Head of cardiac surgery",
                    fontFamily: FontType.Text,
                    fontSize: 15,
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
                        fontFamily: FontType.Text,
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
