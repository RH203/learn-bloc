import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Row(
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
    );
  }
}
