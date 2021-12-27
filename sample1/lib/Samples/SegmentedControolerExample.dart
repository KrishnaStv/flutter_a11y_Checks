import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegementedControllerExample extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Segmented Controller'),
          ),
          body: SCExample(),
        ),
      ),
    );
  }
}

class SCExample extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SCExampleState();
  }
}


class SCExampleState extends State<SCExample> {

  int scValue = 0;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoSlidingSegmentedControl(
      groupValue: scValue,
        backgroundColor: Colors.brown,
        children: const <int, Widget> {
          0:Text('Zero', semanticsLabel: 'Zero out of 4',),
          1:Text('One',semanticsLabel: 'One out of 4',),
          2:Text('Two',semanticsLabel: 'Two out of 4',),
          3:Text('Three',semanticsLabel: 'Three out of 4',)
        },
        onValueChanged: (value) {
        setState(() {
          scValue = int.parse(value.toString());
        });
    });
  }
  
}