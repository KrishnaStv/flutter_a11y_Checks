import 'package:flutter/material.dart';

class GestureRecognizerSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            GestureDetector(
              onTap: () {
                debugPrint('onTap');
              },
              onLongPress: () {
                debugPrint('OnLongPress');
              },
            onDoubleTap: () {
                debugPrint('OnDoubleTap');
            },
              onVerticalDragStart: (details) {
                debugPrint('OnVerticalDragSTArt $details');
              },
              onVerticalDragEnd: (details) {
                debugPrint('onVerticalDragEnd $details');
              },
              onHorizontalDragStart: (details) {
                debugPrint('onHorizontalDragStart $details');
              },
              onHorizontalDragEnd: (details) {
                debugPrint('onHorizontalDragEnd $details');
              },
            )
          ],
        ),
      ),
    );
  }
}