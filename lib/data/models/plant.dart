// lib/data/models/plant.dart

import 'package:freezed_annotation/freezed_annotation.dart';
part 'plant.freezed.dart';
part 'plant.g.dart';

@freezed
class Plant with _$Plant {
  const factory Plant({
    /// Unique identifier for this plant instance
    required String id,

    /// Optional user-given nickname/common name
    String? nickname,

    /// Optional scientific name (only for custom)
    String? scientificName,

    /// Links to a species in the catalog (or 'custom')
    required String speciesId,

    /// true = indoor, false = outdoor
    @Default(true) bool indoor,

    /// Light level: 'low', 'medium', or 'high'
    @Default('medium') String light,

    /// Pot size: 'S', 'M', or 'L'
    @Default('M') String potSize,

    /// Soil type: 'fast' | 'regular' | 'retentive'
    @Default('regular') String soilType,

    /// When user acquired/added this plant
    DateTime? acquiredAt,

    /// Local path or URL of user photo
    String? photoPath,

    /// Custom water interval (days), if speciesId == 'custom'
    int? customWaterIntervalDays,

    /// Custom feed interval (days), if speciesId == 'custom'
    int? customFeedIntervalDays,
  }) = _Plant;

  factory Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);
}
