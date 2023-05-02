import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider = ChangeNotifierProvider((ref) => CountProvider());

class CountProvider extends ChangeNotifier {
  int number = 0;

  void increment() {
    number++;
    notifyListeners();
  }

  void decrement() {
    number--;
    notifyListeners();
  }
}
