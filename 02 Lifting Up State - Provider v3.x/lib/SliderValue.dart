import 'package:flutter/foundation.dart';

class SliderValue with ChangeNotifier {
  double _sliderValue = 10.0;

  double getSliderValue() {
    return _sliderValue;
  }

  void setSliderValue(double newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }
}
