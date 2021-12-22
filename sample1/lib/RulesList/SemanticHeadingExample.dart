import 'package:flutter/material.dart';

class SemanticHeadingSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Accessibility Actions'),
        ),
        body: SemanticHeaderCheck(),
      ),
    );
  }
}

class SemanticHeaderCheck extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 55,),
          Semantics(
            child: Text('Success Header'),
            header: true,
          ),
          SizedBox(height: 55,),
          Semantics(
            child: Text('Failure Header'),
          ),
        ],
      ),
    );
  }

}