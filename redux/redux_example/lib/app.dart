import 'package:flutter/material.dart';
import 'package:redux_example/home.dart';

const _kTitle = 'Redux Example';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _kTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: _kTitle),
    );
  }
}
