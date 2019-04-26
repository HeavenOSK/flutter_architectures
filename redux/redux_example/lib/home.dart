import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_example/redux/actions.dart';
import 'package:redux_example/redux/state.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) =>
      StoreConnector<AppState, _CounterViewModel>(
        converter: (Store<AppState> store) => _CounterViewModel.create(store),
        builder: (context, _viewModel) {
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
                  Text(
                    '${_viewModel.counter}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _viewModel.onIncrement,
                  tooltip: 'Increment',
                  child: const Text('＋', style: TextStyle(fontSize: 20)),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 4),
                ),
                FloatingActionButton(
                  onPressed: _viewModel.onDecrement,
                  tooltip: 'Increment',
                  child: const Text('−', style: TextStyle(fontSize: 20)),
                ),
              ],
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        },
      );
}

class _CounterViewModel {
  const _CounterViewModel(this.counter, this.onIncrement, this.onDecrement);

  factory _CounterViewModel.create(Store<AppState> store) {
    final counter = store.state.counter;
    final onIncrement = () {
      store.dispatch(IncrementAction());
    };
    final onDecrement = () {
      store.dispatch(DecrementAction());
    };
    return _CounterViewModel(counter, onIncrement, onDecrement);
  }

  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
}
