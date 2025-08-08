// lib/app/router.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// *** Add this import so JournalEntry is in scope ***
import 'package:garden_assistant/data/db/database.dart' show JournalEntry;

import 'package:garden_assistant/data/models/plant_species.dart';
import 'package:garden_assistant/features/tasks/today_screen.dart';
import 'package:garden_assistant/features/plants/owned_plants_screen.dart';
import 'package:garden_assistant/features/plants/catalog_screen.dart';
import 'package:garden_assistant/features/plants/add_plant_screen.dart';
import 'package:garden_assistant/features/plants/plant_detail_screen.dart';
import 'package:garden_assistant/features/plants/edit_plant_screen.dart';
import 'package:garden_assistant/features/journal/journal_screen.dart';
import 'package:garden_assistant/features/journal/add_edit_journal_entry_screen.dart';
import 'package:garden_assistant/features/settings/settings_screen.dart';

// map location → tab index (now index 1 is "My Plants")
int _locToIndex(String loc) {
  if (loc.startsWith('/plants/') && loc != '/plants') return 1;
  switch (loc) {
    case '/today':
      return 0;
    case '/plants':
      return 1;
    case '/add':
      return 2;
    case '/journal':
      return 3;
    case '/settings':
      return 4;
    default:
      return 0;
  }
}

final router = GoRouter(
  initialLocation: '/today',
  routes: [
    ShellRoute(
      builder: (ctx, state, child) => Scaffold(
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _locToIndex(state.location),
          type: BottomNavigationBarType.fixed,
          onTap: (i) {
            switch (i) {
              case 0:
                ctx.go('/today');
                break;
              case 1:
                ctx.go('/plants');
                break;
              case 2:
                ctx.go('/add');
                break;
              case 3:
                ctx.go('/journal');
                break;
              case 4:
                ctx.go('/settings');
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Today'),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_florist),
              label: 'Plants',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Journal'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
      routes: [
        GoRoute(path: '/today', builder: (c, s) => const TodayScreen()),
        GoRoute(path: '/plants', builder: (c, s) => const OwnedPlantsScreen()),
        GoRoute(
          path: '/plants/:id',
          builder: (c, s) =>
              PlantDetailScreen(plantId: s.pathParameters['id']!),
        ),
        GoRoute(
          path: '/edit/:id',
          builder: (c, s) => EditPlantScreen(plantId: s.pathParameters['id']!),
        ),
        GoRoute(path: '/catalog', builder: (c, s) => const CatalogScreen()),
        GoRoute(
          path: '/add',
          builder: (c, s) => AddPlantScreen(species: s.extra as PlantSpecies?),
        ),

        // All journal entries
        GoRoute(path: '/journal', builder: (c, s) => const JournalScreen()),

        // Journal for a specific plant
        GoRoute(
          path: '/journal/:plantId',
          builder: (c, s) =>
              JournalScreen(plantId: s.pathParameters['plantId']),
        ),

        // Add **or** edit a journal entry
        GoRoute(
          path: '/journal/:plantId/add',
          builder: (c, s) {
            final pid = s.pathParameters['plantId']!;
            final existing = s.extra as JournalEntry?;
            return AddEditJournalEntryScreen(plantId: pid, existing: existing);
          },
        ),

        GoRoute(path: '/settings', builder: (c, s) => const SettingsScreen()),
      ],
    ),
  ],
);
