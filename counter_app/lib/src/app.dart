import 'package:counter_app/src/features/counter/view/counter_app.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Counter APP",
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}
