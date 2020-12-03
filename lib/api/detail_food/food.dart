import 'package:board_pro/api/detail_food/serving.dart';
import 'package:board_pro/api/food_search/default_unit.dart';
import 'package:json_annotation/json_annotation.dart';

import 'nutritional_values.dart';

part "food.g.dart";

@JsonSerializable()
class Food {
  @JsonKey(name: "accessLevel")
  String accessLevel;

  @JsonKey(name: "brand")
  String brand;

  @JsonKey(name: "calories")
  int calories;

  @JsonKey(name: "defaultServingSize")
  double defaultServingSize;

  @JsonKey(name: "defaultUnit")
  DefaultUnit defaultUnit;

  @JsonKey(name: "foodId")
  int foodId;

  @JsonKey(name: "locale")
  String locale;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "servings")
  List<Serving> servings;

  @JsonKey(name: "units")
  List<int> units;

  @JsonKey(name: "nutritionalValues")
  NutritionalValues nutritionalValues;

  Food(
      this.accessLevel,
      this.brand,
      this.calories,
      this.defaultServingSize,
      this.defaultUnit,
      this.foodId,
      this.locale,
      this.name,
      this.servings,
      this.units,
      this.nutritionalValues);

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
