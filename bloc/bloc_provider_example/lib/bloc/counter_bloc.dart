import 'dart:async';

import 'package:bloc_provider/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

abstract class CounterControl {}

class CounterIncrement extends CounterControl {}

class CounterDecrement extends CounterControl {}

class CounterBloc implements Bloc {
  CounterBloc() {
    _counterController.stream.listen(_handleControl);
  }

  final _counterController = StreamController<CounterControl>();
  final _count = BehaviorSubject<int>.seeded(0);

  Sink<void> get counterController => _counterController.sink;

  ValueObservable<int> get count => _count;

  void _handleControl(CounterControl control) {
    if (control is CounterIncrement) {
      _handleIncrement();
    } else if (control is CounterDecrement) {
      _handleDecrement();
    }
  }

  void _handleIncrement() {
    final oldCount = _count.value;
    final newCount = oldCount + 1;
    _count.add(newCount);
  }

  void _handleDecrement() {
    final oldCount = _count.value;
    final newCount = oldCount - 1;
    _count.add(newCount);
  }

  @override
  void dispose() {
    _counterController.close();
    _count.close();
  }
}
