import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  int _number = 0;
  int get number => _number;

  incNumber() {
    _number++;
    notifyListeners();
  }

  decNumber() {
    _number--;
    notifyListeners();
  }
}
