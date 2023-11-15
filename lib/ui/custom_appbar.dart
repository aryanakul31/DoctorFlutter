import 'package:doctors/ui/text_title.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/colors.dart';


class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: marginSide, right: marginSide),
              child: const Icon(
                Icons.arrow_back_ios,
                color: CustomColors.color222222,
              ),
            ),
          ),
          TextTitle(
            text: title,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          Container(
            padding: const EdgeInsets.only(left: marginSide, right: marginSide),
            child: SvgPicture.asset(
              "assets/images/profile_options.svg",
            ),
          ),
        ],
      ),
    );
  }
}
