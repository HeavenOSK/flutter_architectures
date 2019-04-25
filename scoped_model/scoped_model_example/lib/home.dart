import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/models/counter.dart';

class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return Text(
                  '${model.counter}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ScopedModelDescendant<CounterModel>(
        builder: (context, child, model) {
          return FloatingActionButton(
            tooltip: 'Increment',
            child: const Icon(Icons.add),
            onPressed: model.increment,
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
