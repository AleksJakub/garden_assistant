import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:garden_assistant/data/models/plant_species.dart';

class CatalogService {
  Future<List<PlantSpecies>> loadSpecies() async {
    final raw = await rootBundle.loadString(
      'assets/catalog/plant_catalog.json',
    );
    final list = (json.decode(raw) as List).cast<Map<String, dynamic>>();
    return list.map(PlantSpecies.fromJson).toList();
  }

  /// Find one species by ID (or null if missing).
  Future<PlantSpecies?> getSpeciesById(String id) async {
    final list = await loadSpecies();
    try {
      return list.firstWhere((s) => s.id == id);
    } catch (_) {
      return null;
    }
  }
}
