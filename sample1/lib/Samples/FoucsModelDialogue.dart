import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FocusModelDialogue extends StatelessWidget {
  const FocusModelDialogue({
    Key? key,
    required this.actionButton,
  }) : super(key: key);

  final FocusNode actionButton;

  @override
  Widget build(BuildContext context) {
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
  }
}