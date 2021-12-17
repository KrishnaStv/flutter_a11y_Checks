import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('ListView Example'),
          ),
          body: ListView(
            addSemanticIndexes: false,
            semanticChildCount: 2,
            children: const <Widget>[
              IndexedSemantics(index: 1, child: Text('First')),
              Spacer(),
              IndexedSemantics(index: 0, child: Text('Second')),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}