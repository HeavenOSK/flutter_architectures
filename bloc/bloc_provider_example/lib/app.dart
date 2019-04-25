import 'package:bloc_provider_example/bloc/counter_bloc_provider.dart';
import 'package:bloc_provider_example/home.dart';
import 'package:flutter/material.dart';

const _kTitle = 'Example';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterBlocProvider(
      child: MaterialApp(
        title: _kTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(title: _kTitle),
      ),
    );
  }
}
