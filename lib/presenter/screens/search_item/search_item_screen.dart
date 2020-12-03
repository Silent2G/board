import 'package:board_pro/api/detail_food/detail_food.dart';
import 'package:board_pro/api/detail_food/food.dart';
import 'package:board_pro/api/detail_food/serving.dart';
import 'package:board_pro/api/food_search/default_unit.dart';
import 'package:board_pro/presenter/screens/search_item/widgets/detail_block_widget.dart';
import 'package:board_pro/presenter/screens/search_item/widgets/detail_pair.dart';
import 'package:board_pro/presenter/screens/search_item/widgets/search_name_widget.dart';
import 'package:board_pro/presenter/screens/search_item/widgets/sync_button_widget.dart';
import 'package:board_pro/presenter/screens/updates/widgets/close_button_widget.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:board_pro/api/detail_food/nutritional_values.dart';

class SearchItemScreen extends StatefulWidget {
  @override
  State createState() {
    return SearchItemScreenState();
  }
}

class SearchItemScreenState extends State<SearchItemScreen> {
  DetailFood detailFood;
  double weight;

  @override
  void initState() {
    weight = 232.6;
    detailFood = DetailFood(Food(
        "PUBLIC",
        "Philadelphia Brand",
        60,
        2,
        DefaultUnit(349, "tbsp", "tbsp"),
        12323,
        "en_US",
        "Cream Cheese, Ranch, Whipped",
        List<Serving>(),
        [349, 364, 226, 180, 147, 389],
        NutritionalValues(
            15, 150, 0, 6, 0, 3.5, 0, 1, 300, 0, 0, 0, 0, 0, 0, 0, 1, 1)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                      SizedBox(
                        height: height / 60,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: CloseButtonWidget(),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        width: width,
                        child: SearchNameWidget(
                          name: detailFood.food.name,
                          weight: 232.6,
                          calories: 64,
                        ),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        child: DetailBlockWidget(
                          nutritionalValues: detailFood.food.nutritionalValues,
                        ),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        child: DetailPair(
                          title: "cholesterol",
                          value: detailFood.food.nutritionalValues.cholesterol,
                          fatText: true,
                          suffix: "mg",
                        ),
                      ),
                      Container(
                        child: DetailPair(
                          title: "sodium",
                          value: detailFood.food.nutritionalValues.sodium,
                          fatText: true,
                          suffix: "mg",
                        ),
                      ),
                      Container(
                        child: DetailPair(
                          title: "potassium",
                          value: detailFood.food.nutritionalValues.potassium,
                          fatText: true,
                          suffix: "mg",
                        ),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Container(
                        child: DetailPair(
                          title: "saturated_fat",
                          value: detailFood.food.nutritionalValues.saturatedFat,
                          suffix: "g",
                        ),
                      ),
                      Container(
                        child: DetailPair(
                            title: "trans_fat",
                            value: detailFood.food.nutritionalValues.transFat,
                            suffix: "g"),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Container(
                        child: DetailPair(
                            title: "dietary_fiber",
                            value:
                                detailFood.food.nutritionalValues.dietaryFiber,
                            suffix: "g"),
                      ),
                      Container(
                        child: DetailPair(
                            title: "sugar",
                            value: detailFood.food.nutritionalValues.sugars,
                            suffix: "g"),
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      Container(
                        child: DetailPair(
                            title: "vitamin_a",
                            value: detailFood.food.nutritionalValues.vitaminA,
                            suffix: "mg"),
                      ),
                      Container(
                        child: DetailPair(
                            title: "vitamin_c",
                            value: detailFood.food.nutritionalValues.vitaminC,
                            suffix: "mg"),
                      ),
                      Container(
                        child: DetailPair(
                            title: "vitamin_d",
                            value: detailFood.food.nutritionalValues.vitaminD,
                            suffix: "mg"),
                      ),
                      Container(
                        child: DetailPair(
                            title: "calcium",
                            value: detailFood.food.nutritionalValues.calcium,
                            suffix: "mg"),
                      ),
                      Container(
                        child: DetailPair(
                            title: "iron",
                            value: detailFood.food.nutritionalValues.iron,
                            suffix: "mg"),
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      SyncButtonWidget(
                        isFitBitSync: true,
                      )
                    ],
                  ),
                )),
          ),
        ));
  }
}
