import 'package:json_annotation/json_annotation.dart';

part 'board_notification.g.dart';

@JsonSerializable()
class BoardNotification {
  @JsonKey(name: "id")
  int id;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "description")
  String description;

  @JsonKey(name: "notif_type")
  String notifType;

  @JsonKey(name: "color")
  String color;

  @JsonKey(name: "action_link")
  String actionLink;

  @JsonKey(name: "icon_type")
  String iconType;

  @JsonKey(name: "created")
  DateTime created;

  BoardNotification(this.id, this.name, this.description, this.notifType, this.color,
      this.actionLink, this.iconType, this.created);

  factory BoardNotification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}