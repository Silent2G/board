import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';

class SearchNameWidget extends StatelessWidget {
  final String name;
  final double weight;
  final double calories;

  SearchNameWidget({this.name, this.weight, this.calories});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: TitleText(
              name,
              textColor: AppColors.BLACK,
              fontWeight: FontWeight.w700,
              size: height / 50,
            ),
          ),
          SizedBox(
            height: height / 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: TitleText(
                    weight.toString() + " g - ",
                    textColor: AppColors.BLACK,
                    fontWeight: FontWeight.w700,
                    size: height / 60,
                  ),
                ),
                Container(
                  child: TitleText(
                    calories.toString() + " kkal",
                    textColor: AppColors.BLACK,
                    fontWeight: FontWeight.w700,
                    size: height / 60,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
