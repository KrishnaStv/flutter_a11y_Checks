import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Actionsheet extends StatelessWidget {

  late FocusNode alertSheetButton;
  late CupertinoButton actionSheetObj;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Action sheet'),
          ),
          body: actionSheetObj = CupertinoButton(
            child: Text('Action Sheet'),
            onPressed: () {
              showCupertinoModalPopup(context: context, builder: (BuildContext context) =>
                  Focus(child:
              CupertinoActionSheet(
                title: Text('Action sheet '),
                message: Text(' Message is'),
                actions: [
                  CupertinoActionSheetAction(onPressed: (){
                    debugPrint('Action One');
                    // Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PopupModelContainer(), fullscreenDialog: true));
                  }, child: Text('Action one')
                  ),
                  CupertinoActionSheetAction(onPressed: () {
                    debugPrint('Action Two');
                    Navigator.pop(context);
                  }, child: Text('Action Two')
                  ),
                ],
              ),
                      onFocusChange: (hasFocus) {
                    debugPrint('Has focus on action sheet');
              },
              )
              );
            },
          ),
        ),
      ),
    );
  }
}

class PopupModelContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.transparent,
          child: Center(
            child: Column(
              children: [Text('Container Text'),
              CupertinoButton(child: Text('Dismiss'), onPressed: () {
                Navigator.pop(context);
              }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}