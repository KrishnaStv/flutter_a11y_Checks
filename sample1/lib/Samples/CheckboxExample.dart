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

class SampleCC1 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw SampleCCState();
  }
}

class SampleCCState extends State<SampleCC1> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("H");
  }
}


class CheckBoxStateLess extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Checkbox(value: false, onChanged: (bool? value) {
      debugPrint('Ck');
    });
    // return ElevatedButton(onPressed: () {
    //   debugPrint('Hello');
    // }, child: Text('Click'));
  }
}

class CheckBoxExample extends StatefulWidget {
  // const CheckBoxExample({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxState();
  }
}

class _CheckBoxState extends State<CheckBoxExample> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Checkbox(value: isChecked,
        onChanged: (bool? value) {
              setState(() {
                isChecked = isChecked ? false : true;
              });
        });
  }
}
