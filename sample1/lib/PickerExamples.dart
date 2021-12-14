import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultPickerExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('DefaultPicker Selection'),
          ),
          body: DefPickerSelection(),
        ),
      ),
    );
  }
}

class DefPickerSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DefPickerSelectionState();
  }
}

class DefPickerSelectionState extends State<DefPickerSelection> {

  int defSelectedIndex = 0;
  late DateTime? selecteddatetime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        CupertinoButton(child: Text('Default Picker'), onPressed: () {
          showDefaultPicker(context);
        }),
        Text('Selected index is $defSelectedIndex'),

        CupertinoButton(child: Text('Default Date and Time'), onPressed: () {
          showDefaultDatepicker(context);
        }),
        Text('Selected date and time is $selecteddatetime'),
      ],
    );
  }

  void showDefaultDatepicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
        semanticsDismissible: true,
        builder: (_) =>
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: CupertinoDatePicker (
            backgroundColor: Colors.brown,
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (value) {
              selecteddatetime = value;
            },
            initialDateTime: DateTime.now(),


          ),
        ),
    );
  }

  void showDefaultPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      semanticsDismissible: true,
      builder: (_) =>
     Container(
       width: MediaQuery.of(context).size.width,
       height: 250,
       child: CupertinoPicker(
         backgroundColor: Colors.blueGrey,
         itemExtent: 20,
         scrollController: FixedExtentScrollController(initialItem: 1),
         children: [
           Text('0'), Text('1'), Text('2')
         ],
         onSelectedItemChanged: (value) {
           setState(() {
             defSelectedIndex = value;
           });
         },
       ),
     ),
    );
  }
}