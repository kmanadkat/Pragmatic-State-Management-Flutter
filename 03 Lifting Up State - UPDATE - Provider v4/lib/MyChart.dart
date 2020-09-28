import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:skills_app/MySkillsModel.dart';
import 'package:provider/provider.dart';

class MyChart extends StatelessWidget {
  final List<Color> colorList = [Color(0xff679186), Color(0xff264e70), Color(0xfffdebd3), Color(0xfff9b4ab)];

  @override
  Widget build(BuildContext context) {
    final myskill = Provider.of<MySkills>(context);
    final dataMap = MyChart.createData(myskill.chartValue);
    return PieChart(
      dataMap: dataMap,
      chartRadius: MediaQuery.of(context).size.width * 0.65,
      colorList: colorList,
      showLegends: true,
      legendPosition: LegendPosition.bottom,
      chartType: ChartType.disc,
    );
  }

  static Map<String, double> createData(double val) {
    return {
      "Flutter": (val * 1),
      "Web Dev": 0.3,
      "API Dev": 0.3,
      "Others": 0.2,
    };
  }
}
