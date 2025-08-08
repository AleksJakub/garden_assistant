import 'package:freezed_annotation/freezed_annotation.dart';
part 'plant_species.freezed.dart';
part 'plant_species.g.dart';

@freezed
class PlantSpecies with _$PlantSpecies {
  @JsonSerializable(explicitToJson: true)
  const factory PlantSpecies({
    required String id,
    required String commonName,
    required String scientificName,
    required String category,
    required String light,

    /// These are all non-null in your JSON
    required int baselineWaterDays,
    required int baselineFeedDays,
    required String soilType,
    required int minTempC,
    required int maxTempC,
    required bool frostSensitive,
    required int repotIntervalMonths,

    /// Nested struct for seasonal multipliers
    required Seasonal seasonal,

    /// Optional image URL or asset path
    String? image,

    /// Tips array always present (but may be empty)
    @Default(<String>[]) List<String> tips,
  }) = _PlantSpecies;

  factory PlantSpecies.fromJson(Map<String, dynamic> json) =>
      _$PlantSpeciesFromJson(json);
}

@freezed
class Seasonal with _$Seasonal {
  const factory Seasonal({
    required double winterMultiplier,
    required double summerMultiplier,
  }) = _Seasonal;

  factory Seasonal.fromJson(Map<String, dynamic> json) =>
      _$SeasonalFromJson(json);
}
