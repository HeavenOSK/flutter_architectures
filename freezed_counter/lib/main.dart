import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'router.dart';
import 'util/app_navigator.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => AppNavigator()),
        Provider(create: (_) => Router()),
      ],
      child: App(),
    ),
  );
}
