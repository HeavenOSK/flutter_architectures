import 'package:rebloc/rebloc.dart';
import 'package:rebloc_example/rebloc/actions.dart';
import 'package:rebloc_example/rebloc/app_state.dart';

class CounterBloc extends SimpleBloc<AppState> {
  @override
  AppState reducer(AppState state, Action action) {
    if (action is IncrementAction) {
      final oldCounter = state.counter;
      final newCounter = oldCounter + 1;
      return state.copyWith(counter: newCounter);
    }
    return state;
  }
}
