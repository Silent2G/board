// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutritional_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionalValues _$NutritionalValuesFromJson(Map<String, dynamic> json) {
  return NutritionalValues(
    (json['cholesterol'] as num)?.toDouble(),
    (json['sodium'] as num)?.toDouble(),
    (json['potassium'] as num)?.toDouble(),
    (json['totalFat'] as num)?.toDouble(),
    (json['transFat'] as num)?.toDouble(),
    (json['saturatedFat'] as num)?.toDouble(),
    (json['dietaryFiber'] as num)?.toDouble(),
    (json['sugars'] as num)?.toDouble(),
    (json['vitaminA'] as num)?.toDouble(),
    (json['vitaminB12'] as num)?.toDouble(),
    (json['vitaminB6'] as num)?.toDouble(),
    (json['vitaminC'] as num)?.toDouble(),
    (json['vitaminD'] as num)?.toDouble(),
    (json['vitaminE'] as num)?.toDouble(),
    (json['calcium'] as num)?.toDouble(),
    (json['iron'] as num)?.toDouble(),
    (json['protein'] as num)?.toDouble(),
    (json['totalCarbohydrate'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$NutritionalValuesToJson(NutritionalValues instance) =>
    <String, dynamic>{
      'cholesterol': instance.cholesterol,
      'sodium': instance.sodium,
      'potassium': instance.potassium,
      'totalFat': instance.totalFat,
      'transFat': instance.transFat,
      'saturatedFat': instance.saturatedFat,
      'dietaryFiber': instance.dietaryFiber,
      'sugars': instance.sugars,
      'vitaminA': instance.vitaminA,
      'vitaminB12': instance.vitaminB12,
      'vitaminB6': instance.vitaminB6,
      'vitaminC': instance.vitaminC,
      'vitaminD': instance.vitaminD,
      'vitaminE': instance.vitaminE,
      'calcium': instance.calcium,
      'iron': instance.iron,
      'protein': instance.protein,
      'totalCarbohydrate': instance.totalCarbohydrate,
    };
