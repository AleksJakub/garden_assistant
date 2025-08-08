// lib/features/journal/journal_screen.dart

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:garden_assistant/app/providers.dart';
import 'package:garden_assistant/data/db/database.dart';
import 'package:garden_assistant/features/journal/add_edit_journal_entry_screen.dart';

class JournalScreen extends ConsumerWidget {
  /// If null → “All Entries”, otherwise → only this plant’s journal
  final String? plantId;

  const JournalScreen({Key? key, this.plantId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entriesAsync = plantId == null
        ? ref.watch(allJournalProvider)
        : ref.watch(journalByPlantProvider(plantId!));

    return Scaffold(
      appBar: AppBar(
        title: Text(plantId == null ? 'All Journal Entries' : 'My Journal'),
      ),
      body: entriesAsync.when(
        data: (entries) {
          if (entries.isEmpty) {
            return const Center(child: Text('No entries yet'));
          }
          return ListView.separated(
            itemCount: entries.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (ctx, i) {
              final entry = entries[i];

              // Determine the plant ID used for navigation:
              final entryPlantId = plantId ?? entry.plantId;

              return Dismissible(
                key: ValueKey(entry.id),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 16),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (_) {
                  ref.read(journalServiceProvider).deleteEntry(entry.id);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Entry deleted')),
                  );
                },
                child: ListTile(
                  leading: entry.photoPath != null
                      ? Image.file(
                          File(entry.photoPath!),
                          width: 56,
                          height: 56,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.notes),
                  title: Text(
                    entry.content,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    entry.createdAt.toLocal().toString().split(' ')[0],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    tooltip: 'Edit Entry',
                    onPressed: () {
                      context.go('/journal/$entryPlantId/add', extra: entry);
                    },
                  ),
                  onTap: () {
                    context.go('/journal/$entryPlantId/add', extra: entry);
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),

      // Only show the “+” when we know which plant we’re journaling
      floatingActionButton: plantId != null
          ? FloatingActionButton(
              tooltip: 'New Entry',
              onPressed: () => context.go('/journal/$plantId/add'),
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
