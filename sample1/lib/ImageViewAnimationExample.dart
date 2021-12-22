import 'package:flutter/material.dart';

class ImagesAnimationExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Understandable Rules'),
        ),
        body: ImageAnimations(),
      ),
    );
  }
}

class ImageAnimations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Hi');
  }
}