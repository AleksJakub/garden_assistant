// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PlantsTable extends Plants with TableInfo<$PlantsTable, PlantEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlantsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _speciesIdMeta = const VerificationMeta(
    'speciesId',
  );
  @override
  late final GeneratedColumn<String> speciesId = GeneratedColumn<String>(
    'species_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nicknameMeta = const VerificationMeta(
    'nickname',
  );
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
    'nickname',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _scientificNameMeta = const VerificationMeta(
    'scientificName',
  );
  @override
  late final GeneratedColumn<String> scientificName = GeneratedColumn<String>(
    'scientific_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _indoorMeta = const VerificationMeta('indoor');
  @override
  late final GeneratedColumn<bool> indoor = GeneratedColumn<bool>(
    'indoor',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("indoor" IN (0, 1))',
    ),
    defaultValue: Constant(true),
  );
  static const VerificationMeta _lightMeta = const VerificationMeta('light');
  @override
  late final GeneratedColumn<String> light = GeneratedColumn<String>(
    'light',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _potSizeMeta = const VerificationMeta(
    'potSize',
  );
  @override
  late final GeneratedColumn<String> potSize = GeneratedColumn<String>(
    'pot_size',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _soilTypeMeta = const VerificationMeta(
    'soilType',
  );
  @override
  late final GeneratedColumn<String> soilType = GeneratedColumn<String>(
    'soil_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _acquiredAtMeta = const VerificationMeta(
    'acquiredAt',
  );
  @override
  late final GeneratedColumn<DateTime> acquiredAt = GeneratedColumn<DateTime>(
    'acquired_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _photoPathMeta = const VerificationMeta(
    'photoPath',
  );
  @override
  late final GeneratedColumn<String> photoPath = GeneratedColumn<String>(
    'photo_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _customWaterIntervalDaysMeta =
      const VerificationMeta('customWaterIntervalDays');
  @override
  late final GeneratedColumn<int> customWaterIntervalDays =
      GeneratedColumn<int>(
        'custom_water_interval_days',
        aliasedName,
        true,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _customFeedIntervalDaysMeta =
      const VerificationMeta('customFeedIntervalDays');
  @override
  late final GeneratedColumn<int> customFeedIntervalDays = GeneratedColumn<int>(
    'custom_feed_interval_days',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    speciesId,
    nickname,
    scientificName,
    indoor,
    light,
    potSize,
    soilType,
    acquiredAt,
    photoPath,
    customWaterIntervalDays,
    customFeedIntervalDays,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plants';
  @override
  VerificationContext validateIntegrity(
    Insertable<PlantEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('species_id')) {
      context.handle(
        _speciesIdMeta,
        speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_speciesIdMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(
        _nicknameMeta,
        nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta),
      );
    }
    if (data.containsKey('scientific_name')) {
      context.handle(
        _scientificNameMeta,
        scientificName.isAcceptableOrUnknown(
          data['scientific_name']!,
          _scientificNameMeta,
        ),
      );
    }
    if (data.containsKey('indoor')) {
      context.handle(
        _indoorMeta,
        indoor.isAcceptableOrUnknown(data['indoor']!, _indoorMeta),
      );
    }
    if (data.containsKey('light')) {
      context.handle(
        _lightMeta,
        light.isAcceptableOrUnknown(data['light']!, _lightMeta),
      );
    } else if (isInserting) {
      context.missing(_lightMeta);
    }
    if (data.containsKey('pot_size')) {
      context.handle(
        _potSizeMeta,
        potSize.isAcceptableOrUnknown(data['pot_size']!, _potSizeMeta),
      );
    } else if (isInserting) {
      context.missing(_potSizeMeta);
    }
    if (data.containsKey('soil_type')) {
      context.handle(
        _soilTypeMeta,
        soilType.isAcceptableOrUnknown(data['soil_type']!, _soilTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_soilTypeMeta);
    }
    if (data.containsKey('acquired_at')) {
      context.handle(
        _acquiredAtMeta,
        acquiredAt.isAcceptableOrUnknown(data['acquired_at']!, _acquiredAtMeta),
      );
    }
    if (data.containsKey('photo_path')) {
      context.handle(
        _photoPathMeta,
        photoPath.isAcceptableOrUnknown(data['photo_path']!, _photoPathMeta),
      );
    }
    if (data.containsKey('custom_water_interval_days')) {
      context.handle(
        _customWaterIntervalDaysMeta,
        customWaterIntervalDays.isAcceptableOrUnknown(
          data['custom_water_interval_days']!,
          _customWaterIntervalDaysMeta,
        ),
      );
    }
    if (data.containsKey('custom_feed_interval_days')) {
      context.handle(
        _customFeedIntervalDaysMeta,
        customFeedIntervalDays.isAcceptableOrUnknown(
          data['custom_feed_interval_days']!,
          _customFeedIntervalDaysMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlantEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlantEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      speciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}species_id'],
      )!,
      nickname: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nickname'],
      ),
      scientificName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}scientific_name'],
      ),
      indoor: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}indoor'],
      )!,
      light: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}light'],
      )!,
      potSize: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pot_size'],
      )!,
      soilType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}soil_type'],
      )!,
      acquiredAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}acquired_at'],
      ),
      photoPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_path'],
      ),
      customWaterIntervalDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}custom_water_interval_days'],
      ),
      customFeedIntervalDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}custom_feed_interval_days'],
      ),
    );
  }

  @override
  $PlantsTable createAlias(String alias) {
    return $PlantsTable(attachedDatabase, alias);
  }
}

