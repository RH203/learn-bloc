part of 'counter_bloc.dart';

@immutable
sealed class CounterState extends Equatable {}

final class CounterInitial extends CounterState {
  final int count;
  CounterInitial(this.count);

  @override
  List<Object?> get props => [count];
}

final class CounterValue extends CounterState {
  final int count;
  CounterValue(this.count);

  @override
  List<Object?> get props => [count];
}
