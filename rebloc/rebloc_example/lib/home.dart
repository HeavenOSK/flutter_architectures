import 'package:flutter/material.dart';
import 'package:rebloc/rebloc.dart';
import 'package:rebloc_example/rebloc/app_state.dart';
import 'package:rebloc_example/rebloc/counter/counter_actions.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ViewModelSubscriber<AppState, _CounterViewModel>(
              converter: (state) => _CounterViewModel.create(state),
              builder: (context, dispatcher, viewModel) {
                return Text(
                  '${viewModel.counter}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: DispatchSubscriber<AppState>(
        builder: (context, dispatcher) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                tooltip: 'Increment',
                child: const Text('＋', style: TextStyle(fontSize: 20)),
                onPressed: () => dispatcher(IncrementAction()),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 4),
              ),
              FloatingActionButton(
                tooltip: 'Decrement',
                child: const Text('−', style: TextStyle(fontSize: 20)),
                onPressed: () => dispatcher(DecrementAction()),
              ),
            ],
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _CounterViewModel {
  _CounterViewModel(this.counter);

  factory _CounterViewModel.create(AppState state) {
    return _CounterViewModel(state.counter);
  }

  final int counter;
}
