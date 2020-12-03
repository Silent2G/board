import 'package:json_annotation/json_annotation.dart';

part "nutritional_values.g.dart";

@JsonSerializable()
class NutritionalValues {

  @JsonKey(name: "cholesterol")
  int cholesterol;

  @JsonKey(name: "sodium")
  int sodium;

  @JsonKey(name: "potassium")
  int potassium;

  @JsonKey(name: "totalFat")
  int totalFat;

  @JsonKey(name: "transFat")
  int transFat;

  @JsonKey(name: "saturatedFat")
  int saturatedFat;

  @JsonKey(name: "dietaryFiber")
  int dietaryFiber;

  @JsonKey(name: "sugars")
  int sugars;

  @JsonKey(name: "vitaminA")
  int vitaminA;

  @JsonKey(name: "vitaminB12")
  int vitaminB12;

  @JsonKey(name: "vitaminB6")
  int vitaminB6;

  @JsonKey(name: "vitaminC")
  int vitaminC;

  @JsonKey(name: "vitaminD")
  int vitaminD;

  @JsonKey(name: "vitaminE")
  int vitaminE;

  @JsonKey(name: "calcium")
  int calcium;

  @JsonKey(name: "iron")
  int iron;

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
      this.iron);

  factory NutritionalValues.fromJson(Map<String, dynamic> json) =>
      _$NutritionalValuesFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionalValuesToJson(this);
}