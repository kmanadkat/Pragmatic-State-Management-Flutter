import 'package:flutter/material.dart';
import 'package:state_management/SliderIndicator.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.0;

  void _onValueChange(double val) {
    setState(() {
      _value = val;
    });
    // Change State of Neighbour Widget = SliderIndicator
    indicatorState.setState(() {
      indicatorState.sliderValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 0,
      max: 100,
      divisions: 10,
      label: _value.toInt().toString(),
      onChanged: _onValueChange,
      value: _value,
    );
  }
}
