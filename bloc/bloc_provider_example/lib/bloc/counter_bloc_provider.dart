import 'package:bloc_provider/bloc_provider.dart';
import 'package:bloc_provider_example/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterBlocProvider extends BlocProvider<CounterBloc> {
  CounterBlocProvider({
    @required Widget child,
  }) : super(
          child: child,
          creator: (context, _bag) => CounterBloc(),
        );

  static CounterBloc of(BuildContext context) => BlocProvider.of(context);
}
