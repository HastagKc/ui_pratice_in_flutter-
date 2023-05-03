import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterProvider extends StateNotifier<int> {
  // initializing with zero
  CounterProvider() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
