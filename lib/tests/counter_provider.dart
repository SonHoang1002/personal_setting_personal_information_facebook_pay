import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int counter = 0;
  increaseCounter(int value) {
    counter += value;
    notifyListeners();
  }

  decreaseCounter(int value) {
    counter -= value;
    // notifyListeners();
  }

  int get getCounter => counter;
}
