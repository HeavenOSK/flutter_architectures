import 'package:flutter/material.dart';
import 'package:rebloc_example/home.dart';

const _kTitle = 'Rebloc Example';

class App extends StatelessWidget {
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
