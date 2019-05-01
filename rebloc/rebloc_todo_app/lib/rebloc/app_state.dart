import 'package:meta/meta.dart';

class AppState {
  const AppState({
    @required this.counter,
  });

  const AppState.initialState() : counter = 0;

  final int counter;

  AppState copyWith({int counter}) {
    return AppState(
      counter: counter ?? this.counter,
    );
  }
}
