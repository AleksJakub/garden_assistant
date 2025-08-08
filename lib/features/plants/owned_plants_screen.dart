// lib/features/plants/owned_plants_screen.dart

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:garden_assistant/data/models/plant.dart';
import 'package:garden_assistant/app/providers.dart';

class OwnedPlantsScreen extends ConsumerWidget {
  const OwnedPlantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantsAsync = ref.watch(watchAllPlantsProvider); // stream of all owned plants

    return Scaffold(
      appBar: AppBar(title: const Text('My Plants')),
      body: plantsAsync.when(
        data: (plants) {
          if (plants.isEmpty) {
            return const Center(
              child: Text('No plants yet. Tap Add to get started!'),
            );
          }
          return ListView.separated(
            itemCount: plants.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (ctx, i) {
              final p = plants[i];
              final nextWater = p.acquiredAt == null
                  ? null
                  : p.acquiredAt!
                      .add(Duration(days: p.customWaterIntervalDays ?? 0))
                      .toLocal();
              return ListTile(
                leading: p.photoPath != null
                    ? Image.file(
                        File(p.photoPath!),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )
                    : const Icon(Icons.local_florist),
                title: Text(p.nickname ?? p.speciesId),
                subtitle: Text(
                  'Next water: ${nextWater?.toString().split(' ').first ?? ''}',
                ),
                onTap: () => context.go('/plants/${p.id}'),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
