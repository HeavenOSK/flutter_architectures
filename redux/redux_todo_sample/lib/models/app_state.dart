import 'package:equatable/equatable.dart';
import 'package:redux_todo_sample/models/models.dart';

class AppState extends Equatable {
  final bool isLoading;
  final List<Todo> todos;
  final AppTab activeTab;
  final VisibilityFilter activeFilter;

  AppState({
    this.isLoading = false,
    this.todos = const [],
    this.activeFilter = VisibilityFilter.all,
    this.activeTab = AppTab.todos,
  });

  factory AppState.loading() => AppState(isLoading: true);
}
