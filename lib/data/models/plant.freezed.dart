// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Plant _$PlantFromJson(Map<String, dynamic> json) {
  return _Plant.fromJson(json);
}

/// @nodoc
mixin _$Plant {
  /// Unique identifier for this plant instance
  String get id => throw _privateConstructorUsedError;

  /// Optional user-given nickname/common name
  String? get nickname => throw _privateConstructorUsedError;

  /// Optional scientific name (only for custom)
  String? get scientificName => throw _privateConstructorUsedError;

  /// Links to a species in the catalog (or 'custom')
  String get speciesId => throw _privateConstructorUsedError;

  /// true = indoor, false = outdoor
  bool get indoor => throw _privateConstructorUsedError;

  /// Light level: 'low', 'medium', or 'high'
  String get light => throw _privateConstructorUsedError;

  /// Pot size: 'S', 'M', or 'L'
  String get potSize => throw _privateConstructorUsedError;

  /// Soil type: 'fast' | 'regular' | 'retentive'
  String get soilType => throw _privateConstructorUsedError;

  /// When user acquired/added this plant
  DateTime? get acquiredAt => throw _privateConstructorUsedError;

  /// Local path or URL of user photo
  String? get photoPath => throw _privateConstructorUsedError;

  /// Custom water interval (days), if speciesId == 'custom'
  int? get customWaterIntervalDays => throw _privateConstructorUsedError;

  /// Custom feed interval (days), if speciesId == 'custom'
  int? get customFeedIntervalDays => throw _privateConstructorUsedError;

  /// Serializes this Plant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantCopyWith<Plant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res, Plant>;
  @useResult
  $Res call({
    String id,
    String? nickname,
    String? scientificName,
    String speciesId,
    bool indoor,
    String light,
    String potSize,
    String soilType,
    DateTime? acquiredAt,
    String? photoPath,
    int? customWaterIntervalDays,
    int? customFeedIntervalDays,
  });
}

/// @nodoc
class _$PlantCopyWithImpl<$Res, $Val extends Plant>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = freezed,
    Object? scientificName = freezed,
    Object? speciesId = null,
    Object? indoor = null,
    Object? light = null,
    Object? potSize = null,
    Object? soilType = null,
    Object? acquiredAt = freezed,
    Object? photoPath = freezed,
    Object? customWaterIntervalDays = freezed,
    Object? customFeedIntervalDays = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nickname: freezed == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                      as String?,
            scientificName: freezed == scientificName
                ? _value.scientificName
                : scientificName // ignore: cast_nullable_to_non_nullable
                      as String?,
            speciesId: null == speciesId
                ? _value.speciesId
                : speciesId // ignore: cast_nullable_to_non_nullable
                      as String,
            indoor: null == indoor
                ? _value.indoor
                : indoor // ignore: cast_nullable_to_non_nullable
                      as bool,
            light: null == light
                ? _value.light
                : light // ignore: cast_nullable_to_non_nullable
                      as String,
            potSize: null == potSize
                ? _value.potSize
                : potSize // ignore: cast_nullable_to_non_nullable
                      as String,
            soilType: null == soilType
                ? _value.soilType
                : soilType // ignore: cast_nullable_to_non_nullable
                      as String,
            acquiredAt: freezed == acquiredAt
                ? _value.acquiredAt
                : acquiredAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            photoPath: freezed == photoPath
                ? _value.photoPath
                : photoPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            customWaterIntervalDays: freezed == customWaterIntervalDays
                ? _value.customWaterIntervalDays
                : customWaterIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int?,
            customFeedIntervalDays: freezed == customFeedIntervalDays
                ? _value.customFeedIntervalDays
                : customFeedIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlantImplCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$$PlantImplCopyWith(
    _$PlantImpl value,
    $Res Function(_$PlantImpl) then,
  ) = __$$PlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? nickname,
    String? scientificName,
    String speciesId,
    bool indoor,
    String light,
    String potSize,
    String soilType,
    DateTime? acquiredAt,
    String? photoPath,
    int? customWaterIntervalDays,
    int? customFeedIntervalDays,
  });
}

