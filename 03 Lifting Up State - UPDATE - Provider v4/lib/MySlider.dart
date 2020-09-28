import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skills_app/MySkillsModel.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myskill = Provider.of<MySkills>(context);
    return Slider(
      min: 0,
      max: 1,
      value: myskill.chartValue,
      onChanged: (val) {
        myskill.chartValue = val;
      },
    );
  }
}
