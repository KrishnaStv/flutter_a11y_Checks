import 'package:flutter/material.dart';

class StaticInfoTextNotReadable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static or Info Text NotReadable'),
        ),
        body: InfoTextReadingOrder(),
      ),
    );
  }
}

class InfoTextReadingOrder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 150,),
          Semantics(
            child: Text('Readable by VO'),
          ),
          SizedBox(height: 50,),
          Semantics(
            child: Text('Not Readable by VO'),
            excludeSemantics: true,
          ),
          SizedBox(height: 50,),
          Semantics(
            child: Text(' End of Screen'),
          )
        ],
      ),
    );
  }
}