import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'database.g.dart';

@DataClassName('PlantEntry')
class Plants extends Table {
  TextColumn get id => text()();
  TextColumn get speciesId => text()();
  TextColumn get nickname => text().nullable()();
  TextColumn get scientificName => text().named('scientific_name').nullable()();
  BoolColumn get indoor => boolean().withDefault(Constant(true))();
  TextColumn get light => text()();
  TextColumn get potSize => text()();
  TextColumn get soilType => text()();
  DateTimeColumn get acquiredAt => dateTime().nullable()();
  TextColumn get photoPath => text().nullable()();
  IntColumn get customWaterIntervalDays =>
      integer().named('custom_water_interval_days').nullable()();
  IntColumn get customFeedIntervalDays =>
      integer().named('custom_feed_interval_days').nullable()();

  @override
  Set<Column>? get primaryKey => {id};
}

// Define Tasks table similarly...
@DataClassName('TaskEntry')
class Tasks extends Table {
  TextColumn get id => text()();
  TextColumn get plantId => text()();
  TextColumn get type => text()();
  DateTimeColumn get dueAt => dateTime()();
  TextColumn get state => text().withDefault(Constant('upcoming'))();
  IntColumn get suggestedInterval => integer().nullable()();

  @override
  Set<Column>? get primaryKey => {id};
}

@DataClassName('JournalEntry')
class JournalEntries extends Table {
  TextColumn get id => text()();
  TextColumn get plantId => text().named('plant_id')();
  DateTimeColumn get createdAt => dateTime().named('created_at')();
  TextColumn get content => text()();
  TextColumn get photoPath => text().named('photo_path').nullable()();

  @override
  Set<Column>? get primaryKey => {id};
}

@DriftDatabase(tables: [Plants, Tasks, JournalEntries])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3; // bumped from 2 → 3

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (m, from, to) async {
      if (from == 2) {
        await m.createTable(journalEntries);
      }
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
