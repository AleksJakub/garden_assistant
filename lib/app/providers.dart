// lib/app/providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garden_assistant/data/db/database.dart';
import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/data/models/task.dart';
import 'package:garden_assistant/data/models/plant_species.dart';
import 'package:garden_assistant/services/catalog_service.dart';
import 'package:garden_assistant/services/plant_service.dart';
import 'package:garden_assistant/services/task_service.dart';
import 'package:garden_assistant/services/journal_service.dart';

/// 1) Database
final dbProvider = Provider<AppDatabase>((ref) => AppDatabase());

/// 2) Services
final catalogServiceProvider = Provider((_) => CatalogService());

final taskServiceProvider = Provider(
  (ref) =>
      TaskService(ref.watch(dbProvider), ref.watch(catalogServiceProvider)),
);

final plantServiceProvider = Provider(
  (ref) => PlantService(ref.watch(dbProvider), ref.watch(taskServiceProvider)),
);

/// 3) Catalog
/// — full list of species
final speciesListProvider = FutureProvider<List<PlantSpecies>>((ref) {
  return ref.read(catalogServiceProvider).loadSpecies();
});

/// — lookup a single species by id
final speciesByIdProvider = FutureProvider.family<PlantSpecies?, String>((
  ref,
  id,
) {
  return ref.read(catalogServiceProvider).getSpeciesById(id);
});

/// 4) Today’s tasks (due now or overdue)
final tasksProvider = StreamProvider<List<Task>>((ref) {
  final svc = ref.read(taskServiceProvider);
  return svc.watchTasksDueUpTo(DateTime.now().add(const Duration(days: 1)));
});

/// 5) Tasks per plant
final tasksByPlantProvider = StreamProvider.family<List<Task>, String>((
  ref,
  plantId,
) {
  return ref.read(taskServiceProvider).watchTasksForPlant(plantId);
});

/// 6) Plant details by ID
final plantByIdProvider = StreamProvider.family<Plant, String>((ref, id) {
  return ref.read(plantServiceProvider).watchPlant(id);
});

/// 7) Quick lookups
/// — plant name (nickname or species fallback)
final plantNameByIdProvider = Provider.family<String, String>((ref, id) {
  final plant = ref.watch(plantByIdProvider(id)).value;
  if (plant == null) return id;
  return plant.nickname ?? plant.speciesId;
});

/// 8. All owned plants
final watchAllPlantsProvider = StreamProvider<List<Plant>>((ref) {
  return ref.watch(plantServiceProvider).watchAllPlants();
});

/// — species common name (via speciesByIdProvider)
final speciesNameByIdProvider = Provider.family<String, String>((ref, id) {
  final asyncSpecies = ref.watch(speciesByIdProvider(id));
  final species = asyncSpecies.value;
  return species?.commonName ?? id;
});

/// 8️⃣ Journal
final journalServiceProvider = Provider(
  (ref) => JournalService(ref.watch(dbProvider)),
);

/// All entries
final allJournalProvider = StreamProvider<List<JournalEntry>>((ref) {
  return ref.watch(journalServiceProvider).watchAllEntries();
});

/// Entries per plant
final journalByPlantProvider =
    StreamProvider.family<List<JournalEntry>, String>((ref, plantId) {
      return ref.watch(journalServiceProvider).watchEntriesForPlant(plantId);
    });
