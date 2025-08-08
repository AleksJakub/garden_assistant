import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import 'package:garden_assistant/data/db/database.dart';

class JournalService {
  final AppDatabase _db;
  final _uuid = const Uuid();

  JournalService(this._db);

  /// Stream all entries, newest first.
  Stream<List<JournalEntry>> watchAllEntries() {
    final q = _db.select(_db.journalEntries)
      ..orderBy([
        (j) => OrderingTerm(expression: j.createdAt, mode: OrderingMode.desc),
      ]);
    return q.watch();
  }

  /// Stream entries for one plant.
  Stream<List<JournalEntry>> watchEntriesForPlant(String plantId) {
    final q = _db.select(_db.journalEntries)
      ..where((j) => j.plantId.equals(plantId))
      ..orderBy([
        (j) => OrderingTerm(expression: j.createdAt, mode: OrderingMode.desc),
      ]);
    return q.watch();
  }

  Future<void> addEntry({
    required String plantId,
    required String content,
    String? photoPath,
  }) {
    return _db
        .into(_db.journalEntries)
        .insert(
          JournalEntriesCompanion.insert(
            id: _uuid.v4(),
            plantId: plantId,
            createdAt: DateTime.now(),
            content: content,
            photoPath: Value(photoPath),
          ),
        );
  }

  /// Update an existing entry.
  Future<void> updateEntry({
    required String id,
    required String content,
    String? photoPath,
  }) {
    return (_db.update(
      _db.journalEntries,
    )..where((j) => j.id.equals(id))).write(
      JournalEntriesCompanion(
        content: Value(content),
        photoPath: Value(photoPath),
      ),
    );
  }

  /// Delete an entry.
  Future<void> deleteEntry(String entryId) =>
      (_db.delete(_db.journalEntries)..where((j) => j.id.equals(entryId))).go();
}