class PlantEntry extends DataClass implements Insertable<PlantEntry> {
  final String id;
  final String speciesId;
  final String? nickname;
  final String? scientificName;
  final bool indoor;
  final String light;
  final String potSize;
  final String soilType;
  final DateTime? acquiredAt;
  final String? photoPath;
  final int? customWaterIntervalDays;
  final int? customFeedIntervalDays;
  const PlantEntry({
    required this.id,
    required this.speciesId,
    this.nickname,
    this.scientificName,
    required this.indoor,
    required this.light,
    required this.potSize,
    required this.soilType,
    this.acquiredAt,
    this.photoPath,
    this.customWaterIntervalDays,
    this.customFeedIntervalDays,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['species_id'] = Variable<String>(speciesId);
    if (!nullToAbsent || nickname != null) {
      map['nickname'] = Variable<String>(nickname);
    }
    if (!nullToAbsent || scientificName != null) {
      map['scientific_name'] = Variable<String>(scientificName);
    }
    map['indoor'] = Variable<bool>(indoor);
    map['light'] = Variable<String>(light);
    map['pot_size'] = Variable<String>(potSize);
    map['soil_type'] = Variable<String>(soilType);
    if (!nullToAbsent || acquiredAt != null) {
      map['acquired_at'] = Variable<DateTime>(acquiredAt);
    }
    if (!nullToAbsent || photoPath != null) {
      map['photo_path'] = Variable<String>(photoPath);
    }
    if (!nullToAbsent || customWaterIntervalDays != null) {
      map['custom_water_interval_days'] = Variable<int>(
        customWaterIntervalDays,
      );
    }
    if (!nullToAbsent || customFeedIntervalDays != null) {
      map['custom_feed_interval_days'] = Variable<int>(customFeedIntervalDays);
    }
    return map;
  }

  PlantsCompanion toCompanion(bool nullToAbsent) {
    return PlantsCompanion(
      id: Value(id),
      speciesId: Value(speciesId),
      nickname: nickname == null && nullToAbsent
          ? const Value.absent()
          : Value(nickname),
      scientificName: scientificName == null && nullToAbsent
          ? const Value.absent()
          : Value(scientificName),
      indoor: Value(indoor),
      light: Value(light),
      potSize: Value(potSize),
      soilType: Value(soilType),
      acquiredAt: acquiredAt == null && nullToAbsent
          ? const Value.absent()
          : Value(acquiredAt),
      photoPath: photoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPath),
      customWaterIntervalDays: customWaterIntervalDays == null && nullToAbsent
          ? const Value.absent()
          : Value(customWaterIntervalDays),
      customFeedIntervalDays: customFeedIntervalDays == null && nullToAbsent
          ? const Value.absent()
          : Value(customFeedIntervalDays),
    );
  }

