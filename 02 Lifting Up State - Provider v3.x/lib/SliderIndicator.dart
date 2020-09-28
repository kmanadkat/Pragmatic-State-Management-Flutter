import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SliderValue.dart';

class SliderIndicator extends StatefulWidget {
  @override
  _SliderIndicatorState createState() => _SliderIndicatorState();
}

class _SliderIndicatorState extends State<SliderIndicator> {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<SliderValue>(context);
    return Text(
      "Slider Value : ${schedule.getSliderValue()}",
      style: TextStyle(fontSize: 42),
    );
  }

  /*
  /// Using Consumer Widgte, Kinda complex
  /// as compared to Provider
  @override
  Widget build(BuildContext context) {
    return Consumer<SliderValue>(
      builder: (context, schedule, _) {
        return Text(
          "Slider Value : ${schedule.getSliderValue()}",
          style: TextStyle(fontSize: 42),
        );
      },
    );
  }
  */
}
