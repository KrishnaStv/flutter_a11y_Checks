import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class ColorContrastSample extends StatelessWidget {

  final String ruleDescription =
      'Regular text and images of regular text MUST have a contrast ratio of at least 4.5 to 1 with the background.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'ColorContrast', enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText('Description'),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 25,),
            Text('Check Text color with background',style: TextStyle(
                backgroundColor: Colors.red,
                color: Colors.yellow
            ),
            ),
            SizedBox(height: 25,),
            Text('Check good Text color with background',style: TextStyle(
                backgroundColor: Colors.white,
                color: Colors.black
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class Colorconstart extends StatelessWidget {

  final String ruleDescription =
      'Regular text and images of regular text MUST have a contrast ratio of at least 4.5 to 1 with the background.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar:  new AppBarExtension(
              navdata: TopBarData(title: 'ColorContrast', enableBack: true)),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 25,),
                Text('Check Text color with background',style: TextStyle(
                  backgroundColor: Colors.red,
                  color: Colors.yellow
                ),
                ),
                SizedBox(height: 25,),
                Text('Check good Text color with background',style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black
                ),
                ),
                // SizedBox(height: 55,),
                // Semantics(
                //   child: Text('Click to submit'),
                //   button: true,
                //   customSemanticsActions: {
                //     CustomSemanticsAction(label: "Do Action"): () {
                //       debugPrint("custom action performed");
                //     },
                //   },
                // ),
                // SizedBox(height: 55,),
                // GestureDetector(
                //   onHorizontalDragUpdate: (details) {
                //     if (details.delta.dx > 0) {
                //       debugPrint('Swipe right');
                //     }
                //
                //     if (details.delta.dx < 0) {
                //       debugPrint('Swipe left');
                //     }
                //   },
                //
                //   onVerticalDragUpdate: (details) {
                //     int sensitivity = 8;
                //     if (details.delta.dy > sensitivity) {
                //       debugPrint('Swipe down');
                //     } else if(details.delta.dy < -sensitivity){
                //       debugPrint('Swipe up');
                //     }
                //   },
                //   child: Semantics(
                //     child: Container(
                //       height: 200,
                //       width: 200,
                //       child: Text('Swipe interactions'),
                //       color: Colors.yellow,
                //     ),
                //     customSemanticsActions: {
                //       CustomSemanticsAction(label: "Swipe up") : () {
                //         debugPrint('Swipe up');
                //       },
                //       CustomSemanticsAction(label: "Swipe down") : () {
                //         debugPrint('Swipe down');
                //       },
                //       CustomSemanticsAction(label: "Swipe right") : () {
                //         debugPrint('Swipe right');
                //       },
                //       CustomSemanticsAction(label: "Swipe left") : () {
                //         debugPrint('Swipe left');
                //       },
                //     },
                //   ) ,
                // ),
                // SizedBox.expand(
                //   child: GestureDetector(
                //     onPanUpdate: (details) {
                //       // Swiping in right direction.
                //       if (details.delta.dx > 0) {
                //         debugPrint('Swipe right');
                //       }
                //
                //       // Swiping in left direction.
                //       if (details.delta.dx < 0) {
                //         debugPrint('Swipe left');
                //       }
                //     },
                //     child: Container(
                //       width: 100,
                //       height: 100,
                //       color: Colors.yellow,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
