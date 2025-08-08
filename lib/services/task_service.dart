import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import 'package:garden_assistant/data/db/database.dart';
import 'package:garden_assistant/data/models/task.dart';
import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/services/catalog_service.dart';

class TaskService {
  final AppDatabase _db;
  final CatalogService _catalog;
  final _uuid = const Uuid();

  TaskService(this._db, this._catalog);

  /// Stream tasks due up to [end], excluding those done.
  Stream<List<Task>> watchTasksDueUpTo(DateTime end) {
    final query = _db.select(_db.tasks)
      ..where((t) => t.dueAt.isSmallerOrEqualValue(end))
      ..where((t) => t.state.isNotIn(const ['done']))
      ..orderBy([(t) => OrderingTerm(expression: t.dueAt)]);
    return query.watch().map((rows) => rows.map(_fromEntry).toList());
  }

  /// Stream all tasks for a given plant.
  Stream<List<Task>> watchTasksForPlant(String plantId) {
    final query = _db.select(_db.tasks)
      ..where((t) => t.plantId.equals(plantId))
      ..orderBy([(t) => OrderingTerm(expression: t.dueAt)]);
    return query.watch().map((rows) => rows.map(_fromEntry).toList());
  }

  /// Mark a task done and schedule its next occurrence.
  Future<void> completeTask(String taskId) async {
    final entry = await (_db.select(
      _db.tasks,
    )..where((t) => t.id.equals(taskId))).getSingle();

    // 1) mark done
    await (_db.update(_db.tasks)..where((t) => t.id.equals(taskId))).write(
      TasksCompanion(state: const Value('done')),
    );

    // 2) schedule next
    final interval = entry.suggestedInterval ?? 0;
    if (interval > 0) {
      final nextDue = DateTime.now().add(Duration(days: interval));
      await _db
          .into(_db.tasks)
          .insert(
            TasksCompanion(
              id: Value(_uuid.v4()),
              plantId: Value(entry.plantId),
              type: Value(entry.type),
              dueAt: Value(nextDue),
              suggestedInterval: Value(interval),
              // state defaults to 'upcoming' if omitted in companion
            ),
          );
    }
  }

  /// Postpone a task by [days] and mark it snoozed.
  Future<void> snoozeTask(String taskId, {int days = 1}) async {
    final entry = await (_db.select(
      _db.tasks,
    )..where((t) => t.id.equals(taskId))).getSingle();

    final newDue = entry.dueAt.add(Duration(days: days));
    await (_db.update(_db.tasks)..where((t) => t.id.equals(taskId))).write(
      TasksCompanion(dueAt: Value(newDue), state: const Value('snoozed')),
    );
  }

  /// Create the first water/feed tasks for a new [plant].
  Future<void> createInitialTasks(Plant plant) async {
    final now = DateTime.now();

    int waterInterval;
    int feedInterval;

    if (plant.speciesId == 'custom') {
      // use the custom values (must be non-null if validated)
      waterInterval = plant.customWaterIntervalDays ?? 7;
      feedInterval = plant.customFeedIntervalDays ?? 30;
    } else {
      final species = await _catalog.getSpeciesById(plant.speciesId);
      if (species == null) return;
      waterInterval = species.baselineWaterDays;
      feedInterval = species.baselineFeedDays;
    }

    final waterDue = now.add(Duration(days: waterInterval));
    final feedDue = now.add(Duration(days: feedInterval));

    // insert water task
    await _db
        .into(_db.tasks)
        .insert(
          TasksCompanion(
            id: Value(_uuid.v4()),
            plantId: Value(plant.id),
            type: Value('water'),
            dueAt: Value(waterDue),
            suggestedInterval: Value(waterInterval),
          ),
        );

    // insert feed task
    await _db
        .into(_db.tasks)
        .insert(
          TasksCompanion(
            id: Value(_uuid.v4()),
            plantId: Value(plant.id),
            type: Value('feed'),
            dueAt: Value(feedDue),
            suggestedInterval: Value(feedInterval),
          ),
        );
  }

  /// Helper to map a DB row to your model.
  Task _fromEntry(TaskEntry e) => Task(
    id: e.id,
    plantId: e.plantId,
    type: e.type,
    dueAt: e.dueAt,
    state: e.state,
    suggestedIntervalDays: e.suggestedInterval,
  );
}
