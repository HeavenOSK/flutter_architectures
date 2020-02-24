import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'l10n/l10n.dart';
import 'router.dart';
import 'util/util.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: context.read<AppNavigator>().key,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      onGenerateRoute: context.read<Router>().onGenerateRoute,
    );
  }
}
