// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  /// Unique ID for this task
  String get id => throw _privateConstructorUsedError;

  /// The plant this task is for
  String get plantId => throw _privateConstructorUsedError;

  /// Task type: 'water' | 'feed' | 'repot' | 'prune' | etc.
  String get type => throw _privateConstructorUsedError;

  /// When the task is due
  DateTime get dueAt => throw _privateConstructorUsedError;

  /// 'upcoming' | 'due' | 'overdue' | 'done' | 'snoozed'
  String get state => throw _privateConstructorUsedError;

  /// The interval (in days) suggested by the scheduler
  int? get suggestedIntervalDays => throw _privateConstructorUsedError;

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({
    String id,
    String plantId,
    String type,
    DateTime dueAt,
    String state,
    int? suggestedIntervalDays,
  });
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantId = null,
    Object? type = null,
    Object? dueAt = null,
    Object? state = null,
    Object? suggestedIntervalDays = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            plantId: null == plantId
                ? _value.plantId
                : plantId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            dueAt: null == dueAt
                ? _value.dueAt
                : dueAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String,
            suggestedIntervalDays: freezed == suggestedIntervalDays
                ? _value.suggestedIntervalDays
                : suggestedIntervalDays // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
    _$TaskImpl value,
    $Res Function(_$TaskImpl) then,
  ) = __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String plantId,
    String type,
    DateTime dueAt,
    String state,
    int? suggestedIntervalDays,
  });
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
    : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantId = null,
    Object? type = null,
    Object? dueAt = null,
    Object? state = null,
    Object? suggestedIntervalDays = freezed,
  }) {
    return _then(
      _$TaskImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        plantId: null == plantId
            ? _value.plantId
            : plantId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        dueAt: null == dueAt
            ? _value.dueAt
            : dueAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String,
        suggestedIntervalDays: freezed == suggestedIntervalDays
            ? _value.suggestedIntervalDays
            : suggestedIntervalDays // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl({
    required this.id,
    required this.plantId,
    required this.type,
    required this.dueAt,
    this.state = 'upcoming',
    this.suggestedIntervalDays,
  });

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  /// Unique ID for this task
  @override
  final String id;

  /// The plant this task is for
  @override
  final String plantId;

  /// Task type: 'water' | 'feed' | 'repot' | 'prune' | etc.
  @override
  final String type;

  /// When the task is due
  @override
  final DateTime dueAt;

  /// 'upcoming' | 'due' | 'overdue' | 'done' | 'snoozed'
  @override
  @JsonKey()
  final String state;

  /// The interval (in days) suggested by the scheduler
  @override
  final int? suggestedIntervalDays;

  @override
  String toString() {
    return 'Task(id: $id, plantId: $plantId, type: $type, dueAt: $dueAt, state: $state, suggestedIntervalDays: $suggestedIntervalDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.suggestedIntervalDays, suggestedIntervalDays) ||
                other.suggestedIntervalDays == suggestedIntervalDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    plantId,
    type,
    dueAt,
    state,
    suggestedIntervalDays,
  );

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task({
    required final String id,
    required final String plantId,
    required final String type,
    required final DateTime dueAt,
    final String state,
    final int? suggestedIntervalDays,
  }) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  /// Unique ID for this task
  @override
  String get id;

  /// The plant this task is for
  @override
  String get plantId;

  /// Task type: 'water' | 'feed' | 'repot' | 'prune' | etc.
  @override
  String get type;

  /// When the task is due
  @override
  DateTime get dueAt;

  /// 'upcoming' | 'due' | 'overdue' | 'done' | 'snoozed'
  @override
  String get state;

  /// The interval (in days) suggested by the scheduler
  @override
  int? get suggestedIntervalDays;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
