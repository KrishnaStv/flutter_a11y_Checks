import 'package:flutter/material.dart';

class SimpleDialogueFlowExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final dialogue = SimpleDialog(
      title: Text('SimpleDialogue'),
      children: [
        SimpleDialogOption(
          onPressed: () {
            debugPrint('Close Clicked');
            Navigator.pop(context,'Close');
          },
          child: Text('Close'),
        ),
        SimpleDialogOption(
          onPressed: () {
            debugPrint('Open Clicked');
            Navigator.pop(context,'Open');
          },
          child: Text('Open'),
        ),
      ],
    );

    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Simple Dialogue Example'),
          ),
          body:ElevatedButton(
            onPressed: () {
              debugPrint('Action');
              showDialog(context: context, builder: (_) => dialogue);
            },
            child: Text('Open Dialogue'),
          ),
        ),
      ),
    );
  }
}