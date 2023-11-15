import '../../../resources/colors.dart';
import 'package:doctors/ui/text_title.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginWidget extends StatelessWidget {
  final String text;
  final String iconLeading;

  const SocialLoginWidget(
      {super.key, required this.text, required this.iconLeading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: marginSide,
          right: marginSide,
          top: marginSideHalf,
          bottom: marginSideHalf),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(marginSideHalf),
        child: Material(
          child: InkWell(
            onTap: () {},
            child: ListTile(
              minLeadingWidth: 10,
              title: TextTitle(
                text: text,
                fontSize: 17,
                color: CustomColors.color222222,
                fontWeight: FontWeight.normal,
              ),
              trailing: SizedBox(
                width: 15,
                height: 15,
                child: SvgPicture.asset(
                  "assets/images/arrow_next.svg",
                  color: Colors.black,
                ),
              ),
              leading: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(iconLeading),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
