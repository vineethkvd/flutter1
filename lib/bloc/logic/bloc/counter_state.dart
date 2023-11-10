part of 'counter_bloc.dart';

@immutable
class CounterState {
  int counterValue;

  CounterState({required this.counterValue});
}

final class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}
