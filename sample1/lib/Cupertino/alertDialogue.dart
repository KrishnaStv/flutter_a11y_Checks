import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Alert Dialogue'),
          ),
          body: CupertinoPageScaffold(
            child:Center(
              child: CupertinoButton(
                onPressed: () {
                  showCupertinoDialog(context: context, builder: (BuildContext context) => CupertinoAlertDialog(
                    title: Text('Alert'),
                    content: Text('Proceed with action'),
                    actions: [
                      CupertinoDialogAction(
                        child: Text('No'),
                        onPressed: () {
                          Navigator.pop(context);
                        },

                      ),
                      CupertinoDialogAction(
                        child: Text('Yes'),
                        onPressed: (){
                          debugPrint('Yes Clicked');
                          Navigator.pop(context);
                        },),
                    ],
                  ),);
                },
                child: Text('Alert dailogue'),
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}