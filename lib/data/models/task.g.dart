// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
  id: json['id'] as String,
  plantId: json['plantId'] as String,
  type: json['type'] as String,
  dueAt: DateTime.parse(json['dueAt'] as String),
  state: json['state'] as String? ?? 'upcoming',
  suggestedIntervalDays: (json['suggestedIntervalDays'] as num?)?.toInt(),
);

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plantId': instance.plantId,
      'type': instance.type,
      'dueAt': instance.dueAt.toIso8601String(),
      'state': instance.state,
      'suggestedIntervalDays': instance.suggestedIntervalDays,
    };
