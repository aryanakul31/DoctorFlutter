import 'package:doctors/pages/profile/widgets/post_widget.dart';
import '../../../resources/colors.dart';
import 'package:flutter/material.dart';

class FeedTab extends StatefulWidget {
  const FeedTab({
    super.key,
  });

  @override
  State<FeedTab> createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.colorF0F0F0,
      // margin: const EdgeInsets.only(top: marginSide),
      child: ListView.builder(
        itemCount: 10,
        // shrinkWrap: true,
        itemBuilder: (context, index) {
          return PostWidget(
            showImage: index / 2 == 0,
          );
        },
      ),
    );
  }
}
