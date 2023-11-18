import 'package:doctors/models/response/SubjectResponseModel.dart';
import 'package:flutter/material.dart';

import '../../../resources/custom_theme.dart';
import '../../../ui/text_title.dart';
import '../../../utils/constants.dart';

class MentoredWidget extends StatelessWidget {
  final SubjectResponseModel data;

  const MentoredWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.only(
          left: marginSide / 2,
          right: marginSide / 2,
          top: marginSide,
          bottom: marginSide,
        ),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(marginSideHalf),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(marginSideHalf),
              child: Image.asset(
                data.image,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 300,
              height: 200,
              padding: const EdgeInsets.all(marginSide),
              child: TextTitle(
                fontFamily: FontType.Display,
                text: data.name,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
