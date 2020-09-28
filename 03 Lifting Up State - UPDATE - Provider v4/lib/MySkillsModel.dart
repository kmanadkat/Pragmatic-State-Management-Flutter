import 'package:flutter/material.dart';

class MySkills with ChangeNotifier {
  double _chartValue = 0.5;
  // Property Getter
  double get chartValue => _chartValue;
  // Property Setter
  set chartValue(double val) {
    _chartValue = val;
    notifyListeners();
  }
}
