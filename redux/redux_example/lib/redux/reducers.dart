import 'package:redux/redux.dart';
import 'package:redux_example/redux/actions.dart';
import 'package:redux_example/redux/state.dart';

AppState appReducer(AppState state, action) => AppState(
      incrementReducer(state.counter, action),
    );

final Reducer<int> incrementReducer = combineReducers([
  TypedReducer<int, IncrementAction>(_increment),
  TypedReducer<int, DecrementAction>(_decrement),
]);

int _increment(int counter, IncrementAction action) => counter += 1;
int _decrement(int counter, DecrementAction action) => counter -= 1;
