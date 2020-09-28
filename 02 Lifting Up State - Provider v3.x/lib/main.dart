import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/MySlider.dart';
import 'package:state_management/SliderIndicator.dart';
import 'SliderValue.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => SliderValue(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Center(
                  child: SliderIndicator(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: MySlider(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
