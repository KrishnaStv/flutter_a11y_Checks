import 'package:flutter/material.dart';

class CheckBoxSampleExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: CheckBoxExample(),
      ),
    );
  }
}

class CheckBoxExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw CheckBoxState();
  }
}

class CheckBoxState extends State<CheckBoxExample> {

  bool isChecked = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interacionStates = <MaterialState> {
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };

      if (states.any(interacionStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(value: isChecked,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        onChanged: (bool? value) {
      setState(() {
        isChecked = value!;
      });

    });
  }
}