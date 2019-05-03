import 'package:rebloc/rebloc.dart';
import 'package:rebloc_example/rebloc/app_state.dart';
import 'package:rebloc_example/rebloc/counter/counter_actions.dart';

class CounterBloc extends SimpleBloc<AppState> {
  @override
  AppState reducer(AppState state, Action action) {
    if (action is IncrementAction) {
      final newCounter = state.counter + 1;
      return state.copyWith(counter: newCounter);
    } else if (action is DecrementAction) {
      final newCounter = state.counter - 1;
      return state.copyWith(counter: newCounter);
    }
    return state;
  }
}
