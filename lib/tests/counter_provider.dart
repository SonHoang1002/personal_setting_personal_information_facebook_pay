import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int counter = 0;
  increaseCounter(int value) {
    counter += value;
    notifyListeners();
  }

  decreaseCounter(int value) {
    counter -= value;
    notifyListeners();
  }

  int get getCounter => counter;
}