  factory PlantEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlantEntry(
      id: serializer.fromJson<String>(json['id']),
      speciesId: serializer.fromJson<String>(json['speciesId']),
      nickname: serializer.fromJson<String?>(json['nickname']),
      scientificName: serializer.fromJson<String?>(json['scientificName']),
      indoor: serializer.fromJson<bool>(json['indoor']),
      light: serializer.fromJson<String>(json['light']),
      potSize: serializer.fromJson<String>(json['potSize']),
      soilType: serializer.fromJson<String>(json['soilType']),
      acquiredAt: serializer.fromJson<DateTime?>(json['acquiredAt']),
      photoPath: serializer.fromJson<String?>(json['photoPath']),
      customWaterIntervalDays: serializer.fromJson<int?>(
        json['customWaterIntervalDays'],
      ),
      customFeedIntervalDays: serializer.fromJson<int?>(
        json['customFeedIntervalDays'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'speciesId': serializer.toJson<String>(speciesId),
      'nickname': serializer.toJson<String?>(nickname),
      'scientificName': serializer.toJson<String?>(scientificName),
      'indoor': serializer.toJson<bool>(indoor),
      'light': serializer.toJson<String>(light),
      'potSize': serializer.toJson<String>(potSize),
      'soilType': serializer.toJson<String>(soilType),
      'acquiredAt': serializer.toJson<DateTime?>(acquiredAt),
      'photoPath': serializer.toJson<String?>(photoPath),
      'customWaterIntervalDays': serializer.toJson<int?>(
        customWaterIntervalDays,
      ),
      'customFeedIntervalDays': serializer.toJson<int?>(customFeedIntervalDays),
    };
  }

  PlantEntry copyWith({
    String? id,
    String? speciesId,
    Value<String?> nickname = const Value.absent(),
    Value<String?> scientificName = const Value.absent(),
    bool? indoor,
    String? light,
    String? potSize,
    String? soilType,
    Value<DateTime?> acquiredAt = const Value.absent(),
    Value<String?> photoPath = const Value.absent(),
    Value<int?> customWaterIntervalDays = const Value.absent(),
    Value<int?> customFeedIntervalDays = const Value.absent(),
  }) => PlantEntry(
    id: id ?? this.id,
    speciesId: speciesId ?? this.speciesId,
    nickname: nickname.present ? nickname.value : this.nickname,
    scientificName: scientificName.present
        ? scientificName.value
        : this.scientificName,
    indoor: indoor ?? this.indoor,
    light: light ?? this.light,
    potSize: potSize ?? this.potSize,
    soilType: soilType ?? this.soilType,
    acquiredAt: acquiredAt.present ? acquiredAt.value : this.acquiredAt,
    photoPath: photoPath.present ? photoPath.value : this.photoPath,
    customWaterIntervalDays: customWaterIntervalDays.present
        ? customWaterIntervalDays.value
        : this.customWaterIntervalDays,
    customFeedIntervalDays: customFeedIntervalDays.present
        ? customFeedIntervalDays.value
        : this.customFeedIntervalDays,
  );
  PlantEntry copyWithCompanion(PlantsCompanion data) {
    return PlantEntry(
      id: data.id.present ? data.id.value : this.id,
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      scientificName: data.scientificName.present
          ? data.scientificName.value
          : this.scientificName,
      indoor: data.indoor.present ? data.indoor.value : this.indoor,
      light: data.light.present ? data.light.value : this.light,
      potSize: data.potSize.present ? data.potSize.value : this.potSize,
      soilType: data.soilType.present ? data.soilType.value : this.soilType,
      acquiredAt: data.acquiredAt.present
          ? data.acquiredAt.value
          : this.acquiredAt,
      photoPath: data.photoPath.present ? data.photoPath.value : this.photoPath,
      customWaterIntervalDays: data.customWaterIntervalDays.present
          ? data.customWaterIntervalDays.value
          : this.customWaterIntervalDays,
      customFeedIntervalDays: data.customFeedIntervalDays.present
          ? data.customFeedIntervalDays.value
          : this.customFeedIntervalDays,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlantEntry(')
          ..write('id: $id, ')
          ..write('speciesId: $speciesId, ')
          ..write('nickname: $nickname, ')
          ..write('scientificName: $scientificName, ')
          ..write('indoor: $indoor, ')
          ..write('light: $light, ')
          ..write('potSize: $potSize, ')
          ..write('soilType: $soilType, ')
          ..write('acquiredAt: $acquiredAt, ')
          ..write('photoPath: $photoPath, ')
          ..write('customWaterIntervalDays: $customWaterIntervalDays, ')
          ..write('customFeedIntervalDays: $customFeedIntervalDays')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    speciesId,
    nickname,
    scientificName,
    indoor,
    light,
    potSize,
    soilType,
    acquiredAt,
    photoPath,
    customWaterIntervalDays,
    customFeedIntervalDays,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantEntry &&
          other.id == this.id &&
          other.speciesId == this.speciesId &&
          other.nickname == this.nickname &&
          other.scientificName == this.scientificName &&
          other.indoor == this.indoor &&
          other.light == this.light &&
          other.potSize == this.potSize &&
          other.soilType == this.soilType &&
          other.acquiredAt == this.acquiredAt &&
          other.photoPath == this.photoPath &&
          other.customWaterIntervalDays == this.customWaterIntervalDays &&
          other.customFeedIntervalDays == this.customFeedIntervalDays);
}

class PlantsCompanion extends UpdateCompanion<PlantEntry> {
  final Value<String> id;
  final Value<String> speciesId;
  final Value<String?> nickname;
  final Value<String?> scientificName;
  final Value<bool> indoor;
  final Value<String> light;
  final Value<String> potSize;
  final Value<String> soilType;
  final Value<DateTime?> acquiredAt;
  final Value<String?> photoPath;
  final Value<int?> customWaterIntervalDays;
  final Value<int?> customFeedIntervalDays;
  final Value<int> rowid;
  const PlantsCompanion({
    this.id = const Value.absent(),
    this.speciesId = const Value.absent(),
    this.nickname = const Value.absent(),
    this.scientificName = const Value.absent(),
    this.indoor = const Value.absent(),
    this.light = const Value.absent(),
    this.potSize = const Value.absent(),
    this.soilType = const Value.absent(),
    this.acquiredAt = const Value.absent(),
    this.photoPath = const Value.absent(),
    this.customWaterIntervalDays = const Value.absent(),
    this.customFeedIntervalDays = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlantsCompanion.insert({
    required String id,
    required String speciesId,
    this.nickname = const Value.absent(),
    this.scientificName = const Value.absent(),
    this.indoor = const Value.absent(),
    required String light,
    required String potSize,
    required String soilType,
    this.acquiredAt = const Value.absent(),
    this.photoPath = const Value.absent(),
    this.customWaterIntervalDays = const Value.absent(),
    this.customFeedIntervalDays = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       speciesId = Value(speciesId),
       light = Value(light),
       potSize = Value(potSize),
       soilType = Value(soilType);
  static Insertable<PlantEntry> custom({
    Expression<String>? id,
    Expression<String>? speciesId,
    Expression<String>? nickname,
    Expression<String>? scientificName,
    Expression<bool>? indoor,
    Expression<String>? light,
    Expression<String>? potSize,
    Expression<String>? soilType,
    Expression<DateTime>? acquiredAt,
    Expression<String>? photoPath,
    Expression<int>? customWaterIntervalDays,
    Expression<int>? customFeedIntervalDays,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (speciesId != null) 'species_id': speciesId,
      if (nickname != null) 'nickname': nickname,
      if (scientificName != null) 'scientific_name': scientificName,
      if (indoor != null) 'indoor': indoor,
      if (light != null) 'light': light,
      if (potSize != null) 'pot_size': potSize,
      if (soilType != null) 'soil_type': soilType,
      if (acquiredAt != null) 'acquired_at': acquiredAt,
      if (photoPath != null) 'photo_path': photoPath,
      if (customWaterIntervalDays != null)
        'custom_water_interval_days': customWaterIntervalDays,
      if (customFeedIntervalDays != null)
        'custom_feed_interval_days': customFeedIntervalDays,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlantsCompanion copyWith({
    Value<String>? id,
    Value<String>? speciesId,
    Value<String?>? nickname,
    Value<String?>? scientificName,
    Value<bool>? indoor,
    Value<String>? light,
    Value<String>? potSize,
    Value<String>? soilType,
    Value<DateTime?>? acquiredAt,
    Value<String?>? photoPath,
    Value<int?>? customWaterIntervalDays,
    Value<int?>? customFeedIntervalDays,
    Value<int>? rowid,
  }) {
    return PlantsCompanion(
      id: id ?? this.id,
      speciesId: speciesId ?? this.speciesId,
      nickname: nickname ?? this.nickname,
      scientificName: scientificName ?? this.scientificName,
      indoor: indoor ?? this.indoor,
      light: light ?? this.light,
      potSize: potSize ?? this.potSize,
      soilType: soilType ?? this.soilType,
      acquiredAt: acquiredAt ?? this.acquiredAt,
      photoPath: photoPath ?? this.photoPath,
      customWaterIntervalDays:
          customWaterIntervalDays ?? this.customWaterIntervalDays,
      customFeedIntervalDays:
          customFeedIntervalDays ?? this.customFeedIntervalDays,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (speciesId.present) {
      map['species_id'] = Variable<String>(speciesId.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (scientificName.present) {
      map['scientific_name'] = Variable<String>(scientificName.value);
    }
    if (indoor.present) {
      map['indoor'] = Variable<bool>(indoor.value);
    }
    if (light.present) {
      map['light'] = Variable<String>(light.value);
    }
    if (potSize.present) {
      map['pot_size'] = Variable<String>(potSize.value);
    }
    if (soilType.present) {
      map['soil_type'] = Variable<String>(soilType.value);
    }
    if (acquiredAt.present) {
      map['acquired_at'] = Variable<DateTime>(acquiredAt.value);
    }
    if (photoPath.present) {
      map['photo_path'] = Variable<String>(photoPath.value);
    }
    if (customWaterIntervalDays.present) {
      map['custom_water_interval_days'] = Variable<int>(
        customWaterIntervalDays.value,
      );
    }
    if (customFeedIntervalDays.present) {
      map['custom_feed_interval_days'] = Variable<int>(
        customFeedIntervalDays.value,
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantsCompanion(')
          ..write('id: $id, ')
          ..write('speciesId: $speciesId, ')
          ..write('nickname: $nickname, ')
          ..write('scientificName: $scientificName, ')
          ..write('indoor: $indoor, ')
          ..write('light: $light, ')
          ..write('potSize: $potSize, ')
          ..write('soilType: $soilType, ')
          ..write('acquiredAt: $acquiredAt, ')
          ..write('photoPath: $photoPath, ')
          ..write('customWaterIntervalDays: $customWaterIntervalDays, ')
          ..write('customFeedIntervalDays: $customFeedIntervalDays, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, TaskEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _plantIdMeta = const VerificationMeta(
    'plantId',
  );
  @override
  late final GeneratedColumn<String> plantId = GeneratedColumn<String>(
    'plant_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
    'due_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
    'state',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: Constant('upcoming'),
  );
  static const VerificationMeta _suggestedIntervalMeta = const VerificationMeta(
    'suggestedInterval',
  );
  @override
  late final GeneratedColumn<int> suggestedInterval = GeneratedColumn<int>(
    'suggested_interval',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    plantId,
    type,
    dueAt,
    state,
    suggestedInterval,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('plant_id')) {
      context.handle(
        _plantIdMeta,
        plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('due_at')) {
      context.handle(
        _dueAtMeta,
        dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta),
      );
    } else if (isInserting) {
      context.missing(_dueAtMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
        _stateMeta,
        state.isAcceptableOrUnknown(data['state']!, _stateMeta),
      );
    }
    if (data.containsKey('suggested_interval')) {
      context.handle(
        _suggestedIntervalMeta,
        suggestedInterval.isAcceptableOrUnknown(
          data['suggested_interval']!,
          _suggestedIntervalMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      plantId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}plant_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      dueAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_at'],
      )!,
      state: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}state'],
      )!,
      suggestedInterval: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}suggested_interval'],
      ),
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class TaskEntry extends DataClass implements Insertable<TaskEntry> {
  final String id;
  final String plantId;
  final String type;
  final DateTime dueAt;
  final String state;
  final int? suggestedInterval;
  const TaskEntry({
    required this.id,
    required this.plantId,
    required this.type,
    required this.dueAt,
    required this.state,
    this.suggestedInterval,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['plant_id'] = Variable<String>(plantId);
    map['type'] = Variable<String>(type);
    map['due_at'] = Variable<DateTime>(dueAt);
    map['state'] = Variable<String>(state);
    if (!nullToAbsent || suggestedInterval != null) {
      map['suggested_interval'] = Variable<int>(suggestedInterval);
    }
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      plantId: Value(plantId),
      type: Value(type),
      dueAt: Value(dueAt),
      state: Value(state),
      suggestedInterval: suggestedInterval == null && nullToAbsent
          ? const Value.absent()
          : Value(suggestedInterval),
    );
  }

  factory TaskEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskEntry(
      id: serializer.fromJson<String>(json['id']),
      plantId: serializer.fromJson<String>(json['plantId']),
      type: serializer.fromJson<String>(json['type']),
      dueAt: serializer.fromJson<DateTime>(json['dueAt']),
      state: serializer.fromJson<String>(json['state']),
      suggestedInterval: serializer.fromJson<int?>(json['suggestedInterval']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'plantId': serializer.toJson<String>(plantId),
      'type': serializer.toJson<String>(type),
      'dueAt': serializer.toJson<DateTime>(dueAt),
      'state': serializer.toJson<String>(state),
      'suggestedInterval': serializer.toJson<int?>(suggestedInterval),
    };
  }

  TaskEntry copyWith({
    String? id,
    String? plantId,
    String? type,
    DateTime? dueAt,
    String? state,
    Value<int?> suggestedInterval = const Value.absent(),
  }) => TaskEntry(
    id: id ?? this.id,
    plantId: plantId ?? this.plantId,
    type: type ?? this.type,
    dueAt: dueAt ?? this.dueAt,
    state: state ?? this.state,
    suggestedInterval: suggestedInterval.present
        ? suggestedInterval.value
        : this.suggestedInterval,
  );
  TaskEntry copyWithCompanion(TasksCompanion data) {
    return TaskEntry(
      id: data.id.present ? data.id.value : this.id,
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      type: data.type.present ? data.type.value : this.type,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      state: data.state.present ? data.state.value : this.state,
      suggestedInterval: data.suggestedInterval.present
          ? data.suggestedInterval.value
          : this.suggestedInterval,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskEntry(')
          ..write('id: $id, ')
          ..write('plantId: $plantId, ')
          ..write('type: $type, ')
          ..write('dueAt: $dueAt, ')
          ..write('state: $state, ')
          ..write('suggestedInterval: $suggestedInterval')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, plantId, type, dueAt, state, suggestedInterval);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskEntry &&
          other.id == this.id &&
          other.plantId == this.plantId &&
          other.type == this.type &&
          other.dueAt == this.dueAt &&
          other.state == this.state &&
          other.suggestedInterval == this.suggestedInterval);
}

class TasksCompanion extends UpdateCompanion<TaskEntry> {
  final Value<String> id;
  final Value<String> plantId;
  final Value<String> type;
  final Value<DateTime> dueAt;
  final Value<String> state;
  final Value<int?> suggestedInterval;
  final Value<int> rowid;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.plantId = const Value.absent(),
    this.type = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.state = const Value.absent(),
    this.suggestedInterval = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TasksCompanion.insert({
    required String id,
    required String plantId,
    required String type,
    required DateTime dueAt,
    this.state = const Value.absent(),
    this.suggestedInterval = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       plantId = Value(plantId),
       type = Value(type),
       dueAt = Value(dueAt);
  static Insertable<TaskEntry> custom({
    Expression<String>? id,
    Expression<String>? plantId,
    Expression<String>? type,
    Expression<DateTime>? dueAt,
    Expression<String>? state,
    Expression<int>? suggestedInterval,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plantId != null) 'plant_id': plantId,
      if (type != null) 'type': type,
      if (dueAt != null) 'due_at': dueAt,
      if (state != null) 'state': state,
      if (suggestedInterval != null) 'suggested_interval': suggestedInterval,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TasksCompanion copyWith({
    Value<String>? id,
    Value<String>? plantId,
    Value<String>? type,
    Value<DateTime>? dueAt,
    Value<String>? state,
    Value<int?>? suggestedInterval,
    Value<int>? rowid,
  }) {
    return TasksCompanion(
      id: id ?? this.id,
      plantId: plantId ?? this.plantId,
      type: type ?? this.type,
      dueAt: dueAt ?? this.dueAt,
      state: state ?? this.state,
      suggestedInterval: suggestedInterval ?? this.suggestedInterval,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (plantId.present) {
      map['plant_id'] = Variable<String>(plantId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (suggestedInterval.present) {
      map['suggested_interval'] = Variable<int>(suggestedInterval.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('plantId: $plantId, ')
          ..write('type: $type, ')
          ..write('dueAt: $dueAt, ')
          ..write('state: $state, ')
          ..write('suggestedInterval: $suggestedInterval, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JournalEntriesTable extends JournalEntries
    with TableInfo<$JournalEntriesTable, JournalEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JournalEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _plantIdMeta = const VerificationMeta(
    'plantId',
  );
  @override
  late final GeneratedColumn<String> plantId = GeneratedColumn<String>(
    'plant_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _photoPathMeta = const VerificationMeta(
    'photoPath',
  );
  @override
  late final GeneratedColumn<String> photoPath = GeneratedColumn<String>(
    'photo_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    plantId,
    createdAt,
    content,
    photoPath,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'journal_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<JournalEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('plant_id')) {
      context.handle(
        _plantIdMeta,
        plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta),
      );
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('photo_path')) {
      context.handle(
        _photoPathMeta,
        photoPath.isAcceptableOrUnknown(data['photo_path']!, _photoPathMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JournalEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JournalEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      plantId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}plant_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      )!,
      photoPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_path'],
      ),
    );
  }

  @override
  $JournalEntriesTable createAlias(String alias) {
    return $JournalEntriesTable(attachedDatabase, alias);
  }
}

class JournalEntry extends DataClass implements Insertable<JournalEntry> {
  final String id;
  final String plantId;
  final DateTime createdAt;
  final String content;
  final String? photoPath;
  const JournalEntry({
    required this.id,
    required this.plantId,
    required this.createdAt,
    required this.content,
    this.photoPath,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['plant_id'] = Variable<String>(plantId);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['content'] = Variable<String>(content);
    if (!nullToAbsent || photoPath != null) {
      map['photo_path'] = Variable<String>(photoPath);
    }
    return map;
  }

  JournalEntriesCompanion toCompanion(bool nullToAbsent) {
    return JournalEntriesCompanion(
      id: Value(id),
      plantId: Value(plantId),
      createdAt: Value(createdAt),
      content: Value(content),
      photoPath: photoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPath),
    );
  }

  factory JournalEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JournalEntry(
      id: serializer.fromJson<String>(json['id']),
      plantId: serializer.fromJson<String>(json['plantId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      content: serializer.fromJson<String>(json['content']),
      photoPath: serializer.fromJson<String?>(json['photoPath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'plantId': serializer.toJson<String>(plantId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'content': serializer.toJson<String>(content),
      'photoPath': serializer.toJson<String?>(photoPath),
    };
  }

  JournalEntry copyWith({
    String? id,
    String? plantId,
    DateTime? createdAt,
    String? content,
    Value<String?> photoPath = const Value.absent(),
  }) => JournalEntry(
    id: id ?? this.id,
    plantId: plantId ?? this.plantId,
    createdAt: createdAt ?? this.createdAt,
    content: content ?? this.content,
    photoPath: photoPath.present ? photoPath.value : this.photoPath,
  );
  JournalEntry copyWithCompanion(JournalEntriesCompanion data) {
    return JournalEntry(
      id: data.id.present ? data.id.value : this.id,
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      content: data.content.present ? data.content.value : this.content,
      photoPath: data.photoPath.present ? data.photoPath.value : this.photoPath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JournalEntry(')
          ..write('id: $id, ')
          ..write('plantId: $plantId, ')
          ..write('createdAt: $createdAt, ')
          ..write('content: $content, ')
          ..write('photoPath: $photoPath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, plantId, createdAt, content, photoPath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JournalEntry &&
          other.id == this.id &&
          other.plantId == this.plantId &&
          other.createdAt == this.createdAt &&
          other.content == this.content &&
          other.photoPath == this.photoPath);
}

class JournalEntriesCompanion extends UpdateCompanion<JournalEntry> {
  final Value<String> id;
  final Value<String> plantId;
  final Value<DateTime> createdAt;
  final Value<String> content;
  final Value<String?> photoPath;
  final Value<int> rowid;
  const JournalEntriesCompanion({
    this.id = const Value.absent(),
    this.plantId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.content = const Value.absent(),
    this.photoPath = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JournalEntriesCompanion.insert({
    required String id,
    required String plantId,
    required DateTime createdAt,
    required String content,
    this.photoPath = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       plantId = Value(plantId),
       createdAt = Value(createdAt),
       content = Value(content);
  static Insertable<JournalEntry> custom({
    Expression<String>? id,
    Expression<String>? plantId,
    Expression<DateTime>? createdAt,
    Expression<String>? content,
    Expression<String>? photoPath,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plantId != null) 'plant_id': plantId,
      if (createdAt != null) 'created_at': createdAt,
      if (content != null) 'content': content,
      if (photoPath != null) 'photo_path': photoPath,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JournalEntriesCompanion copyWith({
    Value<String>? id,
    Value<String>? plantId,
    Value<DateTime>? createdAt,
    Value<String>? content,
    Value<String?>? photoPath,
    Value<int>? rowid,
  }) {
    return JournalEntriesCompanion(
      id: id ?? this.id,
      plantId: plantId ?? this.plantId,
      createdAt: createdAt ?? this.createdAt,
      content: content ?? this.content,
      photoPath: photoPath ?? this.photoPath,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (plantId.present) {
      map['plant_id'] = Variable<String>(plantId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (photoPath.present) {
      map['photo_path'] = Variable<String>(photoPath.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JournalEntriesCompanion(')
          ..write('id: $id, ')
          ..write('plantId: $plantId, ')
          ..write('createdAt: $createdAt, ')
          ..write('content: $content, ')
          ..write('photoPath: $photoPath, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PlantsTable plants = $PlantsTable(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $JournalEntriesTable journalEntries = $JournalEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    plants,
    tasks,
    journalEntries,
  ];
}

typedef $$PlantsTableCreateCompanionBuilder =
    PlantsCompanion Function({
      required String id,
      required String speciesId,
      Value<String?> nickname,
      Value<String?> scientificName,
      Value<bool> indoor,
      required String light,
      required String potSize,
      required String soilType,
      Value<DateTime?> acquiredAt,
      Value<String?> photoPath,
      Value<int?> customWaterIntervalDays,
      Value<int?> customFeedIntervalDays,
      Value<int> rowid,
    });
typedef $$PlantsTableUpdateCompanionBuilder =
    PlantsCompanion Function({
      Value<String> id,
      Value<String> speciesId,
      Value<String?> nickname,
      Value<String?> scientificName,
      Value<bool> indoor,
      Value<String> light,
      Value<String> potSize,
      Value<String> soilType,
      Value<DateTime?> acquiredAt,
      Value<String?> photoPath,
      Value<int?> customWaterIntervalDays,
      Value<int?> customFeedIntervalDays,
      Value<int> rowid,
    });

class $$PlantsTableFilterComposer
    extends Composer<_$AppDatabase, $PlantsTable> {
  $$PlantsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get speciesId => $composableBuilder(
    column: $table.speciesId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get indoor => $composableBuilder(
    column: $table.indoor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get light => $composableBuilder(
    column: $table.light,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get potSize => $composableBuilder(
    column: $table.potSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get soilType => $composableBuilder(
    column: $table.soilType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get acquiredAt => $composableBuilder(
    column: $table.acquiredAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get customWaterIntervalDays => $composableBuilder(
    column: $table.customWaterIntervalDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get customFeedIntervalDays => $composableBuilder(
    column: $table.customFeedIntervalDays,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PlantsTableOrderingComposer
    extends Composer<_$AppDatabase, $PlantsTable> {
  $$PlantsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get speciesId => $composableBuilder(
    column: $table.speciesId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get indoor => $composableBuilder(
    column: $table.indoor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get light => $composableBuilder(
    column: $table.light,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get potSize => $composableBuilder(
    column: $table.potSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get soilType => $composableBuilder(
    column: $table.soilType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get acquiredAt => $composableBuilder(
    column: $table.acquiredAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get customWaterIntervalDays => $composableBuilder(
    column: $table.customWaterIntervalDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get customFeedIntervalDays => $composableBuilder(
    column: $table.customFeedIntervalDays,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PlantsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlantsTable> {
  $$PlantsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get speciesId =>
      $composableBuilder(column: $table.speciesId, builder: (column) => column);

  GeneratedColumn<String> get nickname =>
      $composableBuilder(column: $table.nickname, builder: (column) => column);

  GeneratedColumn<String> get scientificName => $composableBuilder(
    column: $table.scientificName,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get indoor =>
      $composableBuilder(column: $table.indoor, builder: (column) => column);

  GeneratedColumn<String> get light =>
      $composableBuilder(column: $table.light, builder: (column) => column);

  GeneratedColumn<String> get potSize =>
      $composableBuilder(column: $table.potSize, builder: (column) => column);

  GeneratedColumn<String> get soilType =>
      $composableBuilder(column: $table.soilType, builder: (column) => column);

  GeneratedColumn<DateTime> get acquiredAt => $composableBuilder(
    column: $table.acquiredAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get photoPath =>
      $composableBuilder(column: $table.photoPath, builder: (column) => column);

  GeneratedColumn<int> get customWaterIntervalDays => $composableBuilder(
    column: $table.customWaterIntervalDays,
    builder: (column) => column,
  );

  GeneratedColumn<int> get customFeedIntervalDays => $composableBuilder(
    column: $table.customFeedIntervalDays,
    builder: (column) => column,
  );
}

class $$PlantsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlantsTable,
          PlantEntry,
          $$PlantsTableFilterComposer,
          $$PlantsTableOrderingComposer,
          $$PlantsTableAnnotationComposer,
          $$PlantsTableCreateCompanionBuilder,
          $$PlantsTableUpdateCompanionBuilder,
          (PlantEntry, BaseReferences<_$AppDatabase, $PlantsTable, PlantEntry>),
          PlantEntry,
          PrefetchHooks Function()
        > {
  $$PlantsTableTableManager(_$AppDatabase db, $PlantsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PlantsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PlantsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PlantsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> speciesId = const Value.absent(),
                Value<String?> nickname = const Value.absent(),
                Value<String?> scientificName = const Value.absent(),
                Value<bool> indoor = const Value.absent(),
                Value<String> light = const Value.absent(),
                Value<String> potSize = const Value.absent(),
                Value<String> soilType = const Value.absent(),
                Value<DateTime?> acquiredAt = const Value.absent(),
                Value<String?> photoPath = const Value.absent(),
                Value<int?> customWaterIntervalDays = const Value.absent(),
                Value<int?> customFeedIntervalDays = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlantsCompanion(
                id: id,
                speciesId: speciesId,
                nickname: nickname,
                scientificName: scientificName,
                indoor: indoor,
                light: light,
                potSize: potSize,
                soilType: soilType,
                acquiredAt: acquiredAt,
                photoPath: photoPath,
                customWaterIntervalDays: customWaterIntervalDays,
                customFeedIntervalDays: customFeedIntervalDays,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String speciesId,
                Value<String?> nickname = const Value.absent(),
                Value<String?> scientificName = const Value.absent(),
                Value<bool> indoor = const Value.absent(),
                required String light,
                required String potSize,
                required String soilType,
                Value<DateTime?> acquiredAt = const Value.absent(),
                Value<String?> photoPath = const Value.absent(),
                Value<int?> customWaterIntervalDays = const Value.absent(),
                Value<int?> customFeedIntervalDays = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlantsCompanion.insert(
                id: id,
                speciesId: speciesId,
                nickname: nickname,
                scientificName: scientificName,
                indoor: indoor,
                light: light,
                potSize: potSize,
                soilType: soilType,
                acquiredAt: acquiredAt,
                photoPath: photoPath,
                customWaterIntervalDays: customWaterIntervalDays,
                customFeedIntervalDays: customFeedIntervalDays,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PlantsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlantsTable,
      PlantEntry,
      $$PlantsTableFilterComposer,
      $$PlantsTableOrderingComposer,
      $$PlantsTableAnnotationComposer,
      $$PlantsTableCreateCompanionBuilder,
      $$PlantsTableUpdateCompanionBuilder,
      (PlantEntry, BaseReferences<_$AppDatabase, $PlantsTable, PlantEntry>),
      PlantEntry,
      PrefetchHooks Function()
    >;
typedef $$TasksTableCreateCompanionBuilder =
    TasksCompanion Function({
      required String id,
      required String plantId,
      required String type,
      required DateTime dueAt,
      Value<String> state,
      Value<int?> suggestedInterval,
      Value<int> rowid,
    });
typedef $$TasksTableUpdateCompanionBuilder =
    TasksCompanion Function({
      Value<String> id,
      Value<String> plantId,
      Value<String> type,
      Value<DateTime> dueAt,
      Value<String> state,
      Value<int?> suggestedInterval,
      Value<int> rowid,
    });

class $$TasksTableFilterComposer extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get plantId => $composableBuilder(
    column: $table.plantId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get suggestedInterval => $composableBuilder(
    column: $table.suggestedInterval,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TasksTableOrderingComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get plantId => $composableBuilder(
    column: $table.plantId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get state => $composableBuilder(
    column: $table.state,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get suggestedInterval => $composableBuilder(
    column: $table.suggestedInterval,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get plantId =>
      $composableBuilder(column: $table.plantId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<int> get suggestedInterval => $composableBuilder(
    column: $table.suggestedInterval,
    builder: (column) => column,
  );
}

class $$TasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TasksTable,
          TaskEntry,
          $$TasksTableFilterComposer,
          $$TasksTableOrderingComposer,
          $$TasksTableAnnotationComposer,
          $$TasksTableCreateCompanionBuilder,
          $$TasksTableUpdateCompanionBuilder,
          (TaskEntry, BaseReferences<_$AppDatabase, $TasksTable, TaskEntry>),
          TaskEntry,
          PrefetchHooks Function()
        > {
  $$TasksTableTableManager(_$AppDatabase db, $TasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> plantId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> dueAt = const Value.absent(),
                Value<String> state = const Value.absent(),
                Value<int?> suggestedInterval = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TasksCompanion(
                id: id,
                plantId: plantId,
                type: type,
                dueAt: dueAt,
                state: state,
                suggestedInterval: suggestedInterval,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String plantId,
                required String type,
                required DateTime dueAt,
                Value<String> state = const Value.absent(),
                Value<int?> suggestedInterval = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TasksCompanion.insert(
                id: id,
                plantId: plantId,
                type: type,
                dueAt: dueAt,
                state: state,
                suggestedInterval: suggestedInterval,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TasksTable,
      TaskEntry,
      $$TasksTableFilterComposer,
      $$TasksTableOrderingComposer,
      $$TasksTableAnnotationComposer,
      $$TasksTableCreateCompanionBuilder,
      $$TasksTableUpdateCompanionBuilder,
      (TaskEntry, BaseReferences<_$AppDatabase, $TasksTable, TaskEntry>),
      TaskEntry,
      PrefetchHooks Function()
    >;
typedef $$JournalEntriesTableCreateCompanionBuilder =
    JournalEntriesCompanion Function({
      required String id,
      required String plantId,
      required DateTime createdAt,
      required String content,
      Value<String?> photoPath,
      Value<int> rowid,
    });
typedef $$JournalEntriesTableUpdateCompanionBuilder =
    JournalEntriesCompanion Function({
      Value<String> id,
      Value<String> plantId,
      Value<DateTime> createdAt,
      Value<String> content,
      Value<String?> photoPath,
      Value<int> rowid,
    });

class $$JournalEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $JournalEntriesTable> {
  $$JournalEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get plantId => $composableBuilder(
    column: $table.plantId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnFilters(column),
  );
}

class $$JournalEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $JournalEntriesTable> {
  $$JournalEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get plantId => $composableBuilder(
    column: $table.plantId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$JournalEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $JournalEntriesTable> {
  $$JournalEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get plantId =>
      $composableBuilder(column: $table.plantId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<String> get photoPath =>
      $composableBuilder(column: $table.photoPath, builder: (column) => column);
}

class $$JournalEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $JournalEntriesTable,
          JournalEntry,
          $$JournalEntriesTableFilterComposer,
          $$JournalEntriesTableOrderingComposer,
          $$JournalEntriesTableAnnotationComposer,
          $$JournalEntriesTableCreateCompanionBuilder,
          $$JournalEntriesTableUpdateCompanionBuilder,
          (
            JournalEntry,
            BaseReferences<_$AppDatabase, $JournalEntriesTable, JournalEntry>,
          ),
          JournalEntry,
          PrefetchHooks Function()
        > {
  $$JournalEntriesTableTableManager(
    _$AppDatabase db,
    $JournalEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JournalEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JournalEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JournalEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> plantId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> content = const Value.absent(),
                Value<String?> photoPath = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalEntriesCompanion(
                id: id,
                plantId: plantId,
                createdAt: createdAt,
                content: content,
                photoPath: photoPath,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String plantId,
                required DateTime createdAt,
                required String content,
                Value<String?> photoPath = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JournalEntriesCompanion.insert(
                id: id,
                plantId: plantId,
                createdAt: createdAt,
                content: content,
                photoPath: photoPath,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$JournalEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $JournalEntriesTable,
      JournalEntry,
      $$JournalEntriesTableFilterComposer,
      $$JournalEntriesTableOrderingComposer,
      $$JournalEntriesTableAnnotationComposer,
      $$JournalEntriesTableCreateCompanionBuilder,
      $$JournalEntriesTableUpdateCompanionBuilder,
      (
        JournalEntry,
        BaseReferences<_$AppDatabase, $JournalEntriesTable, JournalEntry>,
      ),
      JournalEntry,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PlantsTableTableManager get plants =>
      $$PlantsTableTableManager(_db, _db.plants);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
  $$JournalEntriesTableTableManager get journalEntries =>
      $$JournalEntriesTableTableManager(_db, _db.journalEntries);
}
