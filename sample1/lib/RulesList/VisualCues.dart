import 'package:flutter/material.dart';

class VisualCues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Accessibility Actions'),
        ),
        body: VisualCuesExample(),
      ),
    );
  }
}

class VisualCuesExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100,),
          ElevatedButton(onPressed: () {

          }, child: Text('STOP',style: TextStyle(backgroundColor: Colors.red,
              color: Colors.white, fontStyle: FontStyle.italic,
              fontSize: 15),)),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: () {

          }, child: Text('',style: TextStyle(backgroundColor: Colors.red,
              color: Colors.white, fontStyle: FontStyle.italic,
              fontSize: 15),)),
        ],
      ),
    );
  }
}