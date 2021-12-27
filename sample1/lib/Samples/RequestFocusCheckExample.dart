import 'package:flutter/material.dart';

class RequestFocusCheckMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),);
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  late FocusNode currentFocusNode;
  late FocusNode leftFocusNode;
  late FocusNode rightFocusNode;
  late FocusNode noFocusNode;

  @override
  void initState() {
    super.initState();
    currentFocusNode = FocusNode();
    leftFocusNode = FocusNode();
    rightFocusNode = FocusNode();
    noFocusNode = FocusNode();
  }

  @override
  void dispose() {
    //currentFocusNode.dispose();
    //leftFocusNode.dispose();
    //rightFocusNode.dispose();
    //noFocusNode.dispose();
    super.dispose();
  }

  changeFocus(FocusNode focusNodeNext) {
    currentFocusNode.unfocus();
    focusNodeNext.requestFocus();
    currentFocusNode = focusNodeNext;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Column(
              children: <Widget>[
                Container( width: 50, child: TextField(
                  focusNode: leftFocusNode,
                ),),
                RaisedButton(
                  child: Text('^ Focus ^'),
                  onPressed: () => changeFocus(leftFocusNode),
                ),
              ],
            ),

            Column(
              children: <Widget>[
                Container( width: 50, child: TextField(
                  focusNode: rightFocusNode,
                ),),
                RaisedButton(
                  child: Text('^ Focus ^'),
                  onPressed: () => changeFocus(rightFocusNode),
                ),
              ],
            ),

            RaisedButton(
              child: Text('  Cancel Focus'),
              onPressed: () => changeFocus(noFocusNode),
            ),

          ],
        ),
      ),
    );
  }
}