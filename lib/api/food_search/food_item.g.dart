// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) {
  return FoodItem(
    json['accessLevel'] as String,
    json['calories'] as int,
    (json['defaultServingSize'] as num)?.toDouble(),
    json['defaultUnit'] == null
        ? null
        : DefaultUnit.fromJson(json['defaultUnit'] as Map<String, dynamic>),
    json['foodId'] as int,
    json['locale'] as String,
    json['name'] as String,
    (json['units'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$FoodItemToJson(FoodItem instance) => <String, dynamic>{
      'accessLevel': instance.accessLevel,
      'calories': instance.calories,
      'defaultServingSize': instance.defaultServingSize,
      'defaultUnit': instance.defaultUnit,
      'foodId': instance.foodId,
      'locale': instance.locale,
      'name': instance.name,
      'units': instance.units,
    };
