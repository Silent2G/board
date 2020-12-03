import 'package:json_annotation/json_annotation.dart';

part "default_unit.g.dart";

@JsonSerializable()
class DefaultUnit {

  @JsonKey(name: "id")
  int id;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "plural")
  String plural;

  DefaultUnit(this.id, this.name, this.plural);

  factory DefaultUnit.fromJson(Map<String, dynamic> json) => _$DefaultUnitFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultUnitToJson(this);
}