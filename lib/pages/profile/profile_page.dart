import 'package:doctors/pages/profile/widgets/feed_tab.dart';
import 'package:doctors/pages/profile/widgets/profile_tab.dart';
import 'package:doctors/pages/profile/widgets/reviews_tab.dart';
import 'package:doctors/ui/button_filled.dart';
import 'package:doctors/ui/button_grey.dart';
import 'package:doctors/ui/custom_appbar.dart';
import 'package:doctors/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/colors.dart';
import '../../ui/text_title.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 81,
        child: Column(children: [
          Container(
            height: 1,
            width: double.maxFinite,
            color: CustomColors.colorDDDDDD,
          ),
          ButtonFilled(
            onPressed: () {},
            text: "Book Class",
          ),
        ]),
      ),
      body: SafeArea(
        child: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, isS) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: 490,
                  collapsedHeight: 490,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            const CustomAppBar(title: "Henry Hildebrandt"),
                            spaceInBetween,
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
                                    margin: const EdgeInsets.only(
                                        right: marginSideHalf,
                                        bottom: marginSideHalf),
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
                              margin: const EdgeInsets.symmetric(
                                  horizontal: marginSide,
                                  vertical: marginSideHalf),
                              child: const TextTitle(
                                text: "MUDr. Amandeep Grewal",
                                fontSize: 22,
                                color: CustomColors.color393333,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: marginSide,
                                  right: marginSide,
                                  bottom: marginSideHalf),
                              child: const TextTitle(
                                textAlign: TextAlign.center,
                                text:
                                    "3rd Semester General-Medicine Comenius University, Bratislava",
                                fontSize: 17,
                                color: CustomColors.color393333,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            spaceInBetween,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    const TextTitle(
                                      text: "5.0",
                                      color: CustomColors.color222222,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: marginSideHalf),
                                      child: const TextTitle(
                                        text: "Rating",
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: CustomColors.color717177,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 1,
                                  color: CustomColors.colorDDDDDD,
                                  margin: const EdgeInsets.only(
                                      left: marginSide,
                                      right: marginSide,
                                      top: marginSideHalf,
                                      bottom: marginSideHalf),
                                ),
                                Column(
                                  children: [
                                    const TextTitle(
                                      text: "43",
                                      color: CustomColors.color222222,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: marginSideHalf),
                                      child: const TextTitle(
                                        text: "Follower",
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: CustomColors.color717177,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 30,
                                  width: 1,
                                  color: CustomColors.colorDDDDDD,
                                  margin: const EdgeInsets.only(
                                      left: marginSide,
                                      right: marginSide,
                                      top: marginSideHalf,
                                      bottom: marginSideHalf),
                                ),
                                Column(
                                  children: [
                                    const TextTitle(
                                      text: "Doctor",
                                      color: CustomColors.color222222,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: marginSideHalf),
                                      child: const TextTitle(
                                        text: "Status",
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: CustomColors.color717177,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            spaceInBetween,
                            Row(
                              children: [
                                Expanded(
                                  child: ButtonFilled(
                                    onPressed: () {},
                                    imageAssetPre:
                                        "assets/images/person_profile.svg",
                                    margin: const EdgeInsets.only(
                                        top: marginSideHalf,
                                        left: marginSide,
                                        right: marginSideHalf,
                                        bottom: marginSideHalf),
                                    text: "Follow",
                                  ),
                                ),
                                Expanded(
                                  child: ButtonGrey(
                                    margin: const EdgeInsets.only(
                                        top: marginSideHalf,
                                        left: marginSideHalf,
                                        right: marginSide,
                                        bottom: marginSideHalf),
                                    onPressed: () {},
                                    text: "Get in touch",
                                    textColor: CustomColors.color222222,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverAppBar(
                  backgroundColor: Colors.white,
                  expandedHeight: kToolbarHeight,
                  collapsedHeight: kToolbarHeight,
                  automaticallyImplyLeading: false,
                  elevation: 1,
                  pinned: true,
                  flexibleSpace: Container(
                    alignment: AlignmentDirectional.center,
                    child: const TabBar(
                        unselectedLabelColor: CustomColors.color717171,
                        labelStyle: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                        labelColor: CustomColors.appColor,
                        indicatorColor: CustomColors.appColor,
                        tabs: <Widget>[
                          Tab(child: Text('Person')),
                          Tab(child: Text('Feed')),
                          Tab(child: Text('Reviews'))
                        ]),
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: <Widget>[
                ProfileTab(),
                FeedTab(),
                ReviewsTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  MyDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    throw tabBar;
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
