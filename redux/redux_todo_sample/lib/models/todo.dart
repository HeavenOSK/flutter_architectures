import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final bool complete;
  final DateTime createdDate;
  final String note;
  final String task;

  Todo(
    this.task, {
    this.complete = false,
    this.note,
  }) : createdDate = DateTime.now();

  Todo copyWith({bool complete, String note, String task}) {
    return Todo(
      task ?? this.task,
      note: note ?? this.note,
      complete: complete ?? this.complete,
    );
  }

  @override
  String toString() {
    return 'Todo{complete: $complete, task:$task, note: $note, createdDate: $createdDate}';
  }
}
