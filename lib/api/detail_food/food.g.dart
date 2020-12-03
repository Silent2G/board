// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) {
  return Food(
    json['accessLevel'] as String,
    json['brand'] as String,
    json['calories'] as int,
    (json['defaultServingSize'] as num)?.toDouble(),
    json['defaultUnit'] == null
        ? null
        : DefaultUnit.fromJson(json['defaultUnit'] as Map<String, dynamic>),
    json['foodId'] as int,
    json['locale'] as String,
    json['name'] as String,
    (json['servings'] as List)
        ?.map((e) =>
            e == null ? null : Serving.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['units'] as List)?.map((e) => e as int)?.toList(),
    json['nutritionalValues'] == null
        ? null
        : NutritionalValues.fromJson(
            json['nutritionalValues'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'accessLevel': instance.accessLevel,
      'brand': instance.brand,
      'calories': instance.calories,
      'defaultServingSize': instance.defaultServingSize,
      'defaultUnit': instance.defaultUnit,
      'foodId': instance.foodId,
      'locale': instance.locale,
      'name': instance.name,
      'servings': instance.servings,
      'units': instance.units,
      'nutritionalValues': instance.nutritionalValues,
    };
