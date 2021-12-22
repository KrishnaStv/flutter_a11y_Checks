import 'package:flutter/material.dart';
import 'package:sample1/AlertModelDialogue.dart';

class UnderstandableSCExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Understandable Rules'),
        ),
        body: ContextChangeOnFocus(),
      ),
    );
  }
}


class ContextChangeOnFocus extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContextChangeonFocusState();
  }
}

class ContextChangeonFocusState extends State<ContextChangeOnFocus> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late FocusNode _fNode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fNode = FocusNode();
    _fNode.addListener(() {
      if(_fNode.hasFocus) {
        debugPrint('On Focus');
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Alert Description'),
              actions: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(dialogContext);
                }, child: Text('Okay'))
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            focusNode: _fNode,
            decoration: InputDecoration(
                hintText: 'Enter Email Id'
            ),
            validator: (String? value) {
              if(value == null || value.isEmpty) {
                return 'Please enter email id';
              }
              return null;
            },
            onChanged: (inputValue) {
              debugPrint('value is $inputValue');
              if(inputValue.length > 0) {
                debugPrint('Do changes');

              }
            },
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint('Success');
              }
            }, child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}



class ContextChangeOnInput extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContextChangeState();
  }
}

class ContextChangeState extends State<ContextChangeOnInput> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Enter Email Id'
          ),
          validator: (String? value) {
            if(value == null || value.isEmpty) {
              return 'Please enter email id';
            }
            return null;
          },
          onChanged: (inputValue) {
            debugPrint('value is $inputValue');
            if(inputValue.length > 0) {
              debugPrint('Do changes');

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    title: Text('Alert'),
                    content: Text('Alert Description'),
                    actions: [
                      ElevatedButton(onPressed: () {
                        Navigator.pop(dialogContext);
                      }, child: Text('Okay'))
                    ],
                  );
                },
              );
            }
          },
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(onPressed: () {
            if (_formKey.currentState!.validate()) {
              debugPrint('Success');
            }
          }, child: Text('Submit'),
          ),
        ),
      ],
    ),
    );

  }
}