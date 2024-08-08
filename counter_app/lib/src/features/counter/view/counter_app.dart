import 'package:counter_app/src/features/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterValue) {
                  return Text(
                    '${state.count}',
                    style: const TextStyle(fontSize: 30),
                  );
                } else if (state is CounterInitial) {
                  return const Text(
                    '0',
                    style: TextStyle(fontSize: 30),
                  );
                }
                return const Text(
                  '0',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton.outlined(
                    onPressed: () => counter.add(IncrementedCounter()),
                    icon: const Icon(Icons.add),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: IconButton.outlined(
                    onPressed: () => counter.add(DecrementedCounter()),
                    icon: const Icon(Icons.remove),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterValue) {
            return Visibility(
              visible: state.count >= 1,
              child: IconButton(
                onPressed: () => counter.add(ResetCounter()),
                icon: const Icon(Icons.refresh),
              ),
            );
          } else {
            // Tidak perlu tombol reset jika state bukan CounterValue
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
