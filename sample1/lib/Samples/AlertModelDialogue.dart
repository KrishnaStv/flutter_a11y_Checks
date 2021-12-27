import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ModelFocusTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlertModelDialogue();
  }
}

class AlertModelDialogue extends State<ModelFocusTest> {

  late FocusNode actionButton = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    actionButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Alert Model Dialogue'),
          ),
          body: Center(
            child: FocusScope(
              child: MaterialButton(
                autofocus: true,
                focusNode: actionButton,
                child: Text('Show Login Alert'),
                onPressed: () {
                  SemanticsService.announce("Hello world", TextDirection.ltr);
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Semantics(
                        child: Text('Login Form'),
                        header: true,
                      ),
                      content: Center(
                        child: Column(
                          children: [
                            TextFormField(
                              initialValue: 'Enter name',
                            ),
                            SizedBox(height: 15,),
                            TextFormField(
                              initialValue: 'Enter Email',
                            ),
                            CupertinoButton(child: Text('Submit'), onPressed: () {
                              FocusScope.of(context).requestFocus(actionButton);
                              Navigator.pop(context);
                              // SemanticsService.tooltip('Hello world');
                              // SemanticsService.announce("Hello world", TextDirection.ltr);
                              // FocusScope.of(context).requestFocus(actionButton);
                              // actionButton.requestFocus();
                            }),
                          ],
                        ),
                      ),
                    );
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
