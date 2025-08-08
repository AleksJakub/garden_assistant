// lib/services/plant_service.dart

import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import 'package:garden_assistant/data/db/database.dart';
import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/services/task_service.dart';

class PlantService {
  final AppDatabase _db;
  final TaskService _taskService;
  final _uuid = const Uuid();

  PlantService(this._db, this._taskService);

  /// Inserts a new plant and enqueues its initial tasks.
  Future<void> addPlant(Plant plant) async {
    final companion = PlantsCompanion(
      id: Value(plant.id),
      speciesId: Value(plant.speciesId),
      nickname: plant.nickname != null
          ? Value(plant.nickname!)
          : const Value.absent(),
      scientificName: plant.scientificName != null
          ? Value(plant.scientificName!)
          : const Value.absent(),
      indoor: Value(plant.indoor),
      light: Value(plant.light),
      potSize: Value(plant.potSize),
      soilType: Value(plant.soilType),
      acquiredAt: plant.acquiredAt != null
          ? Value(plant.acquiredAt!)
          : const Value.absent(),
      photoPath: plant.photoPath != null
          ? Value(plant.photoPath!)
          : const Value.absent(),
      customWaterIntervalDays: plant.customWaterIntervalDays != null
          ? Value(plant.customWaterIntervalDays!)
          : const Value.absent(),
      customFeedIntervalDays: plant.customFeedIntervalDays != null
          ? Value(plant.customFeedIntervalDays!)
          : const Value.absent(),
    );

    await _db.into(_db.plants).insert(companion);
    await _taskService.createInitialTasks(plant);
  }

  /// Streams a single plant by ID.
  Stream<Plant> watchPlant(String id) {
    final query = (_db.select(_db.plants)..where((tbl) => tbl.id.equals(id)));
    return query.watchSingle().map((entry) {
      return Plant(
        id: entry.id,
        nickname: entry.nickname,
        scientificName: entry.scientificName,
        speciesId: entry.speciesId,
        indoor: entry.indoor,
        light: entry.light,
        potSize: entry.potSize,
        soilType: entry.soilType,
        acquiredAt: entry.acquiredAt,
        photoPath: entry.photoPath,
        customWaterIntervalDays: entry.customWaterIntervalDays,
        customFeedIntervalDays: entry.customFeedIntervalDays,
      );
    });
  }

  /// (Optional) stream all plants.
  Stream<List<Plant>> watchAllPlants() {
    return _db.select(_db.plants).watch().map((rows) {
      return rows
          .map(
            (entry) => Plant(
              id: entry.id,
              nickname: entry.nickname,
              scientificName: entry.scientificName,
              speciesId: entry.speciesId,
              indoor: entry.indoor,
              light: entry.light,
              potSize: entry.potSize,
              soilType: entry.soilType,
              acquiredAt: entry.acquiredAt,
              photoPath: entry.photoPath,
              customWaterIntervalDays: entry.customWaterIntervalDays,
              customFeedIntervalDays: entry.customFeedIntervalDays,
            ),
          )
          .toList();
    });
  }

  /// Deletes a plant and all its associated tasks.
  Future<void> deletePlant(String plantId) async {
    await _db.transaction(() async {
      // remove tasks first (if you don't have cascade)
      await (_db.delete(
        _db.tasks,
      )..where((t) => t.plantId.equals(plantId))).go();
      // then remove the plant
      await (_db.delete(_db.plants)..where((p) => p.id.equals(plantId))).go();
    });
  }

  Future<void> updatePlant(Plant plant) async {
    final companion = PlantsCompanion(
      id: Value(plant.id), // must include PK
      speciesId: Value(plant.speciesId),
      nickname: plant.nickname != null
          ? Value(plant.nickname!)
          : const Value.absent(),
      scientificName: plant.scientificName != null
          ? Value(plant.scientificName!)
          : const Value.absent(),
      indoor: Value(plant.indoor),
      light: Value(plant.light),
      potSize: Value(plant.potSize),
      soilType: Value(plant.soilType),
      acquiredAt: plant.acquiredAt != null
          ? Value(plant.acquiredAt!)
          : const Value.absent(),
      photoPath: plant.photoPath != null
          ? Value(plant.photoPath!)
          : const Value.absent(),
      customWaterIntervalDays: plant.customWaterIntervalDays != null
          ? Value(plant.customWaterIntervalDays!)
          : const Value.absent(),
      customFeedIntervalDays: plant.customFeedIntervalDays != null
          ? Value(plant.customFeedIntervalDays!)
          : const Value.absent(),
    );

    await (_db.update(
      _db.plants,
    )..where((t) => t.id.equals(plant.id))).write(companion);
  }
}
