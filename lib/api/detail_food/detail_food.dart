import 'package:board_pro/api/detail_food/food.dart';
import 'package:json_annotation/json_annotation.dart';

part "detail_food.g.dart";

@JsonSerializable()
class DetailFood {

  @JsonKey(name: "food")
  Food food;

  DetailFood(this.food);

  factory DetailFood.fromJson(Map<String, dynamic> json) => _$DetailFoodFromJson(json);

  Map<String, dynamic> toJson() => _$DetailFoodToJson(this);
}