import 'package:flutter/material.dart';

class SliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Slider Example'),
          ),
          body: SliderSample(),
        ),
      ),
    );
  }
}

class SliderSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliderExampleState();
  }
}

class SliderExampleState extends State<SliderSample> {

  double currentValue = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Slider(
            value: currentValue,
            max: 100,
            divisions: 5,
            label: 'Slider Value' ,
            onChanged: (double value) {
              setState(() {
                currentValue = value;
              });
            }),
        SizedBox(height: 25,),
        Text('Value is $currentValue'),
      ],
    );
  }
}