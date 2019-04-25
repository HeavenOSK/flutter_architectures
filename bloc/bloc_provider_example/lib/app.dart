import 'package:bloc_provider_example/home.dart';
import 'package:flutter/material.dart';

const _kTitle = 'Example';

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
