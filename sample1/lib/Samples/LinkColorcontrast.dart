import 'package:flutter/material.dart';

class LinkColorContrast extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Accessibility Actions'),
        ),
        body: LinkColorContrastExample(),
      ),
    );
  }
}

class LinkColorContrastExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [

        ],
      ),
    );
  }
}