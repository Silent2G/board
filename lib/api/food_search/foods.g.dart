// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Foods _$FoodsFromJson(Map<String, dynamic> json) {
  return Foods(
    (json['foods'] as List)
        ?.map((e) =>
            e == null ? null : FoodItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FoodsToJson(Foods instance) => <String, dynamic>{
      'foods': instance.foods,
    };
