import 'package:bloc_provider_example/bloc/counter_bloc_provider.dart';
import 'package:flutter/material.dart';

import 'bloc/counter_bloc.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final bloc = CounterBlocProvider.of(context);
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
            StreamBuilder<int>(
              stream: bloc.count,
              initialData: bloc.count.value,
              builder: (context, snapshot) {
                final count = snapshot.data;
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            tooltip: 'Increment',
            child: const Text('＋', style: TextStyle(fontSize: 20)),
            onPressed: () => bloc.counterController.add(CounterIncrement()),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 4),
          ),
          FloatingActionButton(
            tooltip: 'Decrement',
            child: const Text('−', style: TextStyle(fontSize: 20)),
            onPressed: () => bloc.counterController.add(CounterDecrement()),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
