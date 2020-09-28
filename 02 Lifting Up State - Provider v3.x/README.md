# State Management Provider Example

- This approach is much appreciated in flutter community for updating Widgets states. It is easy to understand and implement

<p align="center"><br><img src="../statemanagement.gif" height="440" width="auto"><br><br></p>

### The Provider Explanation!

- In this, we have made a global model class which acts as "ChangeNotifier" : It Notifies Stateful widget class who are listening to it's changes via "ChangeNotifierProvider" which is Parent Widget of both our Widgets in Widget Tree. Both the Stateful Widget are accessing model via "Provider" provided by Parent Widget. Getters and Setters are used for getting/updating values of properties in model.

### The Provider Solution : 

- Note that we haven't called any "setState(() {})" explicitly in this approach. ChangeNotifier and notifyListeners takes care of all stuff. Also we need not worry about memory overflow, ChangeNotifierProvider takes care disposing stuff behind the curtains for us.

**SliderValue.dart - Model**
```dart
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
```

**main.dart**
```dart
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => SliderValue(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
          centerTitle: true,
          //...
          //....
```

**SliderIndicator.dart**
```dart
  Widget build(BuildContext context) {
    final schedule = Provider.of<SliderValue>(context);
    return Text(
      "Slider Value : ${schedule.getSliderValue()}",
      style: TextStyle(fontSize: 42),
    );
  }
```

**MySlider.dart**
```dart
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
```

- Feel Free to clone this repo and test code. I have kept it fairly simple to understand for beginners.

## Google I/O 19 - Pragramatic State Management

Inspired from : [youtube link](https://youtu.be/d_m5csmrf7I)

