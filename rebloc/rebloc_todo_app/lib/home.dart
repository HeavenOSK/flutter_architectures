import 'package:flutter/material.dart';
import 'package:rebloc/rebloc.dart';
import 'package:rebloc_todo_app/rebloc/actions.dart';
import 'package:rebloc_todo_app/rebloc/app_state.dart';
import 'package:rebloc_todo_app/todo_list_item.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TodoListItem(),
          const Text(
            'You have pushed the button this many times:',
          ),
          ViewModelSubscriber<AppState, int>(
            converter: (state) => state.counter,
            builder: (context, dispatcher, viewModel) {
              return Text(
                '$viewModel',
                style: Theme.of(context).textTheme.display1,
              );
            },
          ),
        ],
      ),
      floatingActionButton: DispatchSubscriber<AppState>(
        builder: (context, dispatcher) {
          return FloatingActionButton(
            tooltip: 'Increment',
            child: const Icon(Icons.add),
            onPressed: () => dispatcher(IncrementAction()),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
