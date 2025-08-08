// lib/features/plants/edit_plant_screen.dart

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/app/providers.dart';
import 'package:garden_assistant/utils/extensions.dart';

class EditPlantScreen extends ConsumerWidget {
  final String plantId;
  const EditPlantScreen({Key? key, required this.plantId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantAsync = ref.watch(plantByIdProvider(plantId));

    return plantAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text('Error: $e'))),
      data: (plant) => _EditPlantForm(plant: plant),
    );
  }
}

class _EditPlantForm extends ConsumerStatefulWidget {
  final Plant plant;
  const _EditPlantForm({required this.plant});

  @override
  ConsumerState<_EditPlantForm> createState() => _EditPlantFormState();
}

class _EditPlantFormState extends ConsumerState<_EditPlantForm> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nickCtrl;
  late final TextEditingController _sciCtrl;
  late final TextEditingController _waterCtrl;
  late final TextEditingController _feedCtrl;

  late bool _indoor;
  late String _light;
  late String _potSize;
  late String _soilType;

  bool _didInit = false; // <— only seed once

  @override
  void initState() {
    super.initState();
    final p = widget.plant;

    _nickCtrl = TextEditingController(text: p.nickname ?? '');
    _sciCtrl = TextEditingController();
    _waterCtrl = TextEditingController();
    _feedCtrl = TextEditingController();

    _indoor = p.indoor;
    _light = p.light;
    _potSize = p.potSize;
    _soilType = p.soilType;
  }

  @override
  void dispose() {
    _nickCtrl.dispose();
    _sciCtrl.dispose();
    _waterCtrl.dispose();
    _feedCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final plant = widget.plant;
    final speciesAsync = ref.watch(speciesByIdProvider(plant.speciesId));

    return speciesAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text('Error: $e'))),
      data: (species) {
        // 1) seed the controllers once
        if (!_didInit) {
          if (plant.speciesId == 'custom') {
            // custom plant: use stored values
            _sciCtrl.text = plant.scientificName ?? '';
            _waterCtrl.text = (plant.customWaterIntervalDays ?? 0).toString();
            _feedCtrl.text = (plant.customFeedIntervalDays ?? 0).toString();
          } else if (species != null) {
            // catalog plant: show species defaults (unless overridden by custom)
            _sciCtrl.text = species.scientificName;
            _waterCtrl.text =
                (plant.customWaterIntervalDays ?? species.baselineWaterDays)
                    .toString();
            _feedCtrl.text =
                (plant.customFeedIntervalDays ?? species.baselineFeedDays)
                    .toString();
          }
          _didInit = true;
        }

        // 2) build the form
        return Scaffold(
          appBar: AppBar(title: const Text('Edit Plant')),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // ... photo preview and spacing ...

                  // Nickname
                  TextFormField(
                    controller: _nickCtrl,
                    decoration: const InputDecoration(labelText: 'Nickname'),
                  ),
                  const SizedBox(height: 12),

                  // Scientific Name
                  TextFormField(
                    controller: _sciCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Scientific Name',
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Water interval
                  TextFormField(
                    controller: _waterCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Water every … days',
                      suffixText: 'days',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (v) {
                      final n = int.tryParse(v ?? '');
                      return (n == null || n < 0)
                          ? 'Enter a non‐negative number'
                          : null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Feed interval
                  TextFormField(
                    controller: _feedCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Feed every … days',
                      suffixText: 'days',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (v) {
                      final n = int.tryParse(v ?? '');
                      return (n == null || n < 0)
                          ? 'Enter a non‐negative number'
                          : null;
                    },
                  ),

                  const SizedBox(height: 24),

                  // … indoor, light, potSize, soilType controls …
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (!_formKey.currentState!.validate()) return;

                        final updated = plant.copyWith(
                          nickname: _nickCtrl.text.isNotEmpty
                              ? _nickCtrl.text
                              : null,
                          scientificName: _sciCtrl.text.isNotEmpty
                              ? _sciCtrl.text
                              : null,
                          customWaterIntervalDays: int.parse(_waterCtrl.text),
                          customFeedIntervalDays: int.parse(_feedCtrl.text),
                          indoor: _indoor,
                          light: _light,
                          potSize: _potSize,
                          soilType: _soilType,
                        );
                        await ref
                            .read(plantServiceProvider)
                            .updatePlant(updated);
                        context.go('/plants/${plant.id}');
                      },
                      child: const Text('Save Changes'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
