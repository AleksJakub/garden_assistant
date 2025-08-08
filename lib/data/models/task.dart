import 'package:freezed_annotation/freezed_annotation.dart';
part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    /// Unique ID for this task
    required String id,

    /// The plant this task is for
    required String plantId,

    /// Task type: 'water' | 'feed' | 'repot' | 'prune' | etc.
    required String type,

    /// When the task is due
    required DateTime dueAt,

    /// 'upcoming' | 'due' | 'overdue' | 'done' | 'snoozed'
    @Default('upcoming') String state,

    /// The interval (in days) suggested by the scheduler
    int? suggestedIntervalDays,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
