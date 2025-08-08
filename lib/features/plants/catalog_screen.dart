// lib/features/plants/catalog_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:garden_assistant/data/models/plant_species.dart';
import 'package:garden_assistant/app/providers.dart';

class CatalogScreen extends ConsumerWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speciesAsync = ref.watch(speciesListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Browse Catalog')),
      body: speciesAsync.when(
        data: (species) => ListView.separated(
          itemCount: species.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (ctx, i) {
            final s = species[i];
            return ListTile(
              leading: s.image != null
                  ? Image.network(
                      s.image!,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.local_florist),
              title: Text(s.commonName),
              subtitle: Text(s.scientificName),
              onTap: () {
                // Pass the chosen species into the Add screen
                context.go('/add', extra: s);
              },
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error loading catalog: $e')),
      ),
    );
  }
}
