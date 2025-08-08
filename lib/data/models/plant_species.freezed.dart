// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlantSpecies _$PlantSpeciesFromJson(Map<String, dynamic> json) {
  return _PlantSpecies.fromJson(json);
}

/// @nodoc
mixin _$PlantSpecies {
  String get id => throw _privateConstructorUsedError;
  String get commonName => throw _privateConstructorUsedError;
  String get scientificName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get light => throw _privateConstructorUsedError;

  /// These are all non-null in your JSON
  int get baselineWaterDays => throw _privateConstructorUsedError;
  int get baselineFeedDays => throw _privateConstructorUsedError;
  String get soilType => throw _privateConstructorUsedError;
  int get minTempC => throw _privateConstructorUsedError;
  int get maxTempC => throw _privateConstructorUsedError;
  bool get frostSensitive => throw _privateConstructorUsedError;
  int get repotIntervalMonths => throw _privateConstructorUsedError;

  /// Nested struct for seasonal multipliers
  Seasonal get seasonal => throw _privateConstructorUsedError;

  /// Optional image URL or asset path
  String? get image => throw _privateConstructorUsedError;

  /// Tips array always present (but may be empty)
  List<String> get tips => throw _privateConstructorUsedError;

  /// Serializes this PlantSpecies to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlantSpecies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantSpeciesCopyWith<PlantSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantSpeciesCopyWith<$Res> {
  factory $PlantSpeciesCopyWith(
    PlantSpecies value,
    $Res Function(PlantSpecies) then,
  ) = _$PlantSpeciesCopyWithImpl<$Res, PlantSpecies>;
  @useResult
  $Res call({
    String id,
    String commonName,
    String scientificName,
    String category,
    String light,
    int baselineWaterDays,
    int baselineFeedDays,
    String soilType,
    int minTempC,
    int maxTempC,
    bool frostSensitive,
    int repotIntervalMonths,
    Seasonal seasonal,
    String? image,
    List<String> tips,
  });

  $SeasonalCopyWith<$Res> get seasonal;
}

