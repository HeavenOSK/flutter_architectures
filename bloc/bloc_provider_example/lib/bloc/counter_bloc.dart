import 'dart:async';

import 'package:bloc_provider/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class CounterBloc implements Bloc {
  CounterBloc() {
    //todo: Replace implementation with pipe()
    _incrementController.stream.listen(_handleIncrement);
  }

  final _incrementController = StreamController<void>();
  final _counter = BehaviorSubject<int>.seeded(0);

  Sink<void> get incrementController => _incrementController.sink;
  ValueObservable<int> get counter => _counter;

  void _handleIncrement(_) {
    final currentCount = _counter.value;
    final newCount = currentCount + 1;
    _counter.add(newCount);
  }

  @override
  void dispose() {
    _incrementController.close();
    _counter.close();
  }
}
