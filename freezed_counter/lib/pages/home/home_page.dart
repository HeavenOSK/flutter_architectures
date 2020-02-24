import 'package:dot_of/dot_of.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter/counter_notifier.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return ChangeNotifierProvider(
      create: (_) => CounterNotifier(),
      child: const MyHomePage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
            _CounterText(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterNotifier>().increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  const _CounterText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterNotifier>();
    return Text(
      '${counter.value.counter}',
      style: context.theme.textTheme.display1,
    );
  }
}
