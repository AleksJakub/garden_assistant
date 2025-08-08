// lib/features/plants/add_plant_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import 'package:garden_assistant/data/models/plant_species.dart';
import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/app/providers.dart';

class AddPlantScreen extends ConsumerStatefulWidget {
  /// Passed when coming from PlantListScreen
  final PlantSpecies? species;
  const AddPlantScreen({Key? key, this.species}) : super(key: key);

  @override
  ConsumerState<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends ConsumerState<AddPlantScreen> {
  final _formKey = GlobalKey<FormState>();
  final _uuid = const Uuid();

  // Shared fields
  bool _indoor = true;
  String _light = 'medium';
  String _potSize = 'M';
  String _soilType = 'regular';

  // Custom‐mode only
  bool _customMode = false;
  final _commonNameCtrl = TextEditingController();
  final _scientificNameCtrl = TextEditingController();
  final _waterIntervalCtrl = TextEditingController(text: '7');
  final _feedIntervalCtrl = TextEditingController(text: '30');

  @override
  void dispose() {
    _commonNameCtrl.dispose();
    _scientificNameCtrl.dispose();
    _waterIntervalCtrl.dispose();
    _feedIntervalCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final species = widget.species;

    // If neither species nor customMode, show the two‐button chooser:
    if (species == null && !_customMode) {
      return Scaffold(
        appBar: AppBar(title: const Text('Add Plant')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.search),
                  label: const Text('Search Catalog'),
                  onPressed: () => context.go('/catalog'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add Custom Plant'),
                  onPressed: () => setState(() => _customMode = true),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    // Otherwise show the form (catalog or custom)
    final isCatalog = species != null;
    final waterIn = isCatalog
        ? species!.baselineWaterDays
        : int.tryParse(_waterIntervalCtrl.text) ?? 0;
    final feedIn = isCatalog
        ? species!.baselineFeedDays
        : int.tryParse(_feedIntervalCtrl.text) ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isCatalog ? 'Configure ${species!.commonName}' : 'Add Custom Plant',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // If catalog, show preview; if custom, show name & care inputs
              if (isCatalog) ...[
                Text(
                  'Species: ${species!.commonName}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Card(
                  color: Colors.green.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'First water in $waterIn days\nFirst feed in $feedIn days',
                    ),
                  ),
                ),
              ] else ...[
                TextFormField(
                  controller: _commonNameCtrl,
                  decoration: const InputDecoration(labelText: 'Common Name'),
                  validator: (v) =>
                      (v?.trim().isEmpty ?? true) ? 'Required' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _scientificNameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Scientific Name',
                  ),
                ),
                const SizedBox(height: 12),

                // Baseline intervals
                TextFormField(
                  controller: _waterIntervalCtrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Water every … days',
                    suffixText: 'days',
                  ),
                  validator: (v) {
                    final n = int.tryParse(v ?? '');
                    return (n == null || n <= 0)
                        ? 'Enter a positive number'
                        : null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _feedIntervalCtrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Feed every … days',
                    suffixText: 'days',
                  ),
                  validator: (v) {
                    final n = int.tryParse(v ?? '');
                    return (n == null || n <= 0)
                        ? 'Enter a positive number'
                        : null;
                  },
                ),
                const SizedBox(height: 24),
              ],

              // Shared environment fields
              SwitchListTile(
                title: const Text('Indoor'),
                value: _indoor,
                onChanged: (v) => setState(() => _indoor = v),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _light,
                decoration: const InputDecoration(labelText: 'Light'),
                items: ['low', 'medium', 'high']
                    .map((l) => DropdownMenuItem(value: l, child: Text(l)))
                    .toList(),
                onChanged: (v) => setState(() => _light = v!),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _potSize,
                decoration: const InputDecoration(labelText: 'Pot Size'),
                items: ['S', 'M', 'L']
                    .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                    .toList(),
                onChanged: (v) => setState(() => _potSize = v!),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: _soilType,
                decoration: const InputDecoration(labelText: 'Soil Type'),
                items: ['fast', 'regular', 'retentive']
                    .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                    .toList(),
                onChanged: (v) => setState(() => _soilType = v!),
              ),

              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Save Plant'),
                  onPressed: () async {
                    if (!_formKey.currentState!.validate()) return;

                    final newPlant = Plant(
                      id: _uuid.v4(),
                      speciesId: isCatalog ? species!.id : 'custom',
                      nickname: isCatalog ? null : _commonNameCtrl.text.trim(),
                      scientificName: isCatalog
                          ? null
                          : _scientificNameCtrl.text.trim(),
                      indoor: _indoor,
                      light: _light,
                      potSize: _potSize,
                      soilType: _soilType,
                      acquiredAt: DateTime.now(),
                      customWaterIntervalDays: isCatalog
                          ? null
                          : int.parse(_waterIntervalCtrl.text),
                      customFeedIntervalDays: isCatalog
                          ? null
                          : int.parse(_feedIntervalCtrl.text),
                    );

                    // Persist + schedule
                    await ref.read(plantServiceProvider).addPlant(newPlant);

                    // Jump to its detail page
                    context.go('/plants/${newPlant.id}');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
