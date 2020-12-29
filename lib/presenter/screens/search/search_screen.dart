import 'dart:async';

import 'package:board_pro/api/food_search/default_unit.dart';
import 'package:board_pro/api/food_search/food_item.dart';
import 'package:board_pro/presenter/screens/search/widgets/hint_widget.dart';
import 'package:board_pro/presenter/screens/search/widgets/search_head_widget.dart';
import 'package:board_pro/presenter/screens/search/widgets/search_item_widget.dart';
import 'package:board_pro/presenter/screens/updates/widgets/close_button_widget.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  final double weight;

  SearchScreen({@required this.weight});

  @override
  State createState() {
    return SearchScreenState();
  }
}

List<FoodItem> list = [
  FoodItem("PUBLIC", 570, 100, DefaultUnit(147, "gram", "grams"), 18828,
      "en_US", "Chocolate, Milk", [226, 180, 147, 389]),
  FoodItem("PRIVATE", 564, 100, DefaultUnit(147, "gram", "grams"), 14823,
      "en_US", "Chocolate, Bitter", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 488, 100, DefaultUnit(147, "gram", "grams"), 23500,
      "en_US", "Chocolate, Bounty", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 570, 100, DefaultUnit(147, "gram", "grams"), 18828,
      "en_US", "Chocolate, Milk", [226, 180, 147, 389]),
  FoodItem("PRIVATE", 564, 100, DefaultUnit(147, "gram", "grams"), 14823,
      "en_US", "Chocolate, Bitter", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 488, 100, DefaultUnit(147, "gram", "grams"), 23500,
      "en_US", "Chocolate, Bounty", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 570, 100, DefaultUnit(147, "gram", "grams"), 18828,
      "en_US", "Chocolate, Milk", [226, 180, 147, 389]),
  FoodItem("PRIVATE", 564, 100, DefaultUnit(147, "gram", "grams"), 14823,
      "en_US", "Chocolate, Bitter", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 488, 100, DefaultUnit(147, "gram", "grams"), 23500,
      "en_US", "Chocolate, Bounty", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 570, 100, DefaultUnit(147, "gram", "grams"), 18828,
      "en_US", "Chocolate, Milk", [226, 180, 147, 389]),
  FoodItem("PRIVATE", 564, 100, DefaultUnit(147, "gram", "grams"), 14823,
      "en_US", "Chocolate, Bitter", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 488, 100, DefaultUnit(147, "gram", "grams"), 23500,
      "en_US", "Chocolate, Bounty", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 570, 100, DefaultUnit(147, "gram", "grams"), 18828,
      "en_US", "Chocolate, Milk", [226, 180, 147, 389]),
  FoodItem("PRIVATE", 564, 100, DefaultUnit(147, "gram", "grams"), 14823,
      "en_US", "Chocolate, Bitter", [226, 180, 147, 389]),
  FoodItem("PUBLIC", 488, 100, DefaultUnit(147, "gram", "grams"), 23500,
      "en_US", "Chocolate, Bounty", [226, 180, 147, 389]),
];

class SearchScreenState extends State<SearchScreen> {
  bool userSearched;
  double containerHeight;
  bool isFirstBuild;

  @override
  void initState() {
    userSearched = false;
    isFirstBuild = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    if (!isFirstBuild) {
      containerHeight = height / 4.5;
      isFirstBuild = true;
    }

    return Container(
        color: AppColors.WHITE,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 40,
                    right: MediaQuery.of(context).size.height / 40),
                child: Container(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: height / 60),
                      Container(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: CloseButtonWidget(),
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      SearchHeadWidget(
                        weight: widget.weight,
                        userSearched: userSearched,
                        height: containerHeight,
                      ),
                      SearchInputText(
                        hint: AppLocalizations.of(context).translate("type"),
                        size: height / 45,
                        suffixIcon: Container(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              child: GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/images/svg/ic_search.svg",
                                  color: AppColors.BLACK.withOpacity(0.5),
                                ),
                              ),
                            )),
                        onChanged: (String value) {
                          if (value.isNotEmpty) {
                            setState(() {
                              userSearched = true;
                              containerHeight = 0;
                              print("0");
                            });
                          } else {
                            setState(() {
                              Timer(Duration(milliseconds: 300), () {
                                setState(() {
                                  userSearched = false;
                                  print("1");
                                });
                              });
                              containerHeight = height / 4.5;
                            });
                          }
                        },
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      Container(
                        child: HintWidget(
                          searched: userSearched,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, int index) {
                              return SearchItemWidget(item: list[index]);
                            }),
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}
