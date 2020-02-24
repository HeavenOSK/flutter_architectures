import 'package:flutter/foundation.dart';

import 'counter.dart';

export 'counter.dart';

class CounterNotifier extends ValueNotifier<Counter> {
  CounterNotifier() : super(const Counter(counter: 0));

  void increment() {
    value = value.copyWith(counter: value.counter + 1);
  }
}
