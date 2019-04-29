import 'package:flutter/material.dart';
import 'package:rebloc/rebloc.dart';
import 'package:rebloc_example/home.dart';
import 'package:rebloc_example/rebloc/app_state.dart';
import 'package:rebloc_example/rebloc/bloc/counter_bloc.dart';

const _kTitle = 'Rebloc Example';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: Store<AppState>(
        initialState: AppState.initialState(),
        blocs: [
          CounterBloc(),
        ],
      ),
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
