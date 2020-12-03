import 'package:flutter/material.dart';
import 'package:board_pro/api/detail_food/nutritional_values.dart';

import 'detail_item.dart';

class DetailBlockWidget extends StatelessWidget {
  final NutritionalValues nutritionalValues;

  DetailBlockWidget({@required this.nutritionalValues});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: DetailItem(
              title: "fat",
              value: nutritionalValues.totalFat.toString(),
            ),
          ),
          Container(
            child: DetailItem(
              title: "protein",
              value: nutritionalValues.protein.toString(),
            ),
          ),
          Container(
            child: DetailItem(
              title: "carbs",
              value: nutritionalValues.totalCarbohydrate.toString(),
            ),
          )
        ],
      ),
    );
  }
}
