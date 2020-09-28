import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skills_app/MyChart.dart';
import 'package:skills_app/MySkillsModel.dart';
import 'package:skills_app/MySlider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MySkills(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffdfe5e9),
          centerTitle: true,
          title: Text("Skills - Provider", style: TextStyle(color: Color(0xff264e70))),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MyChart(),
            MySlider(),
          ],
        ),
      ),
    );
  }
}
