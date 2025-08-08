// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantImpl _$$PlantImplFromJson(Map<String, dynamic> json) => _$PlantImpl(
  id: json['id'] as String,
  nickname: json['nickname'] as String?,
  scientificName: json['scientificName'] as String?,
  speciesId: json['speciesId'] as String,
  indoor: json['indoor'] as bool? ?? true,
  light: json['light'] as String? ?? 'medium',
  potSize: json['potSize'] as String? ?? 'M',
  soilType: json['soilType'] as String? ?? 'regular',
  acquiredAt: json['acquiredAt'] == null
      ? null
      : DateTime.parse(json['acquiredAt'] as String),
  photoPath: json['photoPath'] as String?,
  customWaterIntervalDays: (json['customWaterIntervalDays'] as num?)?.toInt(),
  customFeedIntervalDays: (json['customFeedIntervalDays'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PlantImplToJson(_$PlantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'scientificName': instance.scientificName,
      'speciesId': instance.speciesId,
      'indoor': instance.indoor,
      'light': instance.light,
      'potSize': instance.potSize,
      'soilType': instance.soilType,
      'acquiredAt': instance.acquiredAt?.toIso8601String(),
      'photoPath': instance.photoPath,
      'customWaterIntervalDays': instance.customWaterIntervalDays,
      'customFeedIntervalDays': instance.customFeedIntervalDays,
    };
