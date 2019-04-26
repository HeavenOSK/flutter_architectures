import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_example/home.dart';
import 'package:redux_example/redux/reducers.dart';
import 'package:redux_example/redux/state.dart';

const _kTitle = 'Redux Example';

class App extends StatelessWidget {
  final Store<AppState> store = Store<AppState>(
    appReducer,
    initialState: AppState.initialize(),
  );

  final appState = AppState.initialize();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      child: MaterialApp(
        title: _kTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(title: _kTitle),
      ),
      store: store,
    );
  }
}
