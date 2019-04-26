class AppState {
  AppState(this.counter);

  factory AppState.initialize() => AppState(0);

  final int counter;
}
