// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantSpeciesImpl _$$PlantSpeciesImplFromJson(Map<String, dynamic> json) =>
    _$PlantSpeciesImpl(
      id: json['id'] as String,
      commonName: json['commonName'] as String,
      scientificName: json['scientificName'] as String,
      category: json['category'] as String,
      light: json['light'] as String,
      baselineWaterDays: (json['baselineWaterDays'] as num).toInt(),
      baselineFeedDays: (json['baselineFeedDays'] as num).toInt(),
      soilType: json['soilType'] as String,
      minTempC: (json['minTempC'] as num).toInt(),
      maxTempC: (json['maxTempC'] as num).toInt(),
      frostSensitive: json['frostSensitive'] as bool,
      repotIntervalMonths: (json['repotIntervalMonths'] as num).toInt(),
      seasonal: Seasonal.fromJson(json['seasonal'] as Map<String, dynamic>),
      image: json['image'] as String?,
      tips:
          (json['tips'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$PlantSpeciesImplToJson(_$PlantSpeciesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commonName': instance.commonName,
      'scientificName': instance.scientificName,
      'category': instance.category,
      'light': instance.light,
      'baselineWaterDays': instance.baselineWaterDays,
      'baselineFeedDays': instance.baselineFeedDays,
      'soilType': instance.soilType,
      'minTempC': instance.minTempC,
      'maxTempC': instance.maxTempC,
      'frostSensitive': instance.frostSensitive,
      'repotIntervalMonths': instance.repotIntervalMonths,
      'seasonal': instance.seasonal.toJson(),
      'image': instance.image,
      'tips': instance.tips,
    };

_$SeasonalImpl _$$SeasonalImplFromJson(Map<String, dynamic> json) =>
    _$SeasonalImpl(
      winterMultiplier: (json['winterMultiplier'] as num).toDouble(),
      summerMultiplier: (json['summerMultiplier'] as num).toDouble(),
    );

Map<String, dynamic> _$$SeasonalImplToJson(_$SeasonalImpl instance) =>
    <String, dynamic>{
      'winterMultiplier': instance.winterMultiplier,
      'summerMultiplier': instance.summerMultiplier,
    };
