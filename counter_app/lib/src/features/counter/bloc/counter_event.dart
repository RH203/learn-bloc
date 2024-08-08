part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent extends Equatable {}

final class IncrementedCounter extends CounterEvent {
  @override
  List<Object?> get props => [];
}

final class DecrementedCounter extends CounterEvent {
  @override
  List<Object?> get props => [];
}

final class ResetCounter extends CounterEvent {
  @override
  List<Object?> get props => [];
}
