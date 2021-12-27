import 'package:flutter/material.dart';

class ReadHiddenContentSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Visibility Widget to hide'),
        ),
        body: ReadHiddenContent(),
      ),
    );
  }
}

class ReadHiddenContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 150,),
          Semantics(
            child:Visibility(
              child: Text('Hide this'),
              visible: false,
            ),
          ),
          SizedBox(height: 50,),
          Semantics(
            child: Visibility(
              child: Text('Not Hide this'),
              visible: true,
            ),
          ),
        ],
      ),
    );
  }

}