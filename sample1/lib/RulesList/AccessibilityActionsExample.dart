import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CustomAccessibilityActionsSample  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Accessibility Actions'),
        ),
        body: CustomSemanticsActionExample(),
      ),
    );
  }
}

class CustomSemanticsActionExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(height: 55,),
          Semantics(
            child: Text('Click to submit'),
            button: true,
            customSemanticsActions: {
              CustomSemanticsAction(label: "Do Action"): () {
                debugPrint("custom action performed");
              },
            },
          ),
          SizedBox(height: 55,),
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx > 0) {
                debugPrint('Swipe right');
              }

              if (details.delta.dx < 0) {
                debugPrint('Swipe left');
              }
            },

            onVerticalDragUpdate: (details) {
              int sensitivity = 8;
              if (details.delta.dy > sensitivity) {
                debugPrint('Swipe down');
              } else if(details.delta.dy < -sensitivity){
                debugPrint('Swipe up');
              }
            },
            child: Semantics(
              child: Container(
                height: 200,
                width: 200,
                child: Text('Swipe interactions'),
                color: Colors.yellow,
              ),
              customSemanticsActions: {
                CustomSemanticsAction(label: "Swipe up") : () {
                  debugPrint('Swipe up');
                },
                CustomSemanticsAction(label: "Swipe down") : () {
                  debugPrint('Swipe down');
                },
                CustomSemanticsAction(label: "Swipe right") : () {
                  debugPrint('Swipe right');
                },
                CustomSemanticsAction(label: "Swipe left") : () {
                  debugPrint('Swipe left');
                },
              },
            ) ,
          ),
        ],
      ),
    );
  }
}