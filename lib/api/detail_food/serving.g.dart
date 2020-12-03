// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serving.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Serving _$ServingFromJson(Map<String, dynamic> json) {
  return Serving(
    json['multiplier'] as int,
    (json['servingSize'] as num)?.toDouble(),
    json['unitId'] as int,
    json['unit'] == null
        ? null
        : DefaultUnit.fromJson(json['unit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ServingToJson(Serving instance) => <String, dynamic>{
      'multiplier': instance.multiplier,
      'servingSize': instance.servingSize,
      'unitId': instance.unitId,
      'unit': instance.unit,
    };