/// @nodoc
class __$$PlantImplCopyWithImpl<$Res>
    extends _$PlantCopyWithImpl<$Res, _$PlantImpl>
    implements _$$PlantImplCopyWith<$Res> {
  __$$PlantImplCopyWithImpl(
    _$PlantImpl _value,
    $Res Function(_$PlantImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = freezed,
    Object? scientificName = freezed,
    Object? speciesId = null,
    Object? indoor = null,
    Object? light = null,
    Object? potSize = null,
    Object? soilType = null,
    Object? acquiredAt = freezed,
    Object? photoPath = freezed,
    Object? customWaterIntervalDays = freezed,
    Object? customFeedIntervalDays = freezed,
  }) {
    return _then(
      _$PlantImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nickname: freezed == nickname
            ? _value.nickname
            : nickname // ignore: cast_nullable_to_non_nullable
                  as String?,
        scientificName: freezed == scientificName
            ? _value.scientificName
            : scientificName // ignore: cast_nullable_to_non_nullable
                  as String?,
        speciesId: null == speciesId
            ? _value.speciesId
            : speciesId // ignore: cast_nullable_to_non_nullable
                  as String,
        indoor: null == indoor
            ? _value.indoor
            : indoor // ignore: cast_nullable_to_non_nullable
                  as bool,
        light: null == light
            ? _value.light
            : light // ignore: cast_nullable_to_non_nullable
                  as String,
        potSize: null == potSize
            ? _value.potSize
            : potSize // ignore: cast_nullable_to_non_nullable
                  as String,
        soilType: null == soilType
            ? _value.soilType
            : soilType // ignore: cast_nullable_to_non_nullable
                  as String,
        acquiredAt: freezed == acquiredAt
            ? _value.acquiredAt
            : acquiredAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        photoPath: freezed == photoPath
            ? _value.photoPath
            : photoPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        customWaterIntervalDays: freezed == customWaterIntervalDays
            ? _value.customWaterIntervalDays
            : customWaterIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int?,
        customFeedIntervalDays: freezed == customFeedIntervalDays
            ? _value.customFeedIntervalDays
            : customFeedIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantImpl implements _Plant {
  const _$PlantImpl({
    required this.id,
    this.nickname,
    this.scientificName,
    required this.speciesId,
    this.indoor = true,
    this.light = 'medium',
    this.potSize = 'M',
    this.soilType = 'regular',
    this.acquiredAt,
    this.photoPath,
    this.customWaterIntervalDays,
    this.customFeedIntervalDays,
  });

  factory _$PlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImplFromJson(json);

  /// Unique identifier for this plant instance
  @override
  final String id;

  /// Optional user-given nickname/common name
  @override
  final String? nickname;

  /// Optional scientific name (only for custom)
  @override
  final String? scientificName;

  /// Links to a species in the catalog (or 'custom')
  @override
  final String speciesId;

  /// true = indoor, false = outdoor
  @override
  @JsonKey()
  final bool indoor;

  /// Light level: 'low', 'medium', or 'high'
  @override
  @JsonKey()
  final String light;

  /// Pot size: 'S', 'M', or 'L'
  @override
  @JsonKey()
  final String potSize;

  /// Soil type: 'fast' | 'regular' | 'retentive'
  @override
  @JsonKey()
  final String soilType;

  /// When user acquired/added this plant
  @override
  final DateTime? acquiredAt;

  /// Local path or URL of user photo
  @override
  final String? photoPath;

  /// Custom water interval (days), if speciesId == 'custom'
  @override
  final int? customWaterIntervalDays;

  /// Custom feed interval (days), if speciesId == 'custom'
  @override
  final int? customFeedIntervalDays;

  @override
  String toString() {
    return 'Plant(id: $id, nickname: $nickname, scientificName: $scientificName, speciesId: $speciesId, indoor: $indoor, light: $light, potSize: $potSize, soilType: $soilType, acquiredAt: $acquiredAt, photoPath: $photoPath, customWaterIntervalDays: $customWaterIntervalDays, customFeedIntervalDays: $customFeedIntervalDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.indoor, indoor) || other.indoor == indoor) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.potSize, potSize) || other.potSize == potSize) &&
            (identical(other.soilType, soilType) ||
                other.soilType == soilType) &&
            (identical(other.acquiredAt, acquiredAt) ||
                other.acquiredAt == acquiredAt) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath) &&
            (identical(
                  other.customWaterIntervalDays,
                  customWaterIntervalDays,
                ) ||
                other.customWaterIntervalDays == customWaterIntervalDays) &&
            (identical(other.customFeedIntervalDays, customFeedIntervalDays) ||
                other.customFeedIntervalDays == customFeedIntervalDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    nickname,
    scientificName,
    speciesId,
    indoor,
    light,
    potSize,
    soilType,
    acquiredAt,
    photoPath,
    customWaterIntervalDays,
    customFeedIntervalDays,
  );

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      __$$PlantImplCopyWithImpl<_$PlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantImplToJson(this);
  }
}

abstract class _Plant implements Plant {
  const factory _Plant({
    required final String id,
    final String? nickname,
    final String? scientificName,
    required final String speciesId,
    final bool indoor,
    final String light,
    final String potSize,
    final String soilType,
    final DateTime? acquiredAt,
    final String? photoPath,
    final int? customWaterIntervalDays,
    final int? customFeedIntervalDays,
  }) = _$PlantImpl;

  factory _Plant.fromJson(Map<String, dynamic> json) = _$PlantImpl.fromJson;

  /// Unique identifier for this plant instance
  @override
  String get id;

  /// Optional user-given nickname/common name
  @override
  String? get nickname;

  /// Optional scientific name (only for custom)
  @override
  String? get scientificName;

  /// Links to a species in the catalog (or 'custom')
  @override
  String get speciesId;

  /// true = indoor, false = outdoor
  @override
  bool get indoor;

  /// Light level: 'low', 'medium', or 'high'
  @override
  String get light;

  /// Pot size: 'S', 'M', or 'L'
  @override
  String get potSize;

  /// Soil type: 'fast' | 'regular' | 'retentive'
  @override
  String get soilType;

  /// When user acquired/added this plant
  @override
  DateTime? get acquiredAt;

  /// Local path or URL of user photo
  @override
  String? get photoPath;

  /// Custom water interval (days), if speciesId == 'custom'
  @override
  int? get customWaterIntervalDays;

  /// Custom feed interval (days), if speciesId == 'custom'
  @override
  int? get customFeedIntervalDays;

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
