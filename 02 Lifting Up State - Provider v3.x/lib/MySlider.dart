import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/SliderValue.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<SliderValue>(context);
    return Slider(
      min: 0,
      max: 100,
      divisions: 10,
      onChanged: (val) => schedule.setSliderValue(val),
      value: schedule.getSliderValue(),
      label: schedule.getSliderValue().toInt().toString(),
    );
  }
}
