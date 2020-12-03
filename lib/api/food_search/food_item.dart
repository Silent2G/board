import 'package:json_annotation/json_annotation.dart';

import 'default_unit.dart';

part 'food_item.g.dart';

@JsonSerializable()
class FoodItem {
  @JsonKey(name: "accessLevel")
  String accessLevel;

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

  @JsonKey(name: "units")
  List<int> units;


  FoodItem(this.accessLevel, this.calories, this.defaultServingSize,
      this.defaultUnit, this.foodId, this.locale, this.name, this.units);

  factory FoodItem.fromJson(Map<String, dynamic> json) => _$FoodItemFromJson(json);

  Map<String, dynamic> toJson() => _$FoodItemToJson(this);
}