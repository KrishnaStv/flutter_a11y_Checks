import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ModelDialogue extends StatelessWidget {
  const ModelDialogue({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${title}'),
      actions: [
        CupertinoButton(child: Text('Dismiss'), onPressed: (){
          Navigator.of(context).pop();
        })
      ],
    );
  }
}