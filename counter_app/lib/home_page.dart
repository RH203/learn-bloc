import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
        bloc: counterCubit,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter"),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      const Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '$state',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: counterCubit.increment,
                        child: const Text("Add"),
                      ),
                      const SizedBox(
                        width: 29,
                      ),
                      ElevatedButton(
                        onPressed: counterCubit.decrement,
                        child: const Text("Decrement"),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
