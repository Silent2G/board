import 'package:board_pro/api/food_search/food_item.dart';
import 'package:board_pro/presenter/screens/search_item/search_item_screen.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class SearchItemWidget extends StatelessWidget {
  final FoodItem item;

  SearchItemWidget({this.item});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(bottom: height / 40),
      width: width,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SearchItemScreen()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: TitleText(
                item.name,
                textColor: AppColors.BLACK,
                fontWeight: FontWeight.w400,
                size: height / 50,
              ),
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: TitleText(
                      item.units[0].toString() + " grams ",
                      fontWeight: FontWeight.w100,
                      textColor: AppColors.UPDATE_GRAY,
                      size: height / 50,
                    ),
                  ),
                  Container(
                    child: TitleText(
                      item.calories.toString() + " kkal",
                      textColor: AppColors.UPDATE_GRAY,
                      fontWeight: FontWeight.w100,
                      size: height / 50,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
