import 'package:flutter/material.dart';

class FocusCheckExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FocusCheckState();
  }
}

class _FocusCheckState extends State<FocusCheckExample> {

  late FocusNode fcNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fcNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Focus Check'),
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  autofocus: true,
                ),
                TextField(
                  focusNode: fcNode,
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              fcNode.requestFocus();
            },
            tooltip: 'Focus Second text',
            child: Icon(Icons.edit),
          ),
        ),
      ),
    );
  }
}
