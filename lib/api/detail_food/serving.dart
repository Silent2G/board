import 'package:board_pro/api/food_search/default_unit.dart';
import 'package:json_annotation/json_annotation.dart';

part "serving.g.dart";

@JsonSerializable()
class Serving {
  @JsonKey(name: "multiplier")
  int multiplier;

  @JsonKey(name: "servingSize")
  double servingSize;

  @JsonKey(name: "unitId")
  int unitId;

  @JsonKey(name: "unit")
  DefaultUnit unit;

  Serving(this.multiplier, this.servingSize, this.unitId, this.unit);

  factory Serving.fromJson(Map<String, dynamic> json) =>
      _$ServingFromJson(json);

  Map<String, dynamic> toJson() => _$ServingToJson(this);
}
