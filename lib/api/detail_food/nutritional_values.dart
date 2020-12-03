import 'package:json_annotation/json_annotation.dart';

part "nutritional_values.g.dart";

@JsonSerializable()
class NutritionalValues {

  @JsonKey(name: "cholesterol")
  double cholesterol;

  @JsonKey(name: "sodium")
  double sodium;

  @JsonKey(name: "potassium")
  double potassium;

  @JsonKey(name: "totalFat")
  double totalFat;

  @JsonKey(name: "transFat")
  double transFat;

  @JsonKey(name: "saturatedFat")
  double saturatedFat;

  @JsonKey(name: "dietaryFiber")
  double dietaryFiber;

  @JsonKey(name: "sugars")
  double sugars;

  @JsonKey(name: "vitaminA")
  double vitaminA;

  @JsonKey(name: "vitaminB12")
  double vitaminB12;

  @JsonKey(name: "vitaminB6")
  double vitaminB6;

  @JsonKey(name: "vitaminC")
  double vitaminC;

  @JsonKey(name: "vitaminD")
  double vitaminD;

  @JsonKey(name: "vitaminE")
  double vitaminE;

  @JsonKey(name: "calcium")
  double calcium;

  @JsonKey(name: "iron")
  double iron;

  @JsonKey(name: "protein")
  double protein;

  @JsonKey(name: "totalCarbohydrate")
  double totalCarbohydrate;

  NutritionalValues(
      this.cholesterol,
      this.sodium,
      this.potassium,
      this.totalFat,
      this.transFat,
      this.saturatedFat,
      this.dietaryFiber,
      this.sugars,
      this.vitaminA,
      this.vitaminB12,
      this.vitaminB6,
      this.vitaminC,
      this.vitaminD,
      this.vitaminE,
      this.calcium,
      this.iron,
      this.protein,
      this.totalCarbohydrate);

  factory NutritionalValues.fromJson(Map<String, dynamic> json) =>
      _$NutritionalValuesFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionalValuesToJson(this);
}