import 'package:flutter/material.dart';

// Saving State of Widget in Global Instance
_SliderIndicatorState indicatorState;

class SliderIndicator extends StatefulWidget {
  @override
  _SliderIndicatorState createState() {
    indicatorState = _SliderIndicatorState();
    return indicatorState;
  }
}

class _SliderIndicatorState extends State<SliderIndicator> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Slider Value : $sliderValue",
      style: TextStyle(fontSize: 42),
    );
  }
}
