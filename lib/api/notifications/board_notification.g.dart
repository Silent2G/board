// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardNotification _$NotificationFromJson(Map<String, dynamic> json) {
  return BoardNotification(
    json['id'] as int,
    json['name'] as String,
    json['description'] as String,
    json['notif_type'] as String,
    json['color'] as String,
    json['action_link'] as String,
    json['icon_type'] as String,
    json['created'] == null ? null : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$NotificationToJson(BoardNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'notif_type': instance.notifType,
      'color': instance.color,
      'action_link': instance.actionLink,
      'icon_type': instance.iconType,
      'created': instance.created?.toIso8601String(),
    };
