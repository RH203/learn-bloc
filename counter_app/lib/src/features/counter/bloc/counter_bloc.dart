import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0)) {
    on<IncrementedCounter>(_increment);
    on<DecrementedCounter>(_decrement);
    on<ResetCounter>(_reset);
  }

  void _increment(IncrementedCounter event, Emitter<CounterState> emit) {
    final currentState = state;
    if (currentState is CounterValue) {
      emit(CounterValue(currentState.count + 1));
    } else if (currentState is CounterInitial) {
      emit(CounterValue(currentState.count + 1));
    }
  }

  void _decrement(DecrementedCounter event, Emitter<CounterState> emit) {
    final currentState = state;
    if (currentState is CounterValue && currentState.count > 0) {
      emit(CounterValue(currentState.count - 1));
    } else if (currentState is CounterInitial && currentState.count > 0) {
      emit(CounterValue(currentState.count - 1));
    }
  }

  void _reset(ResetCounter event, Emitter<CounterState> emit) {
    emit(CounterInitial(0));
  }
}
