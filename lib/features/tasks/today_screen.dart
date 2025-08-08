import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:garden_assistant/utils/date_extensions.dart';
import 'package:garden_assistant/utils/extensions.dart';
import 'package:garden_assistant/data/models/task.dart';
import 'package:garden_assistant/app/providers.dart'; // assume tasksProvider is defined here

class TodayScreen extends ConsumerWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsync = ref.watch(
      tasksProvider,
    ); // StreamProvider or FutureProvider<List<Task>>

    return Scaffold(
      appBar: AppBar(title: const Text('Today\'s Tasks')),
      body: tasksAsync.when(
        data: (tasks) {
          if (tasks.isEmpty) {
            return const Center(child: Text('No tasks for today 🎉'));
          }
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, i) {
              final t = tasks[i];
              return Dismissible(
                key: ValueKey(t.id),
                background: Container(
                  color: Colors.green,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 16),
                  child: const Icon(Icons.check, color: Colors.white),
                ),
                secondaryBackground: Container(
                  color: Colors.orange,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 16),
                  child: const Icon(Icons.snooze, color: Colors.white),
                ),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ref.read(taskServiceProvider).completeTask(t.id);
                  } else {
                    ref.read(taskServiceProvider).snoozeTask(t.id, days: 1);
                  }
                },
                child: ListTile(
                  title: Text(
                    '${t.type.capitalize()} • ${ref.read(plantNameByIdProvider(t.plantId))}',
                  ),
                  subtitle: Text('Due ${t.dueAt.formattedDate()}'),
                  onTap: () => context.go('/plants/${t.plantId}'),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
