import 'package:json_annotation/json_annotation.dart';
import 'food_item.dart';

part "foods.g.dart";

@JsonSerializable()
class Foods {
  @JsonKey(name: "foods")
  List<FoodItem> foods;

  Foods(this.foods);

  factory Foods.fromJson(Map<String, dynamic> json) => _$FoodsFromJson(json);

  Map<String, dynamic> toJson() => _$FoodsToJson(this);
}
