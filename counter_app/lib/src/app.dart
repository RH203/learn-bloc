import 'package:counter_app/src/features/counter/bloc/counter_bloc.dart';
import 'package:counter_app/src/features/counter/view/counter_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        )
      ],
      child: const MaterialApp(
        title: "Counter APP",
        debugShowCheckedModeBanner: false,
        home: CounterApp(),
      ),
    );
  }
}
