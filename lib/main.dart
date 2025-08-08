// lib/main.dart
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // ← import Riverpod
import 'app/router.dart';
import 'app/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      // ← wrap here
      child: GardenAssistantApp(),
    ),
  );
}

class GardenAssistantApp extends StatelessWidget {
  const GardenAssistantApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Garden Assistant',
      theme: AppTheme.light(),
      routerConfig: router,
    );
  }
}