/// @nodoc
class _$PlantSpeciesCopyWithImpl<$Res, $Val extends PlantSpecies>
    implements $PlantSpeciesCopyWith<$Res> {
  _$PlantSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlantSpecies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? category = null,
    Object? light = null,
    Object? baselineWaterDays = null,
    Object? baselineFeedDays = null,
    Object? soilType = null,
    Object? minTempC = null,
    Object? maxTempC = null,
    Object? frostSensitive = null,
    Object? repotIntervalMonths = null,
    Object? seasonal = null,
    Object? image = freezed,
    Object? tips = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            commonName: null == commonName
                ? _value.commonName
                : commonName // ignore: cast_nullable_to_non_nullable
                      as String,
            scientificName: null == scientificName
                ? _value.scientificName
                : scientificName // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            light: null == light
                ? _value.light
                : light // ignore: cast_nullable_to_non_nullable
                      as String,
            baselineWaterDays: null == baselineWaterDays
                ? _value.baselineWaterDays
                : baselineWaterDays // ignore: cast_nullable_to_non_nullable
                      as int,
            baselineFeedDays: null == baselineFeedDays
                ? _value.baselineFeedDays
                : baselineFeedDays // ignore: cast_nullable_to_non_nullable
                      as int,
            soilType: null == soilType
                ? _value.soilType
                : soilType // ignore: cast_nullable_to_non_nullable
                      as String,
            minTempC: null == minTempC
                ? _value.minTempC
                : minTempC // ignore: cast_nullable_to_non_nullable
                      as int,
            maxTempC: null == maxTempC
                ? _value.maxTempC
                : maxTempC // ignore: cast_nullable_to_non_nullable
                      as int,
            frostSensitive: null == frostSensitive
                ? _value.frostSensitive
                : frostSensitive // ignore: cast_nullable_to_non_nullable
                      as bool,
            repotIntervalMonths: null == repotIntervalMonths
                ? _value.repotIntervalMonths
                : repotIntervalMonths // ignore: cast_nullable_to_non_nullable
                      as int,
            seasonal: null == seasonal
                ? _value.seasonal
                : seasonal // ignore: cast_nullable_to_non_nullable
                      as Seasonal,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
            tips: null == tips
                ? _value.tips
                : tips // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of PlantSpecies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeasonalCopyWith<$Res> get seasonal {
    return $SeasonalCopyWith<$Res>(_value.seasonal, (value) {
      return _then(_value.copyWith(seasonal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantSpeciesImplCopyWith<$Res>
    implements $PlantSpeciesCopyWith<$Res> {
  factory _$$PlantSpeciesImplCopyWith(
    _$PlantSpeciesImpl value,
    $Res Function(_$PlantSpeciesImpl) then,
  ) = __$$PlantSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String commonName,
    String scientificName,
    String category,
    String light,
    int baselineWaterDays,
    int baselineFeedDays,
    String soilType,
    int minTempC,
    int maxTempC,
    bool frostSensitive,
    int repotIntervalMonths,
    Seasonal seasonal,
    String? image,
    List<String> tips,
  });

  @override
  $SeasonalCopyWith<$Res> get seasonal;
}

/// @nodoc
class __$$PlantSpeciesImplCopyWithImpl<$Res>
    extends _$PlantSpeciesCopyWithImpl<$Res, _$PlantSpeciesImpl>
    implements _$$PlantSpeciesImplCopyWith<$Res> {
  __$$PlantSpeciesImplCopyWithImpl(
    _$PlantSpeciesImpl _value,
    $Res Function(_$PlantSpeciesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlantSpecies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? category = null,
    Object? light = null,
    Object? baselineWaterDays = null,
    Object? baselineFeedDays = null,
    Object? soilType = null,
    Object? minTempC = null,
    Object? maxTempC = null,
    Object? frostSensitive = null,
    Object? repotIntervalMonths = null,
    Object? seasonal = null,
    Object? image = freezed,
    Object? tips = null,
  }) {
    return _then(
      _$PlantSpeciesImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        commonName: null == commonName
            ? _value.commonName
            : commonName // ignore: cast_nullable_to_non_nullable
                  as String,
        scientificName: null == scientificName
            ? _value.scientificName
            : scientificName // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        light: null == light
            ? _value.light
            : light // ignore: cast_nullable_to_non_nullable
                  as String,
        baselineWaterDays: null == baselineWaterDays
            ? _value.baselineWaterDays
            : baselineWaterDays // ignore: cast_nullable_to_non_nullable
                  as int,
        baselineFeedDays: null == baselineFeedDays
            ? _value.baselineFeedDays
            : baselineFeedDays // ignore: cast_nullable_to_non_nullable
                  as int,
        soilType: null == soilType
            ? _value.soilType
            : soilType // ignore: cast_nullable_to_non_nullable
                  as String,
        minTempC: null == minTempC
            ? _value.minTempC
            : minTempC // ignore: cast_nullable_to_non_nullable
                  as int,
        maxTempC: null == maxTempC
            ? _value.maxTempC
            : maxTempC // ignore: cast_nullable_to_non_nullable
                  as int,
        frostSensitive: null == frostSensitive
            ? _value.frostSensitive
            : frostSensitive // ignore: cast_nullable_to_non_nullable
                  as bool,
        repotIntervalMonths: null == repotIntervalMonths
            ? _value.repotIntervalMonths
            : repotIntervalMonths // ignore: cast_nullable_to_non_nullable
                  as int,
        seasonal: null == seasonal
            ? _value.seasonal
            : seasonal // ignore: cast_nullable_to_non_nullable
                  as Seasonal,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
        tips: null == tips
            ? _value._tips
            : tips // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlantSpeciesImpl implements _PlantSpecies {
  const _$PlantSpeciesImpl({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.category,
    required this.light,
    required this.baselineWaterDays,
    required this.baselineFeedDays,
    required this.soilType,
    required this.minTempC,
    required this.maxTempC,
    required this.frostSensitive,
    required this.repotIntervalMonths,
    required this.seasonal,
    this.image,
    final List<String> tips = const <String>[],
  }) : _tips = tips;

  factory _$PlantSpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantSpeciesImplFromJson(json);

  @override
  final String id;
  @override
  final String commonName;
  @override
  final String scientificName;
  @override
  final String category;
  @override
  final String light;

  /// These are all non-null in your JSON
  @override
  final int baselineWaterDays;
  @override
  final int baselineFeedDays;
  @override
  final String soilType;
  @override
  final int minTempC;
  @override
  final int maxTempC;
  @override
  final bool frostSensitive;
  @override
  final int repotIntervalMonths;

  /// Nested struct for seasonal multipliers
  @override
  final Seasonal seasonal;

  /// Optional image URL or asset path
  @override
  final String? image;

  /// Tips array always present (but may be empty)
  final List<String> _tips;

  /// Tips array always present (but may be empty)
  @override
  @JsonKey()
  List<String> get tips {
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  String toString() {
    return 'PlantSpecies(id: $id, commonName: $commonName, scientificName: $scientificName, category: $category, light: $light, baselineWaterDays: $baselineWaterDays, baselineFeedDays: $baselineFeedDays, soilType: $soilType, minTempC: $minTempC, maxTempC: $maxTempC, frostSensitive: $frostSensitive, repotIntervalMonths: $repotIntervalMonths, seasonal: $seasonal, image: $image, tips: $tips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantSpeciesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.baselineWaterDays, baselineWaterDays) ||
                other.baselineWaterDays == baselineWaterDays) &&
            (identical(other.baselineFeedDays, baselineFeedDays) ||
                other.baselineFeedDays == baselineFeedDays) &&
            (identical(other.soilType, soilType) ||
                other.soilType == soilType) &&
            (identical(other.minTempC, minTempC) ||
                other.minTempC == minTempC) &&
            (identical(other.maxTempC, maxTempC) ||
                other.maxTempC == maxTempC) &&
            (identical(other.frostSensitive, frostSensitive) ||
                other.frostSensitive == frostSensitive) &&
            (identical(other.repotIntervalMonths, repotIntervalMonths) ||
                other.repotIntervalMonths == repotIntervalMonths) &&
            (identical(other.seasonal, seasonal) ||
                other.seasonal == seasonal) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._tips, _tips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    commonName,
    scientificName,
    category,
    light,
    baselineWaterDays,
    baselineFeedDays,
    soilType,
    minTempC,
    maxTempC,
    frostSensitive,
    repotIntervalMonths,
    seasonal,
    image,
    const DeepCollectionEquality().hash(_tips),
  );

  /// Create a copy of PlantSpecies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantSpeciesImplCopyWith<_$PlantSpeciesImpl> get copyWith =>
      __$$PlantSpeciesImplCopyWithImpl<_$PlantSpeciesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantSpeciesImplToJson(this);
  }
}

abstract class _PlantSpecies implements PlantSpecies {
  const factory _PlantSpecies({
    required final String id,
    required final String commonName,
    required final String scientificName,
    required final String category,
    required final String light,
    required final int baselineWaterDays,
    required final int baselineFeedDays,
    required final String soilType,
    required final int minTempC,
    required final int maxTempC,
    required final bool frostSensitive,
    required final int repotIntervalMonths,
    required final Seasonal seasonal,
    final String? image,
    final List<String> tips,
  }) = _$PlantSpeciesImpl;

  factory _PlantSpecies.fromJson(Map<String, dynamic> json) =
      _$PlantSpeciesImpl.fromJson;

  @override
  String get id;
  @override
  String get commonName;
  @override
  String get scientificName;
  @override
  String get category;
  @override
  String get light;

  /// These are all non-null in your JSON
  @override
  int get baselineWaterDays;
  @override
  int get baselineFeedDays;
  @override
  String get soilType;
  @override
  int get minTempC;
  @override
  int get maxTempC;
  @override
  bool get frostSensitive;
  @override
  int get repotIntervalMonths;

  /// Nested struct for seasonal multipliers
  @override
  Seasonal get seasonal;

  /// Optional image URL or asset path
  @override
  String? get image;

  /// Tips array always present (but may be empty)
  @override
  List<String> get tips;

  /// Create a copy of PlantSpecies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantSpeciesImplCopyWith<_$PlantSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Seasonal _$SeasonalFromJson(Map<String, dynamic> json) {
  return _Seasonal.fromJson(json);
}

/// @nodoc
mixin _$Seasonal {
  double get winterMultiplier => throw _privateConstructorUsedError;
  double get summerMultiplier => throw _privateConstructorUsedError;

  /// Serializes this Seasonal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Seasonal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonalCopyWith<Seasonal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalCopyWith<$Res> {
  factory $SeasonalCopyWith(Seasonal value, $Res Function(Seasonal) then) =
      _$SeasonalCopyWithImpl<$Res, Seasonal>;
  @useResult
  $Res call({double winterMultiplier, double summerMultiplier});
}

/// @nodoc
class _$SeasonalCopyWithImpl<$Res, $Val extends Seasonal>
    implements $SeasonalCopyWith<$Res> {
  _$SeasonalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Seasonal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winterMultiplier = null,
    Object? summerMultiplier = null,
  }) {
    return _then(
      _value.copyWith(
            winterMultiplier: null == winterMultiplier
                ? _value.winterMultiplier
                : winterMultiplier // ignore: cast_nullable_to_non_nullable
                      as double,
            summerMultiplier: null == summerMultiplier
                ? _value.summerMultiplier
                : summerMultiplier // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SeasonalImplCopyWith<$Res>
    implements $SeasonalCopyWith<$Res> {
  factory _$$SeasonalImplCopyWith(
    _$SeasonalImpl value,
    $Res Function(_$SeasonalImpl) then,
  ) = __$$SeasonalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double winterMultiplier, double summerMultiplier});
}

/// @nodoc
class __$$SeasonalImplCopyWithImpl<$Res>
    extends _$SeasonalCopyWithImpl<$Res, _$SeasonalImpl>
    implements _$$SeasonalImplCopyWith<$Res> {
  __$$SeasonalImplCopyWithImpl(
    _$SeasonalImpl _value,
    $Res Function(_$SeasonalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Seasonal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winterMultiplier = null,
    Object? summerMultiplier = null,
  }) {
    return _then(
      _$SeasonalImpl(
        winterMultiplier: null == winterMultiplier
            ? _value.winterMultiplier
            : winterMultiplier // ignore: cast_nullable_to_non_nullable
                  as double,
        summerMultiplier: null == summerMultiplier
            ? _value.summerMultiplier
            : summerMultiplier // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonalImpl implements _Seasonal {
  const _$SeasonalImpl({
    required this.winterMultiplier,
    required this.summerMultiplier,
  });

  factory _$SeasonalImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonalImplFromJson(json);

  @override
  final double winterMultiplier;
  @override
  final double summerMultiplier;

  @override
  String toString() {
    return 'Seasonal(winterMultiplier: $winterMultiplier, summerMultiplier: $summerMultiplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalImpl &&
            (identical(other.winterMultiplier, winterMultiplier) ||
                other.winterMultiplier == winterMultiplier) &&
            (identical(other.summerMultiplier, summerMultiplier) ||
                other.summerMultiplier == summerMultiplier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, winterMultiplier, summerMultiplier);

  /// Create a copy of Seasonal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalImplCopyWith<_$SeasonalImpl> get copyWith =>
      __$$SeasonalImplCopyWithImpl<_$SeasonalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonalImplToJson(this);
  }
}

abstract class _Seasonal implements Seasonal {
  const factory _Seasonal({
    required final double winterMultiplier,
    required final double summerMultiplier,
  }) = _$SeasonalImpl;

  factory _Seasonal.fromJson(Map<String, dynamic> json) =
      _$SeasonalImpl.fromJson;

  @override
  double get winterMultiplier;
  @override
  double get summerMultiplier;

  /// Create a copy of Seasonal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalImplCopyWith<_$SeasonalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
