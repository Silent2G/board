// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailFood _$DetailFoodFromJson(Map<String, dynamic> json) {
  return DetailFood(
    json['food'] == null
        ? null
        : Food.fromJson(json['food'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetailFoodToJson(DetailFood instance) =>
    <String, dynamic>{
      'food': instance.food,
    };
