import 'package:doctors/models/response/SubjectResponseModel.dart';
import '../../../resources/colors.dart';
import 'package:doctors/ui/text_title.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/hex_color.dart';

class SubjectWidget extends StatelessWidget {
  final SubjectResponseModel subject;

  const SubjectWidget({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    moveToProfile() {
      // Navigator.pushNamed(context, MyRoutes.profileRoute.path);
    }

    return GestureDetector(
      onTap: moveToProfile,
      child: Container(
        margin: const EdgeInsets.only(
            left: marginSide, top: marginSideHalf, bottom: marginSideHalf),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(marginSideHalf),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(marginSideHalf),
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  height: 105,
                  child: Image.asset(
                    subject.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150,
                    color: HexColor.fromHex(subject.color),
                    child: Padding(
                      padding: const EdgeInsets.all(marginSideHalf),
                      child: TextTitle(
                        text: subject.name,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
