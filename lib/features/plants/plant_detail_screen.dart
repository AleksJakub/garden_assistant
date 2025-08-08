// lib/features/plants/plant_detail_screen.dart

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:garden_assistant/app/providers.dart';
import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/utils/date_extensions.dart';
import 'package:garden_assistant/utils/extensions.dart';

class PlantDetailScreen extends ConsumerWidget {
  final String plantId;
  const PlantDetailScreen({Key? key, required this.plantId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantAsync = ref.watch(plantByIdProvider(plantId));
    final tasksAsync = ref.watch(tasksByPlantProvider(plantId));

    return plantAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) =>
          Scaffold(body: Center(child: Text('Error loading plant: $e'))),
      data: (plant) {
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(onPressed: () => context.pop()),
            title: Text(plant.nickname ?? plant.speciesId.capitalize()),
            actions: [
              // Create a new journal entry for this plant
              IconButton(
                icon: const Icon(Icons.add_comment),
                tooltip: 'New Journal Entry',
                onPressed: () {
                  context.go('/journal/${plant.id}/add');
                },
              ),

              // Edit plant
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: 'Edit',
                onPressed: () {
                  context.go('/edit/${plant.id}');
                },
              ),

              // Delete plant
              IconButton(
                icon: const Icon(Icons.delete),
                tooltip: 'Delete',
                onPressed: () async {
                  final confirm = await showDialog<bool>(
                    context: context,
                    builder: (dialogContext) => AlertDialog(
                      title: const Text('Delete Plant?'),
                      content: const Text(
                        'This will remove the plant and all its tasks.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () =>
                              Navigator.of(dialogContext).pop(false),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.of(dialogContext).pop(true),
                          child: const Text(
                            'Delete',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );

                  if (confirm == true) {
                    await ref.read(plantServiceProvider).deletePlant(plant.id);
                    context.go('/plants');
                  }
                },
              ),
            ],
          ),

          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Photo or placeholder
                if (plant.photoPath != null)
                  Image.file(
                    File(plant.photoPath!),
                    height: 240,
                    fit: BoxFit.cover,
                  )
                else
                  Container(
                    height: 240,
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.local_florist,
                      size: 100,
                      color: Colors.grey,
                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Scientific name
                      if (plant.scientificName != null)
                        Text(
                          plant.scientificName!,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontStyle: FontStyle.italic),
                        ),
                      const SizedBox(height: 12),

                      // Info cards
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          _InfoCard(
                            label: 'Light',
                            value: plant.light.capitalize(),
                          ),
                          _InfoCard(
                            label: 'Soil',
                            value: plant.soilType.capitalize(),
                          ),
                          _InfoCard(label: 'Pot Size', value: plant.potSize),
                          if (plant.acquiredAt != null)
                            _InfoCard(
                              label: 'Acquired',
                              value: plant.acquiredAt!.formattedDate(),
                            ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Upcoming tasks
                      Text(
                        'Tasks',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      tasksAsync.when(
                        data: (tasks) {
                          if (tasks.isEmpty) {
                            return const Text(
                              'No tasks scheduled.',
                              textAlign: TextAlign.center,
                            );
                          }
                          return ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: tasks.length,
                            separatorBuilder: (_, __) => const Divider(),
                            itemBuilder: (_, i) {
                              final t = tasks[i];
                              return ListTile(
                                leading: Icon(
                                  t.type == 'water'
                                      ? Icons.opacity
                                      : Icons.local_pizza,
                                  color: Theme.of(context).primaryColor,
                                ),
                                title: Text(t.type.capitalize()),
                                subtitle: Text(
                                  'Due ${t.dueAt.formattedDate()}',
                                ),
                                trailing: t.state == 'upcoming'
                                    ? IconButton(
                                        icon: const Icon(
                                          Icons.check_circle_outline,
                                        ),
                                        onPressed: () => ref
                                            .read(taskServiceProvider)
                                            .completeTask(t.id),
                                      )
                                    : null,
                              );
                            },
                          );
                        },
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (e, _) => Text('Error loading tasks: $e'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Simple card widget for showing label/value pairs.
class _InfoCard extends StatelessWidget {
  final String label;
  final String value;
  const _InfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 4),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
